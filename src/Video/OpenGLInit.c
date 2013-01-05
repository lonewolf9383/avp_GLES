
#ifdef GLES1
	#include <EGL/egl.h>
	#include <GLES/gl.h>
	#include <SDL/SDL_syswm.h>
	//#include "eglport.h"
	
/* Pandora VSync */
#include <fcntl.h>
#include <sys/ioctl.h>
#include <linux/fb.h>

#ifndef FBIO_WAITFORVSYNC
	#define FBIO_WAITFORVSYNC _IOW('F', 0x20, __u32)
#endif
int fbdev = -1;
/* Pandora VSync End */
	
#else
	#include <GL/gl.h>
	#include <SDL/SDL.h>
#endif

#include "OpenGLInit.h"

#ifdef GLES1
	EGLDisplay g_eglDisplay = 0;
	EGLConfig g_eglConfig = 0;
	EGLContext g_eglContext = 0;
	EGLSurface g_eglSurface = 0;
	Display *g_x11Display = NULL;
#endif

// consts
#define COLOURDEPTH_RED_SIZE  		5
#define COLOURDEPTH_GREEN_SIZE 		6
#define COLOURDEPTH_BLUE_SIZE 		5
#define COLOURDEPTH_DEPTH_SIZE		16

#ifdef GLES1
static const EGLint g_configAttribs[] =	{	EGL_RED_SIZE,     5,
											EGL_GREEN_SIZE,   6,
											EGL_BLUE_SIZE,    5,
											EGL_DEPTH_SIZE,       16,
											EGL_SURFACE_TYPE,         EGL_WINDOW_BIT,
											EGL_RENDERABLE_TYPE,      EGL_OPENGL_ES_BIT,
											EGL_NONE
										};
#endif

void CalculateViewMatrix()
{
	
}

/*===========================================================
Initialise opengl settings. Call straight after SDL_SetVideoMode()
===========================================================*/

int InitOpenGL()
{
#ifdef GLES1
	if (g_x11Display != NULL)
		return 1;	// System already initialised!

	// use EGL to initialise GLES
	g_x11Display = XOpenDisplay(NULL);

	if (!g_x11Display)
	{
		fprintf(stderr, "ERROR: unable to get display!n");
		return 0;
	}

	g_eglDisplay = eglGetDisplay((EGLNativeDisplayType)g_x11Display);
	if (g_eglDisplay == EGL_NO_DISPLAY)
	{
		printf("Unable to initialise EGL display.");
		return 0;
	}
	
	// Initialise egl
	if (!eglInitialize(g_eglDisplay, NULL, NULL))
	{
		printf("Unable to initialise EGL display.");
		return 0;
	}
	
	// Find a matching config
	EGLint numConfigsOut = 0;
	if (eglChooseConfig(g_eglDisplay, g_configAttribs, &g_eglConfig, 1, &numConfigsOut) != EGL_TRUE || numConfigsOut == 0)
	{
		fprintf(stderr, "Unable to find appropriate EGL config.");
		return 0;
	}
	
	// Get the SDL window handle
	SDL_SysWMinfo sysInfo; //Will hold our Window information
	SDL_VERSION(&sysInfo.version); //Set SDL version
	if(SDL_GetWMInfo(&sysInfo) <= 0) 
	{
		printf("Unable to get window handle");
		return 0;
	}

	g_eglSurface = eglCreateWindowSurface(g_eglDisplay, g_eglConfig, (EGLNativeWindowType)sysInfo.info.x11.window, 0);
	if ( g_eglSurface == EGL_NO_SURFACE)
	{
		printf("Unable to create EGL surface!");
		return 0;
	}
	
	// Bind GLES and create the context
	eglBindAPI(EGL_OPENGL_ES_API);
	EGLint contextParams[] = {EGL_CONTEXT_CLIENT_VERSION, 1, EGL_NONE};		// Use GLES version 1.x
	g_eglContext = eglCreateContext(g_eglDisplay, g_eglConfig, NULL, NULL);
	if (g_eglContext == EGL_NO_CONTEXT)
	{
		printf("Unable to create GLES context!");
		return 0;
	}
	
	if (eglMakeCurrent(g_eglDisplay,  g_eglSurface,  g_eglSurface, g_eglContext) == EGL_FALSE)
	{
		printf("Unable to make GLES context current");
		return 0;
	}
	
	 /* Pandora VSync */
    fbdev = open ("/dev/fb0", O_RDONLY /* O_RDWR */ );
    if ( fbdev < 0 ) {
      fprintf ( stderr, "Couldn't open /dev/fb0 for vsync\n" );
    }
    /* Pandora VSync End */
	//EGL_Open();
	//EGL_Init();
#else
	
	SDL_GL_SetAttribute(SDL_GL_RED_SIZE, COLOURDEPTH_RED_SIZE);
	SDL_GL_SetAttribute(SDL_GL_GREEN_SIZE, COLOURDEPTH_GREEN_SIZE);
	SDL_GL_SetAttribute(SDL_GL_BLUE_SIZE, COLOURDEPTH_BLUE_SIZE);
	SDL_GL_SetAttribute(SDL_GL_DEPTH_SIZE, COLOURDEPTH_DEPTH_SIZE);
	
#endif

	return 1;
}

/*======================================================
 * Kill off any opengl specific details
  ====================================================*/
void TerminateOpenGL()
{
	
#ifdef GLES1
	if (g_x11Display != NULL)
	{
		eglMakeCurrent(g_eglDisplay, NULL, NULL, EGL_NO_CONTEXT);
		eglDestroySurface(g_eglDisplay, g_eglSurface);
		eglDestroyContext(g_eglDisplay, g_eglContext);
		g_eglSurface = 0;
		g_eglContext = 0;
		g_eglConfig = 0;
		eglTerminate(g_eglDisplay);
		g_eglDisplay = 0;
		XCloseDisplay(g_x11Display);
		g_x11Display = NULL;
	}
//	EGL_Destroy();
/* Pandora VSync */
    close(fbdev);
    fbdev = -1;
    /* Pandora VSync End */
#endif
}

int SwapBuffers()
{
#ifdef GLES1
	//EGL_SwapBuffers();
	 /* Pandora VSync */
    if ( fbdev >= 0 ) {
        int arg = 0;
        ioctl( fbdev, FBIO_WAITFORVSYNC, &arg );
    }
    /* Pandora VSync End */
	eglSwapBuffers(g_eglDisplay, g_eglSurface);
#else
	SDL_GL_SwapBuffers();
#endif
}