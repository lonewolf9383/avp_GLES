#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <SDL/SDL.h>
#include <dlfcn.h>

#include "oglfunc.h"

void *g_glDLLHandle = NULL;

int load_ogl_functions(int mode);

#ifdef GLES1

PFNGLENABLEFUNCPROC pglEnable;
PFNGLDISABLEFUNCPROC pglDisable;
PFNGLBLENDFUNCPROC pglBlendFunc;
PFNGLALPHAFUNCPROC pglAlphaFunc;
PFNGLTEXPARAMETERIFUNCPROC pglTexParameteri;
PFNGLBINDTEXTURE pglBindTexture;
PFNGLENABLECLIENTSTATE pglEnableClientState;
PFNGLDISABLECLIENTSTATE pglDisableClientState;
PFNGLVERTEXPOINTER pglVertexPointer;
PFNGLTEXCOORDPOINTER pglTexCoordPointer;
PFNGLCOLORPOINTER pglColorPointer;
PFNGLDRAWELEMENTS pglDrawElements;
PFNGLGENTEXTURES pglGenTextures;
PFNGLTEXIMAGE2D pglTexImage2D;
PFNGLTEXENVI pglTexEnvi;
PFNGLDELETETEXTURES pglDeleteTextures;
PFNGLCLEAR pglClear;
PFNGLCLEARCOLOR pglClearColor;
PFNGLDEPTHMASK pglDepthMask;
PFNGLDEPTHFUNC pglDepthFunc;
PFNGLPOLYGONOFFSET pglPolygonOffset;
PFNGLVIEWPORT pglViewport;
PFNGLMATRIXMODE pglMatrixMode;
PFNGLPOPMATRIX pglPopMatrix;
PFNGLPUSHMATRIX pglPushMatrix;
PFNGLDEPTHRANGE pglDepthRange;
PFNGLHINT pglHint;
PFNGLGETERROR pglGetError;
PFNGLGETSTRING pglGetString;
PFNGLTEXSUBIMAGE2D pglTexSubImage2D;
PFNGLLOADIDENTITY pglLoadIdentity;
PFNGLLOADMATRIXF pglLoadMatrixf;
PFNGLPIXELSTOREI pglPixelStorei;
PFNGLPOINTSIZE pglPointSize;

#else

// Standard opengl
PFNGLENABLEFUNCPROC pglEnable = NULL;
PFNGLDISABLEFUNCPROC pglDisable = NULL;	
PFNGLBLENDFUNCPROC pglBlendFunc = NULL;
PFNGLALPHAFUNCPROC pglAlphaFunc = NULL;
PFNGLTEXPARAMETERIFUNCPROC pglTexParameteri = NULL;
PFNGLBINDTEXTURE pglBindTexture = NULL;
PFNGLENABLECLIENTSTATE pglEnableClientState = NULL;
PFNGLDISABLECLIENTSTATE pglDisableClientState = NULL;
PFNGLVERTEXPOINTER pglVertexPointer = NULL;
PFNGLTEXCOORDPOINTER pglTexCoordPointer = NULL;
PFNGLCOLORPOINTER pglColorPointer = NULL;
PFNGLDRAWELEMENTS pglDrawElements = NULL;
PFNGLGENTEXTURES pglGenTextures = NULL;
PFNGLTEXIMAGE2D pglTexImage2D = NULL;
PFNGLTEXENVI pglTexEnvi = NULL;
PFNGLDELETETEXTURES pglDeleteTextures = NULL;
PFNGLCLEAR pglClear = NULL;
PFNGLCLEARCOLOR pglClearColor = NULL;
PFNGLDEPTHMASK pglDepthMask = NULL;
PFNGLDEPTHFUNC pglDepthFunc = NULL;
PFNGLPOLYGONOFFSET pglPolygonOffset = NULL;
PFNGLVIEWPORT pglViewport = NULL;
PFNGLMATRIXMODE pglMatrixMode = NULL;
PFNGLPOPMATRIX pglPopMatrix = NULL;
PFNGLPUSHMATRIX pglPushMatrix = NULL;
PFNGLDEPTHRANGE pglDepthRange = NULL;
PFNGLHINT pglHint = NULL;
PFNGLGETERROR pglGetError = NULL;
PFNGLGETSTRING pglGetString = NULL;
PFNGLTEXSUBIMAGE2D pglTexSubImage2D = NULL;
PFNGLLOADIDENTITY pglLoadIdentity;
PFNGLLOADMATRIXF pglLoadMatrixf;
PFNGLPIXELSTOREI pglPixelStorei;
PFNGLPOINTSIZE pglPointSize;

// Unavailable in GLES1!
PFNGLTEXCOORD2F pglTexCoord2f = NULL;
PFNGLVERTEX3F pglVertex3f = NULL;
PFNGLBEGIN pglBegin = NULL;
PFNGLEND pglEnd = NULL;
PFNGLCOLOR3UB pglColor3ub = NULL;
PFNGLCOLOR4F pglColor4f = NULL;
PFNGLCOLOR4UB pglColor4ub = NULL;
PFNGLARRAYELEMENT pglArrayElement;

#endif

static void dummyfunc()
{
}

int LoadGLLibrary(const char *pFilePath)
{
	if (g_glDLLHandle != NULL)
	{
		dlclose(g_glDLLHandle);
		g_glDLLHandle = NULL;
	}
	
	g_glDLLHandle = dlopen(pFilePath, RTLD_LAZY);
	if (!g_glDLLHandle)
	{
		printf("Unable to open file '%s'", pFilePath);
		return 0;
	}
	load_ogl_functions(1);
	return 1;
}

int ShutdownGLLibrary()
{
	if (g_glDLLHandle != NULL)
	{
		dlclose(g_glDLLHandle);
		g_glDLLHandle = NULL;
	}
	
	return load_ogl_functions(0);
}

#define LoadOGLProc(type, func)						\
{									\
	if (!mode) p##func = (type) dummyfunc; else			\
	p##func = (type) dlsym(g_glDLLHandle, #func );			\
	assert(p##func != NULL);	\
	if (p##func == NULL) {						\
		if (!ogl_missing_func) ogl_missing_func = #func;	\
	}								\
}
/*
static int check_token(const char *string, const char *token)
{
	const char *s = string;
	int len = strlen(token);
	
	while ((s = strstr(s, token)) != NULL) {
		const char *next = s + len;
		
		if ((s == string || *(s-1) == ' ') &&
			(*next == 0 || *next == ' ')) {
			
			return 1;
		}
		
		s = next;
	}
	
	return 0;
}
*/
int load_ogl_functions(int mode)
{
	const char* ogl_missing_func;
	const char* ext;

	ogl_missing_func = NULL;
	
#ifdef GLES1

	LoadOGLProc(PFNGLENABLEFUNCPROC, glEnable);
	LoadOGLProc(PFNGLDISABLEFUNCPROC, glDisable);
	LoadOGLProc(PFNGLBLENDFUNCPROC, glBlendFunc);
	LoadOGLProc(PFNGLALPHAFUNCPROC, glAlphaFunc);
	LoadOGLProc(PFNGLTEXPARAMETERIFUNCPROC, glTexParameteri);
	LoadOGLProc(PFNGLBINDTEXTURE, glBindTexture);
	LoadOGLProc(PFNGLENABLECLIENTSTATE, glEnableClientState);
	LoadOGLProc(PFNGLDISABLECLIENTSTATE, glDisableClientState);
	LoadOGLProc(PFNGLVERTEXPOINTER, glVertexPointer);
	LoadOGLProc(PFNGLTEXCOORDPOINTER, glTexCoordPointer);
	LoadOGLProc(PFNGLCOLORPOINTER, glColorPointer);
	LoadOGLProc(PFNGLDRAWELEMENTS, glDrawElements);
	LoadOGLProc(PFNGLGENTEXTURES, glGenTextures);
	LoadOGLProc(PFNGLTEXIMAGE2D, glTexImage2D);
	LoadOGLProc(PFNGLTEXENVI, glTexEnvi);
	LoadOGLProc(PFNGLDELETETEXTURES, glDeleteTextures);
	LoadOGLProc(PFNGLCLEAR, glClear);
	LoadOGLProc(PFNGLCLEARCOLOR, glClearColor);
	LoadOGLProc(PFNGLDEPTHMASK, glDepthMask);
	LoadOGLProc(PFNGLPOLYGONOFFSET, glPolygonOffset);
	LoadOGLProc(PFNGLDEPTHFUNC, glDepthFunc);
	LoadOGLProc(PFNGLVIEWPORT, glViewport);
	LoadOGLProc(PFNGLMATRIXMODE, glMatrixMode);
	LoadOGLProc(PFNGLPOPMATRIX, glPopMatrix);
	LoadOGLProc(PFNGLPUSHMATRIX, glPushMatrix);
	LoadOGLProc(PFNGLDEPTHRANGE, glDepthRangef);
	LoadOGLProc(PFNGLHINT, glHint);
	LoadOGLProc(PFNGLGETERROR, glGetError);
	LoadOGLProc(PFNGLGETSTRING, glGetString);
	LoadOGLProc(PFNGLTEXSUBIMAGE2D, glTexSubImage2D);
	LoadOGLProc(PFNGLLOADIDENTITY, glLoadIdentity);
	LoadOGLProc(PFNGLLOADMATRIXF, glLoadMatrixf);
	LoadOGLProc(PFNGLPIXELSTOREI, glPixelStorei);
	LoadOGLProc(PFNGLPOINTSIZE, glPointSize);
	
#else

	LoadOGLProc(PFNGLENABLEFUNCPROC, glEnable);
	LoadOGLProc(PFNGLDISABLEFUNCPROC, glDisable);
	LoadOGLProc(PFNGLBLENDFUNCPROC, glBlendFunc);
	LoadOGLProc(PFNGLALPHAFUNCPROC, glAlphaFunc);
	LoadOGLProc(PFNGLTEXPARAMETERIFUNCPROC, glTexParameteri);
	LoadOGLProc(PFNGLBINDTEXTURE, glBindTexture);
	LoadOGLProc(PFNGLENABLECLIENTSTATE, glEnableClientState);
	LoadOGLProc(PFNGLDISABLECLIENTSTATE, glDisableClientState);
	LoadOGLProc(PFNGLVERTEXPOINTER, glVertexPointer);
	LoadOGLProc(PFNGLTEXCOORDPOINTER, glTexCoordPointer);
	LoadOGLProc(PFNGLCOLORPOINTER, glColorPointer);
	LoadOGLProc(PFNGLDRAWELEMENTS, glDrawElements);
	LoadOGLProc(PFNGLGENTEXTURES, glGenTextures);
	LoadOGLProc(PFNGLTEXIMAGE2D, glTexImage2D);
	LoadOGLProc(PFNGLTEXENVI, glTexEnvi);
	LoadOGLProc(PFNGLDELETETEXTURES, glDeleteTextures);
	LoadOGLProc(PFNGLCLEAR, glClear);
	LoadOGLProc(PFNGLCLEARCOLOR, glClearColor);
	LoadOGLProc(PFNGLDEPTHMASK, glDepthMask);
	LoadOGLProc(PFNGLPOLYGONOFFSET, glPolygonOffset);
	LoadOGLProc(PFNGLDEPTHFUNC, glDepthFunc);
	LoadOGLProc(PFNGLVIEWPORT, glViewport);
	LoadOGLProc(PFNGLMATRIXMODE, glMatrixMode);
	LoadOGLProc(PFNGLPOPMATRIX, glPopMatrix);
	LoadOGLProc(PFNGLPUSHMATRIX, glPushMatrix);
	LoadOGLProc(PFNGLDEPTHRANGE, glDepthRange);
	LoadOGLProc(PFNGLHINT, glHint);
	LoadOGLProc(PFNGLGETERROR, glGetError);
	LoadOGLProc(PFNGLGETSTRING, glGetString);
	LoadOGLProc(PFNGLTEXSUBIMAGE2D, glTexSubImage2D);
	LoadOGLProc(PFNGLLOADIDENTITY, glLoadIdentity);
	LoadOGLProc(PFNGLLOADMATRIXF, glLoadMatrixf);
	LoadOGLProc(PFNGLPIXELSTOREI, glPixelStorei);
	LoadOGLProc(PFNGLPOINTSIZE, glPointSize);
	
	LoadOGLProc(PFNGLTEXCOORD2F, glTexCoord2f);
	LoadOGLProc(PFNGLVERTEX3F, glVertex3f);
	LoadOGLProc(PFNGLBEGIN, glBegin);
	LoadOGLProc(PFNGLEND, glEnd);
	LoadOGLProc(PFNGLCOLOR3UB, glColor3ub);
	LoadOGLProc(PFNGLCOLOR4UB, glColor4ub);
	LoadOGLProc(PFNGLCOLOR4F, glColor4f);
	LoadOGLProc(PFNGLARRAYELEMENT, glArrayElement);
	

#endif
	return 1;
}