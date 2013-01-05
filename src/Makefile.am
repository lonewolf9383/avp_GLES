SUBDIRS = avp win95 Video Input

AM_CFLAGS =  -m32 -g -Wall -pipe $(shell sdl-config --cflags) $(shell pkg-config openal --cflags)
AM_LDFLAGS = -m32 -$(shell sdl-config --libs) $(shell pkg-config openal --libs)
AM_CXXFLAGS = -m32 -g -Wall -pipe $(shell sdl-config --cflags) $(shell pkg-config openal --cflags)

bin_PROGRAMS = AvP

AvP_SOURCES = main.c files.c winapi.c stubs.c version.c mathline.c opengl.c fmv.c oglfunc.c openal.c cdplayer.c menus.c net.c frustum.c kshape.c map.c maths.c md5.c mem3dc.c mem3dcpp.cpp module.c morph.c object.c shpanim.c sphere.c tables.c vdb.c
AvP_LDADD = avp/libavp.a avp/shapes/libshapes.a  avp/win95/frontend/libfrontend.a avp/win95/gadgets/libgadgets.a avp/support/libsupport.a avp/win95/libavpwin95.a win95/libwin95.a Video/libVideo.a Input/libInput.a

INCLUDES = -I$(top_srcdir)/src -I$(top_srcdir)/src/include -I$(top_srcdir)/src/win95 -I$(top_srcdir)/src/avp -I$(top_srcdir)/src/avp/win95 -I$(top_srcdir)/src/avp/support -I$(top_srcdir)/src/avp/win95/frontend -I$(top_srcdir)/Video
