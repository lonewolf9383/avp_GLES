AM_CFLAGS =  -m32 -g -Wall -pipe $(shell sdl-config --cflags) $(shell pkg-config openal --cflags)
AM_LDFLAGS = 
AM_CXXFLAGS = -m32 -g -Wall -pipe $(shell sdl-config --cflags) $(shell pkg-config openal --cflags)

noinst_LIBRARIES = libfrontend.a

libfrontend_a_SOURCES = avp_envinfo.c avp_intro.cpp avp_menudata.c avp_menus.c avp_mp_config.cpp avp_userprofile.cpp

INCLUDES = -I$(top_srcdir)/src -I$(top_srcdir)/src/include -I$(top_srcdir)/src/win95 -I$(top_srcdir)/src/avp -I$(top_srcdir)/src/avp/win95 -I$(top_srcdir)/src/avp/support -I$(top_srcdir)/src/avp/win95/frontend -I$(top_srcdir)/src/avp/win95/gadgets -I$(top_srcdir)/Video
