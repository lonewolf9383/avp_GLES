#ifndef OGLFUNC_H
#define OGLFUNC_H

#if defined(_MSC_VER)
#include <windows.h>
#endif

#include <assert.h>

#ifdef GLES1
#include <GLES/gl.h>
#else
#include <GL/gl.h>
#endif

#ifdef GLES1

typedef void (GL_APIENTRY *PFNGLENABLEFUNCPROC)(GLenum cap);
typedef void (GL_APIENTRY *PFNGLDISABLEFUNCPROC)(GLenum cap);
typedef void (GL_APIENTRY *PFNGLBLENDFUNCPROC) (GLenum sfactor, GLenum dfactor);
typedef void (GL_APIENTRY *PFNGLALPHAFUNCPROC) (GLenum func, GLclampf ref);
typedef void (GL_APIENTRY *PFNGLTEXPARAMETERIFUNCPROC) (GLenum target, GLenum pname, GLint param);
typedef void (GL_APIENTRY *PFNGLBINDTEXTURE) (GLenum target, GLuint texture);
typedef void (GL_APIENTRY *PFNGLENABLECLIENTSTATE) (GLenum array);
typedef void (GL_APIENTRY *PFNGLDISABLECLIENTSTATE) (GLenum array);
typedef void (GL_APIENTRY *PFNGLVERTEXPOINTER) (GLint size, GLenum type, GLsizei stride, const GLvoid *pointer);
typedef void (GL_APIENTRY *PFNGLTEXCOORDPOINTER) (GLint size, GLenum type, GLsizei stride, const GLvoid *pointer);
typedef void (GL_APIENTRY *PFNGLCOLORPOINTER) (GLint size, GLenum type, GLsizei stride, const GLvoid *pointer);
typedef void (GL_APIENTRY *PFNGLDRAWELEMENTS) (GLenum mode, GLsizei count, GLenum type, const GLvoid *indices);
typedef void (GL_APIENTRY *PFNGLGENTEXTURES) (GLsizei n, GLuint *textures);
typedef void (GL_APIENTRY *PFNGLTEXIMAGE2D) (GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, const GLvoid *pixels);
typedef void (GL_APIENTRY *PFNGLTEXENVI) (GLenum target, GLenum pname, GLint param);
typedef void (GL_APIENTRY *PFNGLDELETETEXTURES) (GLsizei n, const GLuint *textures);
typedef void (GL_APIENTRY *PFNGLCLEAR) (GLbitfield mask);
typedef void (GL_APIENTRY *PFNGLCLEARCOLOR) (GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha);
typedef void (GL_APIENTRY *PFNGLDEPTHMASK) (GLboolean flag);
typedef void (GL_APIENTRY *PFNGLDEPTHFUNC) (GLenum func);
typedef void (GL_APIENTRY *PFNGLPOLYGONOFFSET) (GLfloat factor, GLfloat units);
typedef void (GL_APIENTRY *PFNGLVIEWPORT) (GLint x, GLint y, GLsizei width, GLsizei height);
typedef void (GL_APIENTRY *PFNGLMATRIXMODE) (GLenum mode);
typedef void (GL_APIENTRY *PFNGLPOPMATRIX) (void);
typedef void (GL_APIENTRY *PFNGLPUSHMATRIX) (void);
typedef void (GL_APIENTRY *PFNGLDEPTHRANGE) (GLclampf zNear, GLclampf zFar);
typedef void (GL_APIENTRY *PFNGLHINT) (GLenum target, GLenum mode);
typedef GLenum (GL_APIENTRY *PFNGLGETERROR) (void);
typedef const GLubyte * (GL_APIENTRY *PFNGLGETSTRING) (GLenum name);
typedef void (GL_APIENTRY *PFNGLTEXSUBIMAGE2D) (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid *pixels);
typedef void (GL_APIENTRY *PFNGLLOADIDENTITY) (void);

extern PFNGLENABLEFUNCPROC pglEnable;
extern PFNGLENABLEFUNCPROC pglDisable;
extern PFNGLBLENDFUNCPROC pglBlendFunc;
extern PFNGLALPHAFUNCPROC pglAlphaFunc;
extern PFNGLTEXPARAMETERIFUNCPROC pglTexParameteri;
extern PFNGLBINDTEXTURE pglBindTexture;
extern PFNGLENABLECLIENTSTATE pglEnableClientState;
extern PFNGLDISABLECLIENTSTATE pglDisableClientState;
extern PFNGLVERTEXPOINTER pglVertexPointer;
extern PFNGLTEXCOORDPOINTER pglTexCoordPointer;
extern PFNGLCOLORPOINTER pglColorPointer;
extern PFNGLDRAWELEMENTS pglDrawElements;
extern PFNGLGENTEXTURES pglGenTextures;
extern PFNGLTEXIMAGE2D pglTexImage2D;
extern PFNGLTEXENVI pglTexEnvi;
extern PFNGLDELETETEXTURES pglDeleteTextures;
extern PFNGLCLEAR pglClear;
extern PFNGLCLEARCOLOR pglClearColor;
extern PFNGLDEPTHMASK pglDepthMask;
extern PFNGLDEPTHFUNC pglDepthFunc;
extern PFNGLPOLYGONOFFSET pglPolygonOffset;
extern PFNGLVIEWPORT pglViewport;
extern PFNGLMATRIXMODE pglMatrixMode;
extern PFNGLPUSHMATRIX pglPushMatrix;
extern PFNGLPOPMATRIX pglPopMatrix;
extern PFNGLDEPTHRANGE pglDepthRangef;

// To make the function call the same name in GLES
#define pglDepthRange pglDepthRangef

extern PFNGLHINT pglHint;
extern PFNGLGETERROR pglGetError;
extern PFNGLGETSTRING pglGetString;
extern PFNGLTEXSUBIMAGE2D pglTexSubImage2D;
extern PFNGLLOADIDENTITY pglLoadIdentity;

/*
#define  pglEnable glEnable
#define pglDisable glDisable
#define pglBlendFunc glBlendFunc
#define pglAlphaFunc glAlphaFunc
extern PFNGLTEXPARAMETERIFUNCPROC pglTexParameteri;
extern PFNGLBINDTEXTURE pglBindTexture;
extern PFNGLENABLECLIENTSTATE pglEnableClientState;
extern PFNGLDISABLECLIENTSTATE pglDisableClientState;
extern PFNGLVERTEXPOINTER pglVertexPointer;
extern PFNGLTEXCOORDPOINTER pglTexCoordPointer;
extern PFNGLCOLORPOINTER pglColorPointer;
extern PFNGLDRAWELEMENTS pglDrawElements;
extern PFNGLGENTEXTURES pglGenTextures;
extern PFNGLTEXIMAGE2D pglTexImage2D;
extern PFNGLTEXENVI pglTexEnvi;
extern PFNGLDELETETEXTURES pglDeleteTextures;
extern PFNGLCLEAR pglClear;
extern PFNGLCLEARCOLOR pglClearColor;
extern PFNGLDEPTHMASK pglDepthMask;
extern PFNGLDEPTHFUNC pglDepthFunc;
extern PFNGLPOLYGONOFFSET pglPolygonOffset;
extern PFNGLVIEWPORT pglViewport;
extern PFNGLMATRIXMODE pglMatrixMode;
extern PFNGLPUSHMATRIX pglPushMatrix;
extern PFNGLPOPMATRIX pglPopMatrix;
extern PFNGLDEPTHRANGE pglDepthRangef;

// To make the function call the same name in GLES
#define pglDepthRange pglDepthRangef

extern PFNGLHINT pglHint;
extern PFNGLGETERROR pglGetError;
extern PFNGLGETSTRING pglGetString;
extern PFNGLTEXSUBIMAGE2D pglTexSubImage2D;
extern PFNGLLOADIDENTITY pglLoadIdentity;
*/
#else

typedef void (APIENTRY *PFNGLENABLEFUNCPROC)(GLenum cap);
typedef void (APIENTRY *PFNGLDISABLEFUNCPROC)(GLenum cap);
typedef void (APIENTRY *PFNGLBLENDFUNCPROC) (GLenum sfactor, GLenum dfactor);
typedef void (APIENTRY *PFNGLALPHAFUNCPROC) (GLenum func, GLclampf ref);
typedef void (APIENTRY *PFNGLTEXPARAMETERIFUNCPROC) (GLenum target, GLenum pname, GLint param);
typedef void (APIENTRY *PFNGLBINDTEXTURE) (GLenum target, GLuint texture);
typedef void (APIENTRY *PFNGLENABLECLIENTSTATE) (GLenum array);
typedef void (APIENTRY *PFNGLDISABLECLIENTSTATE) (GLenum array);
typedef void (APIENTRY *PFNGLVERTEXPOINTER) (GLint size, GLenum type, GLsizei stride, const GLvoid *pointer);
typedef void (APIENTRY *PFNGLTEXCOORDPOINTER) (GLint size, GLenum type, GLsizei stride, const GLvoid *pointer);
typedef void (APIENTRY *PFNGLCOLORPOINTER) (GLint size, GLenum type, GLsizei stride, const GLvoid *pointer);
typedef void (APIENTRY *PFNGLDRAWELEMENTS) (GLenum mode, GLsizei count, GLenum type, const GLvoid *indices);
typedef void (APIENTRY *PFNGLGENTEXTURES) (GLsizei n, GLuint *textures);
typedef void (APIENTRY *PFNGLTEXIMAGE2D) (GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, const GLvoid *pixels);
typedef void (APIENTRY *PFNGLTEXENVI) (GLenum target, GLenum pname, GLint param);
typedef void (APIENTRY *PFNGLDELETETEXTURES) (GLsizei n, const GLuint *textures);
typedef void (APIENTRY *PFNGLCLEAR) (GLbitfield mask);
typedef void (APIENTRY *PFNGLCLEARCOLOR) (GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha);
typedef void (APIENTRY *PFNGLDEPTHMASK) (GLboolean flag);
typedef void (APIENTRY *PFNGLDEPTHFUNC) (GLenum func);
typedef void (APIENTRY *PFNGLPOLYGONOFFSET) (GLfloat factor, GLfloat units);
typedef void (APIENTRY *PFNGLVIEWPORT) (GLint x, GLint y, GLsizei width, GLsizei height);
typedef void (APIENTRY *PFNGLMATRIXMODE) (GLenum mode);
typedef void (APIENTRY *PFNGLPOPMATRIX) (void);
typedef void (APIENTRY *PFNGLPUSHMATRIX) (void);
typedef void (APIENTRY *PFNGLDEPTHRANGE) (GLclampd zNear, GLclampd zFar);
typedef void (APIENTRY *PFNGLHINT) (GLenum target, GLenum mode);
typedef GLenum (APIENTRY *PFNGLGETERROR) (void);
typedef GLubyte * (APIENTRY *PFNGLGETSTRING) (GLenum name);
typedef void (APIENTRY *PFNGLTEXSUBIMAGE2D) (GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid *pixels);
typedef void (GLAPIENTRY *PFNGLLOADIDENTITY) (void);

typedef void (GLAPIENTRY *PFNGLTEXCOORD2F)( GLfloat s, GLfloat t );
typedef void (GLAPIENTRY *PFNGLVERTEX3F)( GLfloat x, GLfloat y, GLfloat z );
typedef void (GLAPIENTRY *PFNGLBEGIN)( GLenum mode );
typedef void (GLAPIENTRY *PFNGLEND)( void );
typedef void (GLAPIENTRY *PFNGLCOLOR3UB)( GLubyte red, GLubyte green, GLubyte blue );
typedef void (GLAPIENTRY *PFNGLCOLOR4UB)( GLubyte red, GLubyte green, GLubyte blue, GLubyte a);
typedef void (GLAPIENTRY *PFNGLCOLOR4F)( float red, float green, float blue, float a);
typedef void (GLAPIENTRY *PFNGLARRAYELEMENT)( GLint i );

extern PFNGLENABLEFUNCPROC pglEnable;
extern PFNGLENABLEFUNCPROC pglDisable;
extern PFNGLBLENDFUNCPROC pglBlendFunc;
extern PFNGLALPHAFUNCPROC pglAlphaFunc;
extern PFNGLTEXPARAMETERIFUNCPROC pglTexParameteri;
extern PFNGLBINDTEXTURE pglBindTexture;
extern PFNGLENABLECLIENTSTATE pglEnableClientState;
extern PFNGLDISABLECLIENTSTATE pglDisableClientState;
extern PFNGLVERTEXPOINTER pglVertexPointer;
extern PFNGLTEXCOORDPOINTER pglTexCoordPointer;
extern PFNGLCOLORPOINTER pglColorPointer;
extern PFNGLDRAWELEMENTS pglDrawElements;
extern PFNGLGENTEXTURES pglGenTextures;
extern PFNGLTEXIMAGE2D pglTexImage2D;
extern PFNGLTEXENVI pglTexEnvi;
extern PFNGLDELETETEXTURES pglDeleteTextures;
extern PFNGLCLEAR pglClear;
extern PFNGLCLEARCOLOR pglClearColor;
extern PFNGLDEPTHMASK pglDepthMask;
extern PFNGLDEPTHFUNC pglDepthFunc;
extern PFNGLPOLYGONOFFSET pglPolygonOffset;
extern PFNGLVIEWPORT pglViewport;
extern PFNGLMATRIXMODE pglMatrixMode;
extern PFNGLPUSHMATRIX pglPushMatrix;
extern PFNGLPOPMATRIX pglPopMatrix;
extern PFNGLDEPTHRANGE pglDepthRange;
extern PFNGLHINT pglHint;
extern PFNGLGETERROR pglGetError;
extern PFNGLGETSTRING pglGetString;
extern PFNGLTEXSUBIMAGE2D pglTexSubImage2D;
extern PFNGLLOADIDENTITY pglLoadIdentity;

extern PFNGLTEXCOORD2F pglTexCoord2f;
extern PFNGLVERTEX3F pglVertex3f;
extern PFNGLBEGIN pglBegin;
extern PFNGLEND pglEnd;
extern PFNGLCOLOR3UB pglColor3ub;
extern PFNGLCOLOR4UB pglColor4ub;
extern PFNGLCOLOR4F pglColor4f;
extern PFNGLARRAYELEMENT pglArrayElement;

#endif

#endif
