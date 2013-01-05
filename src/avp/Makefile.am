SUBDIRS = shapes support win95

AM_CFLAGS =  -m32 -g -Wall -pipe $(shell sdl-config --cflags) $(shell pkg-config openal --cflags)
AM_LDFLAGS =
AM_CXXFLAGS = -m32 -g -Wall -pipe $(shell sdl-config --cflags) $(shell pkg-config openal --cflags)

noinst_LIBRARIES = libavp.a

libavp_a_SOURCES = ai_sight.c avpview.c bh_agun.c bh_ais.c bh_alien.c \
bh_binsw.c bh_cable.c bh_corpse.c bh_deathvol.c bh_debri.c bh_dummy.c \
bh_fan.c bh_far.c bh_fhug.c bh_gener.c bh_ldoor.c bh_lift.c bh_light.c \
bh_lnksw.c bh_ltfx.c bh_marin.c bh_mission.c bh_near.c bh_pargen.c \
bh_plachier.c bh_plift.c bh_pred.c bh_queen.c bh_rubberduck.c \
bh_selfdest.c bh_snds.c bh_spcl.c bh_swdor.c bh_track.c bh_types.c \
bh_videoscreen.c bh_waypt.c bh_weap.c bh_xeno.c bonusabilities.c \
cconvars.cpp cdtrackselection.cpp cheatmodes.c comp_map.c comp_shp.c \
consolelog.cpp davehook.cpp deaths.c decal.c detaillevels.c dynamics.c \
dynblock.c equipmnt.c extents.c game.c game_statistics.c gamecmds.cpp \
gamevars.cpp hmodel.c hud.c inventry.c language.c lighting.c load_shp.c \
los.c mempool.c messagehistory.c missions.cpp movement.c paintball.c \
particle.c pfarlocs.c pheromon.c player.c pmove.c psnd.c psndproj.c \
pvisible.c savegame.c scream.cpp secstats.c sfx.c stratdef.c targeting.c\
 track.c triggers.c weapons.c


INCLUDES = -I$(top_srcdir)/src -I$(top_srcdir)/src/include -I$(top_srcdir)/src/win95 -I$(top_srcdir)/src/avp -I$(top_srcdir)/src/avp/win95 -I$(top_srcdir)/src/avp/support -I$(top_srcdir)/src/avp/win95/frontend -I$(top_srcdir)/src/avp/win95/gadgets
