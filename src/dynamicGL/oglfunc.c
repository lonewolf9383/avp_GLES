#include <stdlib.h>
#include <string.h>
#include <assert.h>

#include <SDL/SDL.h>

#include "oglfunc.h"

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
/*
int ogl_have_paletted_texture;
int ogl_have_secondary_color;

int ogl_use_paletted_texture;SDL_GL_LoadLibrary
int ogl_use_secondary_color;
*/
static void dummyfunc()
{
}

#define LoadOGLProc(type, func)						\
{									\
	if (!mode) p##func = (type) dummyfunc; else			\
	p##func = (type) SDL_GL_GetProcAddress(#func);			\
	assert(p##func != NULL);	\
	if (p##func == NULL) {						\
		if (!ogl_missing_func) ogl_missing_func = #func;	\
	}								\
}

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

void load_ogl_functions(int mode)
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
	LoadOGLProc(PFNGLDEPTHRANGE, glDepthRange);
	LoadOGLProc(PFNGLHINT, glHint);
	LoadOGLProc(PFNGLGETERROR, glGetError);
	LoadOGLProc(PFNGLGETSTRING, glGetString);
	LoadOGLProc(PFNGLTEXSUBIMAGE2D, glTexSubImage2D);
	LoadOGLProc(PFNGLLOADIDENTITY, glLoadIdentity);
	
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
	
	LoadOGLProc(PFNGLTEXCOORD2F, glTexCoord2f);
	LoadOGLProc(PFNGLVERTEX3F, glVertex3f);
	LoadOGLProc(PFNGLBEGIN, glBegin);
	LoadOGLProc(PFNGLEND, glEnd);
	LoadOGLProc(PFNGLCOLOR3UB, glColor3ub);
	LoadOGLProc(PFNGLCOLOR4UB, glColor4ub);
	LoadOGLProc(PFNGLCOLOR4F, glColor4f);
	LoadOGLProc(PFNGLARRAYELEMENT, glArrayElement);

#endif

/*
	if (!mode) {
		ogl_have_paletted_texture = 0;
		ogl_have_secondary_color = 0;
		
		ogl_use_paletted_texture = 0;
		ogl_use_secondary_color = 0;
		
		return;
	}
	
	if (ogl_missing_func) {
		fprintf(stderr, "Unable to load OpenGL Library: missing function %s\n", ogl_missing_func);
		exit(EXIT_FAILURE);
	}
	
	ext = (const char *) pglGetString(GL_EXTENSIONS);

	ogl_have_paletted_texture = check_token(ext, "GL_EXT_paletted_texture");	
	ogl_have_secondary_color = check_token(ext, "GL_EXT_secondary_color");

#ifndef GL_COLOR_TABLE_WIDTH_EXT
#define GL_COLOR_TABLE_WIDTH_EXT	GL_COLOR_TABLE_WIDTH
#endif
	
	/*if (ogl_have_paletted_texture) {
		ogl_missing_func = NULL;
		
		LoadOGLProc(PFNGLCOLORTABLEEXTPROC, glColorTableEXT);
		LoadOGLProc(PFNGLGETCOLORTABLEPARAMETERIVEXTPROC, glGetColorTableParameterivEXT);
		
		if (!ogl_missing_func) {	
			GLint size;
			
			pglColorTableEXT(GL_PROXY_TEXTURE_2D, GL_RGBA, 256, GL_BGRA_EXT, GL_UNSIGNED_BYTE, NULL);
			pglGetColorTableParameterivEXT(GL_PROXY_TEXTURE_2D, GL_COLOR_TABLE_WIDTH_EXT, &size);
			
			if (size != 256) {
				ogl_have_paletted_texture = 0;
			}	
		} else {
			ogl_have_paletted_texture = 0;
		}
	}
	
	if (ogl_have_secondary_color) {
		ogl_missing_func = NULL;

		LoadOGLProc(PFNGLSECONDARYCOLOR3FEXTPROC, glSecondaryColor3fEXT);
		LoadOGLProc(PFNGLSECONDARYCOLOR3FVEXTPROC, glSecondaryColor3fvEXT);
		LoadOGLProc(PFNGLSECONDARYCOLOR3UBEXTPROC, glSecondaryColor3ubEXT);
		LoadOGLProc(PFNGLSECONDARYCOLOR3UBVEXTPROC, glSecondaryColor3ubvEXT);
		LoadOGLProc(PFNGLSECONDARYCOLORPOINTEREXTPROC, glSecondaryColorPointerEXT);

		if (ogl_missing_func) {
			ogl_have_secondary_color = 0;
		}
	}*/
	/*
	ogl_use_paletted_texture = ogl_have_paletted_texture;
	ogl_use_secondary_color = ogl_have_secondary_color;

	// fprintf(stderr, "RENDER DEBUG: pal:%d sec:%d\n", ogl_use_paletted_texture, ogl_use_secondary_color);
	*/
}

int check_for_errors(const char *file, int line)
{
	GLenum error;
	int diderror = 0;
	
	while ((error = pglGetError()) != GL_NO_ERROR) {
		fprintf(stderr, "OPENGL ERROR: %04X (%s:%d)\n", error, file, line);
		
		diderror = 1;
	}
	
	return diderror;
}
