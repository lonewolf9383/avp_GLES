SUBDIRS = 

AM_CFLAGS =  -m32 -g -Wall -pipe $(shell sdl-config --cflags) $(shell pkg-config openal --cflags)
AM_LDFLAGS = -m32 -$(shell sdl-config --libs) $(shell pkg-config openal --libs)
AM_CXXFLAGS = -m32 -g -Wall -pipe $(shell sdl-config --cflags) $(shell pkg-config openal --cflags)

noinst_LIBRARIES = libVideo.a

libVideo_a_SOURCES = OpenGLInit.c VideoModes.c

INCLUDES = -I$(top_srcdir)/src -I$(top_srcdir)/src/include -I$(top_srcdir)/src/win95 -I$(top_srcdir)/src/avp -I$(top_srcdir)/src/avp/win95 -I$(top_srcdir)/src/avp/support -I$(top_srcdir)/src/avp/win95/frontend 
