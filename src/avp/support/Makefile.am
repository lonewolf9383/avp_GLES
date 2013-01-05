AM_CFLAGS = -m32 -g -Wall -pipe $(shell sdl-config --cflags) $(shell pkg-config openal --cflags)
AM_LDFLAGS =
AM_CXXFLAGS = -m32 -g -Wall -pipe $(shell sdl-config --cflags) $(shell pkg-config openal --cflags)

noinst_LIBRARIES = libsupport.a

libsupport_a_SOURCES = consbind.cpp consbtch.cpp coordstr.cpp daemon.cpp indexfnt.cpp r2base.cpp r2pos666.cpp reflist.cpp refobj.cpp rentrntq.cpp scstring.cpp strtab.cpp strutil.c trig666.cpp wrapstr.cpp


INCLUDES = -I$(top_srcdir)/src -I$(top_srcdir)/src/include -I$(top_srcdir)/src/win95 -I$(top_srcdir)/src/avp -I$(top_srcdir)/src/avp/win95 -I$(top_srcdir)/src/avp/support -I$(top_srcdir)/src/avp/win95/frontend -I$(top_srcdir)/src/avp/win95/gadgets
