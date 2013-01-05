SUBDIRS = frontend gadgets

AM_CFLAGS = -m32 -g -Wall -pipe $(shell sdl-config --cflags) $(shell pkg-config openal --cflags)
AM_LDFLAGS =
AM_CXXFLAGS = -m32 -g -Wall -pipe $(shell sdl-config --cflags) $(shell pkg-config openal --cflags)

noinst_LIBRARIES = libavpwin95.a

libavpwin95_a_SOURCES = avpchunk.cpp cheat.c chtcodes.cpp d3d_hud.cpp ddplat.cpp endianio.c ffread.cpp ffstdio.cpp gammacontrol.cpp hierplace.cpp iofocus.cpp jsndsup.cpp kzsort.c langplat.c modcmds.cpp npcsetup.cpp objsetup.cpp pathchnk.cpp platsup.c pldghost.c pldnet.c progress_bar.cpp projload.cpp scrshot.cpp strachnk.cpp system.c vision.c

INCLUDES = -I$(top_srcdir)/src -I$(top_srcdir)/src/include -I$(top_srcdir)/src/win95 -I$(top_srcdir)/src/avp -I$(top_srcdir)/src/avp/win95 -I$(top_srcdir)/src/avp/support -I$(top_srcdir)/src/avp/win95/frontend -I$(top_srcdir)/src/avp/win95/gadgets
