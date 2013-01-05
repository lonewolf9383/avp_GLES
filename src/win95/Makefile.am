AM_CFLAGS = -m32 -g -Wall -pipe $(shell sdl-config --cflags) $(shell pkg-config openal --cflags)
AM_LDFLAGS =
AM_CXXFLAGS = -m32 -g -Wall -pipe $(shell sdl-config --cflags) $(shell pkg-config openal --cflags)

noinst_LIBRARIES = libwin95.a

libwin95_a_SOURCES = animchnk.cpp animobs.cpp awtexld.cpp awbmpld.cpp awiffld.cpp awpnmld.cpp bmpnames.cpp chnkload.cpp chnktexi.cpp chnktype.cpp chunk.cpp chunkpal.cpp db.c debuglog.cpp dummyobjectchunk.cpp enumchnk.cpp enumsch.cpp envchunk.cpp fail.c fragchnk.cpp gsprchnk.cpp hierchnk.cpp huffman.cpp iff.cpp iff_ilbm.cpp ilbm_ext.cpp io.c list_tem.cpp ltchunk.cpp media.cpp mishchnk.cpp obchunk.cpp oechunk.cpp our_mem.c plat_shp.c plspecfn.c shpchunk.cpp sndchunk.cpp sprchunk.cpp string.cpp texio.c toolchnk.cpp txioctrl.cpp wpchunk.cpp zsp.cpp


INCLUDES = -I$(top_srcdir)/src -I$(top_srcdir)/src/include -I$(top_srcdir)/src/win95 -I$(top_srcdir)/src/avp -I$(top_srcdir)/src/avp/win95 -I$(top_srcdir)/src/avp/support -I$(top_srcdir)/src/avp/win95/frontend -I$(top_srcdir)/src/avp/win95/gadgets
