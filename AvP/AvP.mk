##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## pandora_release
ProjectName            :=AvP
ConfigurationName      :=pandora_release
WorkspacePath          := "/media/AE78B81A78B7DF71/avp/AvP"
ProjectPath            := "/media/AE78B81A78B7DF71/avp/AvP"
IntermediateDirectory  :=./Pandora/Release
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=graham
Date                   :=03/01/13
CodeLitePath           :="/home/graham/.codelite"
LinkerName             :=arm-angstrom-linux-gnueabi-g++
SharedObjectLinkerName :=arm-angstrom-linux-gnueabi-g++ -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=./Pandora/avp
Preprocessors          :=$(PreprocessorSwitch)GLES1 
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="/media/AE78B81A78B7DF71/avp/AvP/AvP.txt"
PCHCompileFlags        :=
MakeDirCommand         :=mkdir -p
LinkOptions            :=  
IncludePath            := $(IncludeSwitch)/usr/local/angstrom/arm/include  $(IncludeSwitch). $(IncludeSwitch). $(IncludeSwitch)../src $(IncludeSwitch)../src/avp $(IncludeSwitch)../src/include $(IncludeSwitch)../src/win95 $(IncludeSwitch)../src/avp/ $(IncludeSwitch)../src/avp/shapes $(IncludeSwitch)../src/avp/support $(IncludeSwitch)../src/avp/win95 $(IncludeSwitch)../src/avp/win95/frontend $(IncludeSwitch)../src/avp/win95/gadgets 
IncludePCH             := 
RcIncludePath          := 
Libs                   := $(LibrarySwitch)SDL_net $(LibrarySwitch)SDL $(LibrarySwitch)openal $(LibrarySwitch)pthread $(LibrarySwitch)ts $(LibrarySwitch)X11 $(LibrarySwitch)EGL 
ArLibs                 :=  "SDL_net" "SDL" "openal" "pthread" "ts" "X11" "EGL" 
LibPath                :=$(LibraryPathSwitch)/usr/local/angstrom/arm/lib  $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := arm-angstrom-linux-gnueabi-ar rcu
CXX      := arm-angstrom-linux-gnueabi-g++
CC       := arm-angstrom-linux-gnueabi-gcc
CXXFLAGS :=  -O3 $(shell sdl-config --cflags) -mcpu=cortex-a8 -mfpu=neon -ftree-vectorize -mfloat-abi=softfp -ffast-math -fsingle-precision-constant $(Preprocessors)
CFLAGS   :=  -O3 $(shell sdl-config --cflags) -mcpu=cortex-a8 -mfpu=neon -ftree-vectorize -mfloat-abi=softfp -ffast-math -fsingle-precision-constant $(Preprocessors)


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects=$(IntermediateDirectory)/src_cdplayer$(ObjectSuffix) $(IntermediateDirectory)/src_files$(ObjectSuffix) $(IntermediateDirectory)/src_fmv$(ObjectSuffix) $(IntermediateDirectory)/src_frustum$(ObjectSuffix) $(IntermediateDirectory)/src_kshape$(ObjectSuffix) $(IntermediateDirectory)/src_main$(ObjectSuffix) $(IntermediateDirectory)/src_map$(ObjectSuffix) $(IntermediateDirectory)/src_mathline$(ObjectSuffix) $(IntermediateDirectory)/src_maths$(ObjectSuffix) $(IntermediateDirectory)/src_md5$(ObjectSuffix) \
	$(IntermediateDirectory)/src_mem3dc$(ObjectSuffix) $(IntermediateDirectory)/src_mem3dcpp$(ObjectSuffix) $(IntermediateDirectory)/src_menus$(ObjectSuffix) $(IntermediateDirectory)/src_module$(ObjectSuffix) $(IntermediateDirectory)/src_morph$(ObjectSuffix) $(IntermediateDirectory)/src_net$(ObjectSuffix) $(IntermediateDirectory)/src_object$(ObjectSuffix) $(IntermediateDirectory)/src_openal$(ObjectSuffix) $(IntermediateDirectory)/src_shpanim$(ObjectSuffix) $(IntermediateDirectory)/src_sphere$(ObjectSuffix) \
	$(IntermediateDirectory)/src_stubs$(ObjectSuffix) $(IntermediateDirectory)/src_tables$(ObjectSuffix) $(IntermediateDirectory)/src_vdb$(ObjectSuffix) $(IntermediateDirectory)/src_version$(ObjectSuffix) $(IntermediateDirectory)/src_winapi$(ObjectSuffix) $(IntermediateDirectory)/src_opengl$(ObjectSuffix) $(IntermediateDirectory)/Input_JoystickInput$(ObjectSuffix) $(IntermediateDirectory)/Input_MenuInput$(ObjectSuffix) $(IntermediateDirectory)/Input_usr_io$(ObjectSuffix) $(IntermediateDirectory)/avp_ai_sight$(ObjectSuffix) \
	$(IntermediateDirectory)/avp_avpview$(ObjectSuffix) $(IntermediateDirectory)/avp_bh_agun$(ObjectSuffix) $(IntermediateDirectory)/avp_bh_ais$(ObjectSuffix) $(IntermediateDirectory)/avp_bh_alien$(ObjectSuffix) $(IntermediateDirectory)/avp_bh_binsw$(ObjectSuffix) $(IntermediateDirectory)/avp_bh_cable$(ObjectSuffix) $(IntermediateDirectory)/avp_bh_corpse$(ObjectSuffix) $(IntermediateDirectory)/avp_bh_deathvol$(ObjectSuffix) $(IntermediateDirectory)/avp_bh_debri$(ObjectSuffix) $(IntermediateDirectory)/avp_bh_dummy$(ObjectSuffix) \
	$(IntermediateDirectory)/avp_bh_fan$(ObjectSuffix) $(IntermediateDirectory)/avp_bh_far$(ObjectSuffix) $(IntermediateDirectory)/avp_bh_fhug$(ObjectSuffix) $(IntermediateDirectory)/avp_bh_gener$(ObjectSuffix) $(IntermediateDirectory)/avp_bh_ldoor$(ObjectSuffix) $(IntermediateDirectory)/avp_bh_lift$(ObjectSuffix) $(IntermediateDirectory)/avp_bh_light$(ObjectSuffix) $(IntermediateDirectory)/avp_bh_lnksw$(ObjectSuffix) $(IntermediateDirectory)/avp_bh_ltfx$(ObjectSuffix) $(IntermediateDirectory)/avp_bh_marin$(ObjectSuffix) \
	$(IntermediateDirectory)/avp_bh_mission$(ObjectSuffix) $(IntermediateDirectory)/avp_bh_near$(ObjectSuffix) $(IntermediateDirectory)/avp_bh_pargen$(ObjectSuffix) $(IntermediateDirectory)/avp_bh_plachier$(ObjectSuffix) $(IntermediateDirectory)/avp_bh_plift$(ObjectSuffix) $(IntermediateDirectory)/avp_bh_pred$(ObjectSuffix) $(IntermediateDirectory)/avp_bh_queen$(ObjectSuffix) $(IntermediateDirectory)/avp_bh_rubberduck$(ObjectSuffix) $(IntermediateDirectory)/avp_bh_selfdest$(ObjectSuffix) $(IntermediateDirectory)/avp_bh_snds$(ObjectSuffix) \
	$(IntermediateDirectory)/avp_bh_spcl$(ObjectSuffix) $(IntermediateDirectory)/avp_bh_swdor$(ObjectSuffix) $(IntermediateDirectory)/avp_bh_track$(ObjectSuffix) $(IntermediateDirectory)/avp_bh_types$(ObjectSuffix) $(IntermediateDirectory)/avp_bh_videoscreen$(ObjectSuffix) $(IntermediateDirectory)/avp_bh_waypt$(ObjectSuffix) $(IntermediateDirectory)/avp_bh_weap$(ObjectSuffix) $(IntermediateDirectory)/avp_bh_xeno$(ObjectSuffix) $(IntermediateDirectory)/avp_bonusabilities$(ObjectSuffix) $(IntermediateDirectory)/avp_cconvars$(ObjectSuffix) \
	$(IntermediateDirectory)/avp_cdtrackselection$(ObjectSuffix) $(IntermediateDirectory)/avp_cheatmodes$(ObjectSuffix) $(IntermediateDirectory)/avp_comp_map$(ObjectSuffix) $(IntermediateDirectory)/avp_comp_shp$(ObjectSuffix) $(IntermediateDirectory)/avp_consolelog$(ObjectSuffix) $(IntermediateDirectory)/avp_davehook$(ObjectSuffix) $(IntermediateDirectory)/avp_deaths$(ObjectSuffix) $(IntermediateDirectory)/avp_decal$(ObjectSuffix) $(IntermediateDirectory)/avp_detaillevels$(ObjectSuffix) $(IntermediateDirectory)/avp_dynamics$(ObjectSuffix) \
	$(IntermediateDirectory)/avp_dynblock$(ObjectSuffix) $(IntermediateDirectory)/avp_equipmnt$(ObjectSuffix) $(IntermediateDirectory)/avp_extents$(ObjectSuffix) $(IntermediateDirectory)/avp_game$(ObjectSuffix) $(IntermediateDirectory)/avp_gamecmds$(ObjectSuffix) $(IntermediateDirectory)/avp_game_statistics$(ObjectSuffix) $(IntermediateDirectory)/avp_gamevars$(ObjectSuffix) $(IntermediateDirectory)/avp_hmodel$(ObjectSuffix) $(IntermediateDirectory)/avp_hud$(ObjectSuffix) $(IntermediateDirectory)/avp_inventry$(ObjectSuffix) \
	$(IntermediateDirectory)/avp_language$(ObjectSuffix) $(IntermediateDirectory)/avp_lighting$(ObjectSuffix) $(IntermediateDirectory)/avp_load_shp$(ObjectSuffix) $(IntermediateDirectory)/avp_los$(ObjectSuffix) $(IntermediateDirectory)/avp_mempool$(ObjectSuffix) $(IntermediateDirectory)/avp_messagehistory$(ObjectSuffix) $(IntermediateDirectory)/avp_missions$(ObjectSuffix) $(IntermediateDirectory)/avp_movement$(ObjectSuffix) $(IntermediateDirectory)/avp_paintball$(ObjectSuffix) $(IntermediateDirectory)/avp_particle$(ObjectSuffix) \
	$(IntermediateDirectory)/avp_pfarlocs$(ObjectSuffix) $(IntermediateDirectory)/avp_pheromon$(ObjectSuffix) $(IntermediateDirectory)/avp_player$(ObjectSuffix) $(IntermediateDirectory)/avp_pmove$(ObjectSuffix) $(IntermediateDirectory)/avp_psnd$(ObjectSuffix) $(IntermediateDirectory)/avp_psndproj$(ObjectSuffix) $(IntermediateDirectory)/avp_pvisible$(ObjectSuffix) $(IntermediateDirectory)/avp_savegame$(ObjectSuffix) $(IntermediateDirectory)/avp_scream$(ObjectSuffix) $(IntermediateDirectory)/avp_secstats$(ObjectSuffix) \
	$(IntermediateDirectory)/avp_sfx$(ObjectSuffix) $(IntermediateDirectory)/avp_stratdef$(ObjectSuffix) $(IntermediateDirectory)/avp_targeting$(ObjectSuffix) $(IntermediateDirectory)/avp_track$(ObjectSuffix) $(IntermediateDirectory)/avp_triggers$(ObjectSuffix) $(IntermediateDirectory)/avp_weapons$(ObjectSuffix) $(IntermediateDirectory)/win95_avpchunk$(ObjectSuffix) $(IntermediateDirectory)/win95_cheat$(ObjectSuffix) $(IntermediateDirectory)/win95_chtcodes$(ObjectSuffix) $(IntermediateDirectory)/win95_d3d_hud$(ObjectSuffix) \
	$(IntermediateDirectory)/win95_ddplat$(ObjectSuffix) $(IntermediateDirectory)/win95_endianio$(ObjectSuffix) $(IntermediateDirectory)/win95_ffread$(ObjectSuffix) $(IntermediateDirectory)/win95_ffstdio$(ObjectSuffix) $(IntermediateDirectory)/win95_gammacontrol$(ObjectSuffix) $(IntermediateDirectory)/win95_hierplace$(ObjectSuffix) $(IntermediateDirectory)/win95_iofocus$(ObjectSuffix) $(IntermediateDirectory)/win95_jsndsup$(ObjectSuffix) $(IntermediateDirectory)/win95_kzsort$(ObjectSuffix) $(IntermediateDirectory)/win95_langplat$(ObjectSuffix) \
	$(IntermediateDirectory)/win95_modcmds$(ObjectSuffix) $(IntermediateDirectory)/win95_npcsetup$(ObjectSuffix) $(IntermediateDirectory)/win95_objsetup$(ObjectSuffix) $(IntermediateDirectory)/win95_pathchnk$(ObjectSuffix) $(IntermediateDirectory)/win95_platsup$(ObjectSuffix) $(IntermediateDirectory)/win95_pldghost$(ObjectSuffix) $(IntermediateDirectory)/win95_pldnet$(ObjectSuffix) $(IntermediateDirectory)/win95_projload$(ObjectSuffix) $(IntermediateDirectory)/win95_scrshot$(ObjectSuffix) $(IntermediateDirectory)/win95_strachnk$(ObjectSuffix) \
	$(IntermediateDirectory)/win95_system$(ObjectSuffix) $(IntermediateDirectory)/win95_vision$(ObjectSuffix) $(IntermediateDirectory)/frontend_avp_envinfo$(ObjectSuffix) $(IntermediateDirectory)/frontend_avp_intro$(ObjectSuffix) $(IntermediateDirectory)/frontend_avp_menudata$(ObjectSuffix) $(IntermediateDirectory)/frontend_avp_menus$(ObjectSuffix) $(IntermediateDirectory)/frontend_avp_mp_config$(ObjectSuffix) $(IntermediateDirectory)/frontend_avp_userprofile$(ObjectSuffix) $(IntermediateDirectory)/gadgets_ahudgadg$(ObjectSuffix) $(IntermediateDirectory)/gadgets_conscmnd$(ObjectSuffix) \
	$(IntermediateDirectory)/gadgets_conssym$(ObjectSuffix) $(IntermediateDirectory)/gadgets_consvar$(ObjectSuffix) $(IntermediateDirectory)/gadgets_gadget$(ObjectSuffix) $(IntermediateDirectory)/gadgets_hudgadg$(ObjectSuffix) $(IntermediateDirectory)/gadgets_rootgadg$(ObjectSuffix) $(IntermediateDirectory)/gadgets_teletype$(ObjectSuffix) $(IntermediateDirectory)/gadgets_textexp$(ObjectSuffix) $(IntermediateDirectory)/gadgets_textin$(ObjectSuffix) $(IntermediateDirectory)/gadgets_t_ingadg$(ObjectSuffix) $(IntermediateDirectory)/gadgets_trepgadg$(ObjectSuffix) \
	$(IntermediateDirectory)/win95_progress_bar$(ObjectSuffix) $(IntermediateDirectory)/shapes_cube$(ObjectSuffix) $(IntermediateDirectory)/support_consbind$(ObjectSuffix) $(IntermediateDirectory)/support_consbtch$(ObjectSuffix) $(IntermediateDirectory)/support_coordstr$(ObjectSuffix) $(IntermediateDirectory)/support_daemon$(ObjectSuffix) $(IntermediateDirectory)/support_indexfnt$(ObjectSuffix) $(IntermediateDirectory)/support_r2base$(ObjectSuffix) $(IntermediateDirectory)/support_r2pos666$(ObjectSuffix) $(IntermediateDirectory)/support_reflist$(ObjectSuffix) \
	$(IntermediateDirectory)/support_refobj$(ObjectSuffix) $(IntermediateDirectory)/support_rentrntq$(ObjectSuffix) $(IntermediateDirectory)/support_scstring$(ObjectSuffix) $(IntermediateDirectory)/support_strtab$(ObjectSuffix) $(IntermediateDirectory)/support_strutil$(ObjectSuffix) $(IntermediateDirectory)/support_trig666$(ObjectSuffix) $(IntermediateDirectory)/support_wrapstr$(ObjectSuffix) $(IntermediateDirectory)/src_oglfunc$(ObjectSuffix) $(IntermediateDirectory)/win95_animchnk$(ObjectSuffix) $(IntermediateDirectory)/win95_animobs$(ObjectSuffix) \
	$(IntermediateDirectory)/win95_awbmpld$(ObjectSuffix) $(IntermediateDirectory)/win95_awiffld$(ObjectSuffix) $(IntermediateDirectory)/win95_awpnmld$(ObjectSuffix) $(IntermediateDirectory)/win95_awtexld$(ObjectSuffix) $(IntermediateDirectory)/win95_bmpnames$(ObjectSuffix) $(IntermediateDirectory)/win95_chnkload$(ObjectSuffix) $(IntermediateDirectory)/win95_chnktexi$(ObjectSuffix) $(IntermediateDirectory)/win95_chnktype$(ObjectSuffix) $(IntermediateDirectory)/win95_chunk$(ObjectSuffix) $(IntermediateDirectory)/win95_chunkpal$(ObjectSuffix) \
	$(IntermediateDirectory)/win95_db$(ObjectSuffix) $(IntermediateDirectory)/win95_debuglog$(ObjectSuffix) $(IntermediateDirectory)/win95_dummyobjectchunk$(ObjectSuffix) $(IntermediateDirectory)/win95_enumchnk$(ObjectSuffix) $(IntermediateDirectory)/win95_enumsch$(ObjectSuffix) $(IntermediateDirectory)/win95_envchunk$(ObjectSuffix) $(IntermediateDirectory)/win95_fail$(ObjectSuffix) $(IntermediateDirectory)/win95_fragchnk$(ObjectSuffix) $(IntermediateDirectory)/win95_gsprchnk$(ObjectSuffix) $(IntermediateDirectory)/win95_hierchnk$(ObjectSuffix) \
	$(IntermediateDirectory)/win95_huffman$(ObjectSuffix) $(IntermediateDirectory)/win95_iff$(ObjectSuffix) $(IntermediateDirectory)/win95_iff_ilbm$(ObjectSuffix) $(IntermediateDirectory)/win95_ilbm_ext$(ObjectSuffix) $(IntermediateDirectory)/win95_io$(ObjectSuffix) $(IntermediateDirectory)/win95_list_tem$(ObjectSuffix) $(IntermediateDirectory)/win95_ltchunk$(ObjectSuffix) $(IntermediateDirectory)/win95_media$(ObjectSuffix) $(IntermediateDirectory)/win95_mishchnk$(ObjectSuffix) $(IntermediateDirectory)/win95_obchunk$(ObjectSuffix) \
	$(IntermediateDirectory)/win95_oechunk$(ObjectSuffix) $(IntermediateDirectory)/win95_our_mem$(ObjectSuffix) $(IntermediateDirectory)/win95_plat_shp$(ObjectSuffix) $(IntermediateDirectory)/win95_plspecfn$(ObjectSuffix) $(IntermediateDirectory)/win95_shpchunk$(ObjectSuffix) $(IntermediateDirectory)/win95_sndchunk$(ObjectSuffix) $(IntermediateDirectory)/win95_sprchunk$(ObjectSuffix) $(IntermediateDirectory)/win95_string$(ObjectSuffix) $(IntermediateDirectory)/win95_texio$(ObjectSuffix) $(IntermediateDirectory)/win95_toolchnk$(ObjectSuffix) \
	$(IntermediateDirectory)/win95_txioctrl$(ObjectSuffix) $(IntermediateDirectory)/win95_wpchunk$(ObjectSuffix) $(IntermediateDirectory)/win95_zsp$(ObjectSuffix) $(IntermediateDirectory)/Video_VideoModes$(ObjectSuffix) $(IntermediateDirectory)/Video_OpenGLInit$(ObjectSuffix) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects) > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

$(IntermediateDirectory)/.d:
	@test -d ./Pandora/Release || $(MakeDirCommand) ./Pandora/Release

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/src_cdplayer$(ObjectSuffix): ../src/cdplayer.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/cdplayer.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_cdplayer$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_cdplayer$(PreprocessSuffix): ../src/cdplayer.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_cdplayer$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/cdplayer.c"

$(IntermediateDirectory)/src_files$(ObjectSuffix): ../src/files.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/files.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_files$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_files$(PreprocessSuffix): ../src/files.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_files$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/files.c"

$(IntermediateDirectory)/src_fmv$(ObjectSuffix): ../src/fmv.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/fmv.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_fmv$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_fmv$(PreprocessSuffix): ../src/fmv.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_fmv$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/fmv.c"

$(IntermediateDirectory)/src_frustum$(ObjectSuffix): ../src/frustum.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/frustum.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_frustum$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_frustum$(PreprocessSuffix): ../src/frustum.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_frustum$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/frustum.c"

$(IntermediateDirectory)/src_kshape$(ObjectSuffix): ../src/kshape.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/kshape.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_kshape$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_kshape$(PreprocessSuffix): ../src/kshape.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_kshape$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/kshape.c"

$(IntermediateDirectory)/src_main$(ObjectSuffix): ../src/main.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/main.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_main$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_main$(PreprocessSuffix): ../src/main.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_main$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/main.c"

$(IntermediateDirectory)/src_map$(ObjectSuffix): ../src/map.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/map.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_map$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_map$(PreprocessSuffix): ../src/map.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_map$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/map.c"

$(IntermediateDirectory)/src_mathline$(ObjectSuffix): ../src/mathline.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/mathline.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_mathline$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_mathline$(PreprocessSuffix): ../src/mathline.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_mathline$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/mathline.c"

$(IntermediateDirectory)/src_maths$(ObjectSuffix): ../src/maths.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/maths.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_maths$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_maths$(PreprocessSuffix): ../src/maths.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_maths$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/maths.c"

$(IntermediateDirectory)/src_md5$(ObjectSuffix): ../src/md5.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/md5.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_md5$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_md5$(PreprocessSuffix): ../src/md5.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_md5$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/md5.c"

$(IntermediateDirectory)/src_mem3dc$(ObjectSuffix): ../src/mem3dc.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/mem3dc.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_mem3dc$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_mem3dc$(PreprocessSuffix): ../src/mem3dc.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_mem3dc$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/mem3dc.c"

$(IntermediateDirectory)/src_mem3dcpp$(ObjectSuffix): ../src/mem3dcpp.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/mem3dcpp.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_mem3dcpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_mem3dcpp$(PreprocessSuffix): ../src/mem3dcpp.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_mem3dcpp$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/mem3dcpp.cpp"

$(IntermediateDirectory)/src_menus$(ObjectSuffix): ../src/menus.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/menus.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_menus$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_menus$(PreprocessSuffix): ../src/menus.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_menus$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/menus.c"

$(IntermediateDirectory)/src_module$(ObjectSuffix): ../src/module.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/module.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_module$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_module$(PreprocessSuffix): ../src/module.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_module$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/module.c"

$(IntermediateDirectory)/src_morph$(ObjectSuffix): ../src/morph.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/morph.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_morph$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_morph$(PreprocessSuffix): ../src/morph.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_morph$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/morph.c"

$(IntermediateDirectory)/src_net$(ObjectSuffix): ../src/net.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/net.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_net$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_net$(PreprocessSuffix): ../src/net.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_net$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/net.c"

$(IntermediateDirectory)/src_object$(ObjectSuffix): ../src/object.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/object.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_object$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_object$(PreprocessSuffix): ../src/object.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_object$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/object.c"

$(IntermediateDirectory)/src_openal$(ObjectSuffix): ../src/openal.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/openal.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_openal$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_openal$(PreprocessSuffix): ../src/openal.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_openal$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/openal.c"

$(IntermediateDirectory)/src_shpanim$(ObjectSuffix): ../src/shpanim.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/shpanim.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_shpanim$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_shpanim$(PreprocessSuffix): ../src/shpanim.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_shpanim$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/shpanim.c"

$(IntermediateDirectory)/src_sphere$(ObjectSuffix): ../src/sphere.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/sphere.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_sphere$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_sphere$(PreprocessSuffix): ../src/sphere.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_sphere$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/sphere.c"

$(IntermediateDirectory)/src_stubs$(ObjectSuffix): ../src/stubs.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/stubs.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_stubs$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_stubs$(PreprocessSuffix): ../src/stubs.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_stubs$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/stubs.c"

$(IntermediateDirectory)/src_tables$(ObjectSuffix): ../src/tables.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/tables.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_tables$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_tables$(PreprocessSuffix): ../src/tables.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_tables$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/tables.c"

$(IntermediateDirectory)/src_vdb$(ObjectSuffix): ../src/vdb.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/vdb.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_vdb$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_vdb$(PreprocessSuffix): ../src/vdb.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_vdb$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/vdb.c"

$(IntermediateDirectory)/src_version$(ObjectSuffix): ../src/version.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/version.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_version$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_version$(PreprocessSuffix): ../src/version.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_version$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/version.c"

$(IntermediateDirectory)/src_winapi$(ObjectSuffix): ../src/winapi.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/winapi.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_winapi$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_winapi$(PreprocessSuffix): ../src/winapi.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_winapi$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/winapi.c"

$(IntermediateDirectory)/src_opengl$(ObjectSuffix): ../src/opengl.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/opengl.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_opengl$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_opengl$(PreprocessSuffix): ../src/opengl.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_opengl$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/opengl.c"

$(IntermediateDirectory)/Input_JoystickInput$(ObjectSuffix): ../src/Input/JoystickInput.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/Input/JoystickInput.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Input_JoystickInput$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Input_JoystickInput$(PreprocessSuffix): ../src/Input/JoystickInput.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Input_JoystickInput$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/Input/JoystickInput.c"

$(IntermediateDirectory)/Input_MenuInput$(ObjectSuffix): ../src/Input/MenuInput.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/Input/MenuInput.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Input_MenuInput$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Input_MenuInput$(PreprocessSuffix): ../src/Input/MenuInput.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Input_MenuInput$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/Input/MenuInput.c"

$(IntermediateDirectory)/Input_usr_io$(ObjectSuffix): ../src/Input/usr_io.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/Input/usr_io.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Input_usr_io$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Input_usr_io$(PreprocessSuffix): ../src/Input/usr_io.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Input_usr_io$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/Input/usr_io.c"

$(IntermediateDirectory)/avp_ai_sight$(ObjectSuffix): ../src/avp/ai_sight.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/ai_sight.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_ai_sight$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_ai_sight$(PreprocessSuffix): ../src/avp/ai_sight.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_ai_sight$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/ai_sight.c"

$(IntermediateDirectory)/avp_avpview$(ObjectSuffix): ../src/avp/avpview.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/avpview.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_avpview$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_avpview$(PreprocessSuffix): ../src/avp/avpview.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_avpview$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/avpview.c"

$(IntermediateDirectory)/avp_bh_agun$(ObjectSuffix): ../src/avp/bh_agun.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/bh_agun.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_bh_agun$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_bh_agun$(PreprocessSuffix): ../src/avp/bh_agun.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_bh_agun$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/bh_agun.c"

$(IntermediateDirectory)/avp_bh_ais$(ObjectSuffix): ../src/avp/bh_ais.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/bh_ais.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_bh_ais$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_bh_ais$(PreprocessSuffix): ../src/avp/bh_ais.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_bh_ais$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/bh_ais.c"

$(IntermediateDirectory)/avp_bh_alien$(ObjectSuffix): ../src/avp/bh_alien.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/bh_alien.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_bh_alien$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_bh_alien$(PreprocessSuffix): ../src/avp/bh_alien.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_bh_alien$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/bh_alien.c"

$(IntermediateDirectory)/avp_bh_binsw$(ObjectSuffix): ../src/avp/bh_binsw.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/bh_binsw.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_bh_binsw$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_bh_binsw$(PreprocessSuffix): ../src/avp/bh_binsw.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_bh_binsw$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/bh_binsw.c"

$(IntermediateDirectory)/avp_bh_cable$(ObjectSuffix): ../src/avp/bh_cable.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/bh_cable.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_bh_cable$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_bh_cable$(PreprocessSuffix): ../src/avp/bh_cable.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_bh_cable$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/bh_cable.c"

$(IntermediateDirectory)/avp_bh_corpse$(ObjectSuffix): ../src/avp/bh_corpse.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/bh_corpse.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_bh_corpse$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_bh_corpse$(PreprocessSuffix): ../src/avp/bh_corpse.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_bh_corpse$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/bh_corpse.c"

$(IntermediateDirectory)/avp_bh_deathvol$(ObjectSuffix): ../src/avp/bh_deathvol.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/bh_deathvol.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_bh_deathvol$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_bh_deathvol$(PreprocessSuffix): ../src/avp/bh_deathvol.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_bh_deathvol$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/bh_deathvol.c"

$(IntermediateDirectory)/avp_bh_debri$(ObjectSuffix): ../src/avp/bh_debri.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/bh_debri.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_bh_debri$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_bh_debri$(PreprocessSuffix): ../src/avp/bh_debri.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_bh_debri$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/bh_debri.c"

$(IntermediateDirectory)/avp_bh_dummy$(ObjectSuffix): ../src/avp/bh_dummy.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/bh_dummy.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_bh_dummy$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_bh_dummy$(PreprocessSuffix): ../src/avp/bh_dummy.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_bh_dummy$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/bh_dummy.c"

$(IntermediateDirectory)/avp_bh_fan$(ObjectSuffix): ../src/avp/bh_fan.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/bh_fan.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_bh_fan$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_bh_fan$(PreprocessSuffix): ../src/avp/bh_fan.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_bh_fan$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/bh_fan.c"

$(IntermediateDirectory)/avp_bh_far$(ObjectSuffix): ../src/avp/bh_far.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/bh_far.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_bh_far$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_bh_far$(PreprocessSuffix): ../src/avp/bh_far.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_bh_far$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/bh_far.c"

$(IntermediateDirectory)/avp_bh_fhug$(ObjectSuffix): ../src/avp/bh_fhug.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/bh_fhug.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_bh_fhug$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_bh_fhug$(PreprocessSuffix): ../src/avp/bh_fhug.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_bh_fhug$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/bh_fhug.c"

$(IntermediateDirectory)/avp_bh_gener$(ObjectSuffix): ../src/avp/bh_gener.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/bh_gener.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_bh_gener$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_bh_gener$(PreprocessSuffix): ../src/avp/bh_gener.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_bh_gener$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/bh_gener.c"

$(IntermediateDirectory)/avp_bh_ldoor$(ObjectSuffix): ../src/avp/bh_ldoor.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/bh_ldoor.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_bh_ldoor$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_bh_ldoor$(PreprocessSuffix): ../src/avp/bh_ldoor.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_bh_ldoor$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/bh_ldoor.c"

$(IntermediateDirectory)/avp_bh_lift$(ObjectSuffix): ../src/avp/bh_lift.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/bh_lift.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_bh_lift$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_bh_lift$(PreprocessSuffix): ../src/avp/bh_lift.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_bh_lift$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/bh_lift.c"

$(IntermediateDirectory)/avp_bh_light$(ObjectSuffix): ../src/avp/bh_light.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/bh_light.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_bh_light$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_bh_light$(PreprocessSuffix): ../src/avp/bh_light.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_bh_light$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/bh_light.c"

$(IntermediateDirectory)/avp_bh_lnksw$(ObjectSuffix): ../src/avp/bh_lnksw.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/bh_lnksw.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_bh_lnksw$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_bh_lnksw$(PreprocessSuffix): ../src/avp/bh_lnksw.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_bh_lnksw$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/bh_lnksw.c"

$(IntermediateDirectory)/avp_bh_ltfx$(ObjectSuffix): ../src/avp/bh_ltfx.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/bh_ltfx.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_bh_ltfx$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_bh_ltfx$(PreprocessSuffix): ../src/avp/bh_ltfx.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_bh_ltfx$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/bh_ltfx.c"

$(IntermediateDirectory)/avp_bh_marin$(ObjectSuffix): ../src/avp/bh_marin.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/bh_marin.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_bh_marin$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_bh_marin$(PreprocessSuffix): ../src/avp/bh_marin.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_bh_marin$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/bh_marin.c"

$(IntermediateDirectory)/avp_bh_mission$(ObjectSuffix): ../src/avp/bh_mission.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/bh_mission.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_bh_mission$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_bh_mission$(PreprocessSuffix): ../src/avp/bh_mission.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_bh_mission$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/bh_mission.c"

$(IntermediateDirectory)/avp_bh_near$(ObjectSuffix): ../src/avp/bh_near.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/bh_near.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_bh_near$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_bh_near$(PreprocessSuffix): ../src/avp/bh_near.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_bh_near$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/bh_near.c"

$(IntermediateDirectory)/avp_bh_pargen$(ObjectSuffix): ../src/avp/bh_pargen.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/bh_pargen.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_bh_pargen$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_bh_pargen$(PreprocessSuffix): ../src/avp/bh_pargen.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_bh_pargen$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/bh_pargen.c"

$(IntermediateDirectory)/avp_bh_plachier$(ObjectSuffix): ../src/avp/bh_plachier.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/bh_plachier.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_bh_plachier$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_bh_plachier$(PreprocessSuffix): ../src/avp/bh_plachier.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_bh_plachier$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/bh_plachier.c"

$(IntermediateDirectory)/avp_bh_plift$(ObjectSuffix): ../src/avp/bh_plift.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/bh_plift.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_bh_plift$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_bh_plift$(PreprocessSuffix): ../src/avp/bh_plift.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_bh_plift$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/bh_plift.c"

$(IntermediateDirectory)/avp_bh_pred$(ObjectSuffix): ../src/avp/bh_pred.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/bh_pred.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_bh_pred$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_bh_pred$(PreprocessSuffix): ../src/avp/bh_pred.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_bh_pred$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/bh_pred.c"

$(IntermediateDirectory)/avp_bh_queen$(ObjectSuffix): ../src/avp/bh_queen.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/bh_queen.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_bh_queen$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_bh_queen$(PreprocessSuffix): ../src/avp/bh_queen.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_bh_queen$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/bh_queen.c"

$(IntermediateDirectory)/avp_bh_rubberduck$(ObjectSuffix): ../src/avp/bh_rubberduck.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/bh_rubberduck.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_bh_rubberduck$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_bh_rubberduck$(PreprocessSuffix): ../src/avp/bh_rubberduck.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_bh_rubberduck$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/bh_rubberduck.c"

$(IntermediateDirectory)/avp_bh_selfdest$(ObjectSuffix): ../src/avp/bh_selfdest.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/bh_selfdest.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_bh_selfdest$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_bh_selfdest$(PreprocessSuffix): ../src/avp/bh_selfdest.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_bh_selfdest$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/bh_selfdest.c"

$(IntermediateDirectory)/avp_bh_snds$(ObjectSuffix): ../src/avp/bh_snds.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/bh_snds.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_bh_snds$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_bh_snds$(PreprocessSuffix): ../src/avp/bh_snds.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_bh_snds$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/bh_snds.c"

$(IntermediateDirectory)/avp_bh_spcl$(ObjectSuffix): ../src/avp/bh_spcl.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/bh_spcl.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_bh_spcl$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_bh_spcl$(PreprocessSuffix): ../src/avp/bh_spcl.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_bh_spcl$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/bh_spcl.c"

$(IntermediateDirectory)/avp_bh_swdor$(ObjectSuffix): ../src/avp/bh_swdor.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/bh_swdor.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_bh_swdor$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_bh_swdor$(PreprocessSuffix): ../src/avp/bh_swdor.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_bh_swdor$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/bh_swdor.c"

$(IntermediateDirectory)/avp_bh_track$(ObjectSuffix): ../src/avp/bh_track.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/bh_track.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_bh_track$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_bh_track$(PreprocessSuffix): ../src/avp/bh_track.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_bh_track$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/bh_track.c"

$(IntermediateDirectory)/avp_bh_types$(ObjectSuffix): ../src/avp/bh_types.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/bh_types.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_bh_types$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_bh_types$(PreprocessSuffix): ../src/avp/bh_types.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_bh_types$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/bh_types.c"

$(IntermediateDirectory)/avp_bh_videoscreen$(ObjectSuffix): ../src/avp/bh_videoscreen.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/bh_videoscreen.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_bh_videoscreen$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_bh_videoscreen$(PreprocessSuffix): ../src/avp/bh_videoscreen.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_bh_videoscreen$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/bh_videoscreen.c"

$(IntermediateDirectory)/avp_bh_waypt$(ObjectSuffix): ../src/avp/bh_waypt.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/bh_waypt.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_bh_waypt$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_bh_waypt$(PreprocessSuffix): ../src/avp/bh_waypt.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_bh_waypt$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/bh_waypt.c"

$(IntermediateDirectory)/avp_bh_weap$(ObjectSuffix): ../src/avp/bh_weap.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/bh_weap.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_bh_weap$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_bh_weap$(PreprocessSuffix): ../src/avp/bh_weap.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_bh_weap$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/bh_weap.c"

$(IntermediateDirectory)/avp_bh_xeno$(ObjectSuffix): ../src/avp/bh_xeno.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/bh_xeno.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_bh_xeno$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_bh_xeno$(PreprocessSuffix): ../src/avp/bh_xeno.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_bh_xeno$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/bh_xeno.c"

$(IntermediateDirectory)/avp_bonusabilities$(ObjectSuffix): ../src/avp/bonusabilities.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/bonusabilities.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_bonusabilities$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_bonusabilities$(PreprocessSuffix): ../src/avp/bonusabilities.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_bonusabilities$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/bonusabilities.c"

$(IntermediateDirectory)/avp_cconvars$(ObjectSuffix): ../src/avp/cconvars.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/cconvars.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_cconvars$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_cconvars$(PreprocessSuffix): ../src/avp/cconvars.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_cconvars$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/cconvars.cpp"

$(IntermediateDirectory)/avp_cdtrackselection$(ObjectSuffix): ../src/avp/cdtrackselection.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/cdtrackselection.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_cdtrackselection$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_cdtrackselection$(PreprocessSuffix): ../src/avp/cdtrackselection.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_cdtrackselection$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/cdtrackselection.cpp"

$(IntermediateDirectory)/avp_cheatmodes$(ObjectSuffix): ../src/avp/cheatmodes.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/cheatmodes.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_cheatmodes$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_cheatmodes$(PreprocessSuffix): ../src/avp/cheatmodes.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_cheatmodes$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/cheatmodes.c"

$(IntermediateDirectory)/avp_comp_map$(ObjectSuffix): ../src/avp/comp_map.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/comp_map.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_comp_map$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_comp_map$(PreprocessSuffix): ../src/avp/comp_map.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_comp_map$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/comp_map.c"

$(IntermediateDirectory)/avp_comp_shp$(ObjectSuffix): ../src/avp/comp_shp.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/comp_shp.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_comp_shp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_comp_shp$(PreprocessSuffix): ../src/avp/comp_shp.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_comp_shp$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/comp_shp.c"

$(IntermediateDirectory)/avp_consolelog$(ObjectSuffix): ../src/avp/consolelog.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/consolelog.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_consolelog$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_consolelog$(PreprocessSuffix): ../src/avp/consolelog.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_consolelog$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/consolelog.cpp"

$(IntermediateDirectory)/avp_davehook$(ObjectSuffix): ../src/avp/davehook.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/davehook.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_davehook$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_davehook$(PreprocessSuffix): ../src/avp/davehook.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_davehook$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/davehook.cpp"

$(IntermediateDirectory)/avp_deaths$(ObjectSuffix): ../src/avp/deaths.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/deaths.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_deaths$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_deaths$(PreprocessSuffix): ../src/avp/deaths.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_deaths$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/deaths.c"

$(IntermediateDirectory)/avp_decal$(ObjectSuffix): ../src/avp/decal.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/decal.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_decal$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_decal$(PreprocessSuffix): ../src/avp/decal.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_decal$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/decal.c"

$(IntermediateDirectory)/avp_detaillevels$(ObjectSuffix): ../src/avp/detaillevels.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/detaillevels.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_detaillevels$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_detaillevels$(PreprocessSuffix): ../src/avp/detaillevels.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_detaillevels$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/detaillevels.c"

$(IntermediateDirectory)/avp_dynamics$(ObjectSuffix): ../src/avp/dynamics.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/dynamics.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_dynamics$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_dynamics$(PreprocessSuffix): ../src/avp/dynamics.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_dynamics$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/dynamics.c"

$(IntermediateDirectory)/avp_dynblock$(ObjectSuffix): ../src/avp/dynblock.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/dynblock.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_dynblock$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_dynblock$(PreprocessSuffix): ../src/avp/dynblock.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_dynblock$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/dynblock.c"

$(IntermediateDirectory)/avp_equipmnt$(ObjectSuffix): ../src/avp/equipmnt.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/equipmnt.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_equipmnt$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_equipmnt$(PreprocessSuffix): ../src/avp/equipmnt.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_equipmnt$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/equipmnt.c"

$(IntermediateDirectory)/avp_extents$(ObjectSuffix): ../src/avp/extents.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/extents.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_extents$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_extents$(PreprocessSuffix): ../src/avp/extents.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_extents$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/extents.c"

$(IntermediateDirectory)/avp_game$(ObjectSuffix): ../src/avp/game.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/game.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_game$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_game$(PreprocessSuffix): ../src/avp/game.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_game$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/game.c"

$(IntermediateDirectory)/avp_gamecmds$(ObjectSuffix): ../src/avp/gamecmds.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/gamecmds.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_gamecmds$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_gamecmds$(PreprocessSuffix): ../src/avp/gamecmds.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_gamecmds$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/gamecmds.cpp"

$(IntermediateDirectory)/avp_game_statistics$(ObjectSuffix): ../src/avp/game_statistics.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/game_statistics.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_game_statistics$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_game_statistics$(PreprocessSuffix): ../src/avp/game_statistics.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_game_statistics$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/game_statistics.c"

$(IntermediateDirectory)/avp_gamevars$(ObjectSuffix): ../src/avp/gamevars.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/gamevars.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_gamevars$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_gamevars$(PreprocessSuffix): ../src/avp/gamevars.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_gamevars$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/gamevars.cpp"

$(IntermediateDirectory)/avp_hmodel$(ObjectSuffix): ../src/avp/hmodel.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/hmodel.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_hmodel$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_hmodel$(PreprocessSuffix): ../src/avp/hmodel.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_hmodel$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/hmodel.c"

$(IntermediateDirectory)/avp_hud$(ObjectSuffix): ../src/avp/hud.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/hud.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_hud$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_hud$(PreprocessSuffix): ../src/avp/hud.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_hud$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/hud.c"

$(IntermediateDirectory)/avp_inventry$(ObjectSuffix): ../src/avp/inventry.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/inventry.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_inventry$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_inventry$(PreprocessSuffix): ../src/avp/inventry.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_inventry$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/inventry.c"

$(IntermediateDirectory)/avp_language$(ObjectSuffix): ../src/avp/language.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/language.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_language$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_language$(PreprocessSuffix): ../src/avp/language.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_language$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/language.c"

$(IntermediateDirectory)/avp_lighting$(ObjectSuffix): ../src/avp/lighting.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/lighting.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_lighting$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_lighting$(PreprocessSuffix): ../src/avp/lighting.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_lighting$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/lighting.c"

$(IntermediateDirectory)/avp_load_shp$(ObjectSuffix): ../src/avp/load_shp.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/load_shp.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_load_shp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_load_shp$(PreprocessSuffix): ../src/avp/load_shp.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_load_shp$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/load_shp.c"

$(IntermediateDirectory)/avp_los$(ObjectSuffix): ../src/avp/los.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/los.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_los$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_los$(PreprocessSuffix): ../src/avp/los.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_los$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/los.c"

$(IntermediateDirectory)/avp_mempool$(ObjectSuffix): ../src/avp/mempool.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/mempool.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_mempool$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_mempool$(PreprocessSuffix): ../src/avp/mempool.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_mempool$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/mempool.c"

$(IntermediateDirectory)/avp_messagehistory$(ObjectSuffix): ../src/avp/messagehistory.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/messagehistory.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_messagehistory$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_messagehistory$(PreprocessSuffix): ../src/avp/messagehistory.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_messagehistory$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/messagehistory.c"

$(IntermediateDirectory)/avp_missions$(ObjectSuffix): ../src/avp/missions.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/missions.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_missions$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_missions$(PreprocessSuffix): ../src/avp/missions.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_missions$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/missions.cpp"

$(IntermediateDirectory)/avp_movement$(ObjectSuffix): ../src/avp/movement.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/movement.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_movement$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_movement$(PreprocessSuffix): ../src/avp/movement.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_movement$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/movement.c"

$(IntermediateDirectory)/avp_paintball$(ObjectSuffix): ../src/avp/paintball.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/paintball.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_paintball$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_paintball$(PreprocessSuffix): ../src/avp/paintball.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_paintball$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/paintball.c"

$(IntermediateDirectory)/avp_particle$(ObjectSuffix): ../src/avp/particle.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/particle.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_particle$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_particle$(PreprocessSuffix): ../src/avp/particle.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_particle$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/particle.c"

$(IntermediateDirectory)/avp_pfarlocs$(ObjectSuffix): ../src/avp/pfarlocs.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/pfarlocs.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_pfarlocs$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_pfarlocs$(PreprocessSuffix): ../src/avp/pfarlocs.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_pfarlocs$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/pfarlocs.c"

$(IntermediateDirectory)/avp_pheromon$(ObjectSuffix): ../src/avp/pheromon.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/pheromon.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_pheromon$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_pheromon$(PreprocessSuffix): ../src/avp/pheromon.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_pheromon$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/pheromon.c"

$(IntermediateDirectory)/avp_player$(ObjectSuffix): ../src/avp/player.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/player.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_player$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_player$(PreprocessSuffix): ../src/avp/player.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_player$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/player.c"

$(IntermediateDirectory)/avp_pmove$(ObjectSuffix): ../src/avp/pmove.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/pmove.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_pmove$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_pmove$(PreprocessSuffix): ../src/avp/pmove.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_pmove$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/pmove.c"

$(IntermediateDirectory)/avp_psnd$(ObjectSuffix): ../src/avp/psnd.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/psnd.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_psnd$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_psnd$(PreprocessSuffix): ../src/avp/psnd.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_psnd$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/psnd.c"

$(IntermediateDirectory)/avp_psndproj$(ObjectSuffix): ../src/avp/psndproj.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/psndproj.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_psndproj$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_psndproj$(PreprocessSuffix): ../src/avp/psndproj.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_psndproj$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/psndproj.c"

$(IntermediateDirectory)/avp_pvisible$(ObjectSuffix): ../src/avp/pvisible.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/pvisible.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_pvisible$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_pvisible$(PreprocessSuffix): ../src/avp/pvisible.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_pvisible$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/pvisible.c"

$(IntermediateDirectory)/avp_savegame$(ObjectSuffix): ../src/avp/savegame.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/savegame.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_savegame$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_savegame$(PreprocessSuffix): ../src/avp/savegame.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_savegame$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/savegame.c"

$(IntermediateDirectory)/avp_scream$(ObjectSuffix): ../src/avp/scream.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/scream.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_scream$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_scream$(PreprocessSuffix): ../src/avp/scream.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_scream$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/scream.cpp"

$(IntermediateDirectory)/avp_secstats$(ObjectSuffix): ../src/avp/secstats.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/secstats.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_secstats$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_secstats$(PreprocessSuffix): ../src/avp/secstats.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_secstats$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/secstats.c"

$(IntermediateDirectory)/avp_sfx$(ObjectSuffix): ../src/avp/sfx.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/sfx.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_sfx$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_sfx$(PreprocessSuffix): ../src/avp/sfx.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_sfx$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/sfx.c"

$(IntermediateDirectory)/avp_stratdef$(ObjectSuffix): ../src/avp/stratdef.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/stratdef.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_stratdef$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_stratdef$(PreprocessSuffix): ../src/avp/stratdef.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_stratdef$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/stratdef.c"

$(IntermediateDirectory)/avp_targeting$(ObjectSuffix): ../src/avp/targeting.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/targeting.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_targeting$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_targeting$(PreprocessSuffix): ../src/avp/targeting.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_targeting$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/targeting.c"

$(IntermediateDirectory)/avp_track$(ObjectSuffix): ../src/avp/track.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/track.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_track$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_track$(PreprocessSuffix): ../src/avp/track.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_track$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/track.c"

$(IntermediateDirectory)/avp_triggers$(ObjectSuffix): ../src/avp/triggers.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/triggers.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_triggers$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_triggers$(PreprocessSuffix): ../src/avp/triggers.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_triggers$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/triggers.c"

$(IntermediateDirectory)/avp_weapons$(ObjectSuffix): ../src/avp/weapons.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/weapons.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/avp_weapons$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/avp_weapons$(PreprocessSuffix): ../src/avp/weapons.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/avp_weapons$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/weapons.c"

$(IntermediateDirectory)/win95_avpchunk$(ObjectSuffix): ../src/avp/win95/avpchunk.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/win95/avpchunk.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_avpchunk$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_avpchunk$(PreprocessSuffix): ../src/avp/win95/avpchunk.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_avpchunk$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/win95/avpchunk.cpp"

$(IntermediateDirectory)/win95_cheat$(ObjectSuffix): ../src/avp/win95/cheat.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/win95/cheat.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_cheat$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_cheat$(PreprocessSuffix): ../src/avp/win95/cheat.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_cheat$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/win95/cheat.c"

$(IntermediateDirectory)/win95_chtcodes$(ObjectSuffix): ../src/avp/win95/chtcodes.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/win95/chtcodes.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_chtcodes$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_chtcodes$(PreprocessSuffix): ../src/avp/win95/chtcodes.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_chtcodes$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/win95/chtcodes.cpp"

$(IntermediateDirectory)/win95_d3d_hud$(ObjectSuffix): ../src/avp/win95/d3d_hud.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/win95/d3d_hud.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_d3d_hud$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_d3d_hud$(PreprocessSuffix): ../src/avp/win95/d3d_hud.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_d3d_hud$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/win95/d3d_hud.cpp"

$(IntermediateDirectory)/win95_ddplat$(ObjectSuffix): ../src/avp/win95/ddplat.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/win95/ddplat.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_ddplat$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_ddplat$(PreprocessSuffix): ../src/avp/win95/ddplat.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_ddplat$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/win95/ddplat.cpp"

$(IntermediateDirectory)/win95_endianio$(ObjectSuffix): ../src/avp/win95/endianio.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/win95/endianio.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_endianio$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_endianio$(PreprocessSuffix): ../src/avp/win95/endianio.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_endianio$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/win95/endianio.c"

$(IntermediateDirectory)/win95_ffread$(ObjectSuffix): ../src/avp/win95/ffread.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/win95/ffread.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_ffread$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_ffread$(PreprocessSuffix): ../src/avp/win95/ffread.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_ffread$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/win95/ffread.cpp"

$(IntermediateDirectory)/win95_ffstdio$(ObjectSuffix): ../src/avp/win95/ffstdio.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/win95/ffstdio.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_ffstdio$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_ffstdio$(PreprocessSuffix): ../src/avp/win95/ffstdio.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_ffstdio$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/win95/ffstdio.cpp"

$(IntermediateDirectory)/win95_gammacontrol$(ObjectSuffix): ../src/avp/win95/gammacontrol.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/win95/gammacontrol.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_gammacontrol$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_gammacontrol$(PreprocessSuffix): ../src/avp/win95/gammacontrol.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_gammacontrol$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/win95/gammacontrol.cpp"

$(IntermediateDirectory)/win95_hierplace$(ObjectSuffix): ../src/avp/win95/hierplace.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/win95/hierplace.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_hierplace$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_hierplace$(PreprocessSuffix): ../src/avp/win95/hierplace.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_hierplace$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/win95/hierplace.cpp"

$(IntermediateDirectory)/win95_iofocus$(ObjectSuffix): ../src/avp/win95/iofocus.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/win95/iofocus.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_iofocus$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_iofocus$(PreprocessSuffix): ../src/avp/win95/iofocus.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_iofocus$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/win95/iofocus.cpp"

$(IntermediateDirectory)/win95_jsndsup$(ObjectSuffix): ../src/avp/win95/jsndsup.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/win95/jsndsup.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_jsndsup$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_jsndsup$(PreprocessSuffix): ../src/avp/win95/jsndsup.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_jsndsup$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/win95/jsndsup.cpp"

$(IntermediateDirectory)/win95_kzsort$(ObjectSuffix): ../src/avp/win95/kzsort.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/win95/kzsort.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_kzsort$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_kzsort$(PreprocessSuffix): ../src/avp/win95/kzsort.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_kzsort$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/win95/kzsort.c"

$(IntermediateDirectory)/win95_langplat$(ObjectSuffix): ../src/avp/win95/langplat.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/win95/langplat.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_langplat$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_langplat$(PreprocessSuffix): ../src/avp/win95/langplat.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_langplat$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/win95/langplat.c"

$(IntermediateDirectory)/win95_modcmds$(ObjectSuffix): ../src/avp/win95/modcmds.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/win95/modcmds.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_modcmds$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_modcmds$(PreprocessSuffix): ../src/avp/win95/modcmds.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_modcmds$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/win95/modcmds.cpp"

$(IntermediateDirectory)/win95_npcsetup$(ObjectSuffix): ../src/avp/win95/npcsetup.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/win95/npcsetup.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_npcsetup$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_npcsetup$(PreprocessSuffix): ../src/avp/win95/npcsetup.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_npcsetup$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/win95/npcsetup.cpp"

$(IntermediateDirectory)/win95_objsetup$(ObjectSuffix): ../src/avp/win95/objsetup.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/win95/objsetup.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_objsetup$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_objsetup$(PreprocessSuffix): ../src/avp/win95/objsetup.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_objsetup$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/win95/objsetup.cpp"

$(IntermediateDirectory)/win95_pathchnk$(ObjectSuffix): ../src/avp/win95/pathchnk.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/win95/pathchnk.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_pathchnk$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_pathchnk$(PreprocessSuffix): ../src/avp/win95/pathchnk.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_pathchnk$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/win95/pathchnk.cpp"

$(IntermediateDirectory)/win95_platsup$(ObjectSuffix): ../src/avp/win95/platsup.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/win95/platsup.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_platsup$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_platsup$(PreprocessSuffix): ../src/avp/win95/platsup.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_platsup$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/win95/platsup.c"

$(IntermediateDirectory)/win95_pldghost$(ObjectSuffix): ../src/avp/win95/pldghost.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/win95/pldghost.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_pldghost$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_pldghost$(PreprocessSuffix): ../src/avp/win95/pldghost.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_pldghost$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/win95/pldghost.c"

$(IntermediateDirectory)/win95_pldnet$(ObjectSuffix): ../src/avp/win95/pldnet.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/win95/pldnet.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_pldnet$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_pldnet$(PreprocessSuffix): ../src/avp/win95/pldnet.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_pldnet$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/win95/pldnet.c"

$(IntermediateDirectory)/win95_projload$(ObjectSuffix): ../src/avp/win95/projload.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/win95/projload.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_projload$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_projload$(PreprocessSuffix): ../src/avp/win95/projload.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_projload$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/win95/projload.cpp"

$(IntermediateDirectory)/win95_scrshot$(ObjectSuffix): ../src/avp/win95/scrshot.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/win95/scrshot.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_scrshot$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_scrshot$(PreprocessSuffix): ../src/avp/win95/scrshot.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_scrshot$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/win95/scrshot.cpp"

$(IntermediateDirectory)/win95_strachnk$(ObjectSuffix): ../src/avp/win95/strachnk.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/win95/strachnk.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_strachnk$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_strachnk$(PreprocessSuffix): ../src/avp/win95/strachnk.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_strachnk$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/win95/strachnk.cpp"

$(IntermediateDirectory)/win95_system$(ObjectSuffix): ../src/avp/win95/system.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/win95/system.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_system$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_system$(PreprocessSuffix): ../src/avp/win95/system.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_system$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/win95/system.c"

$(IntermediateDirectory)/win95_vision$(ObjectSuffix): ../src/avp/win95/vision.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/win95/vision.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_vision$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_vision$(PreprocessSuffix): ../src/avp/win95/vision.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_vision$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/win95/vision.c"

$(IntermediateDirectory)/frontend_avp_envinfo$(ObjectSuffix): ../src/avp/win95/frontend/avp_envinfo.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/win95/frontend/avp_envinfo.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/frontend_avp_envinfo$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/frontend_avp_envinfo$(PreprocessSuffix): ../src/avp/win95/frontend/avp_envinfo.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/frontend_avp_envinfo$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/win95/frontend/avp_envinfo.c"

$(IntermediateDirectory)/frontend_avp_intro$(ObjectSuffix): ../src/avp/win95/frontend/avp_intro.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/win95/frontend/avp_intro.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/frontend_avp_intro$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/frontend_avp_intro$(PreprocessSuffix): ../src/avp/win95/frontend/avp_intro.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/frontend_avp_intro$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/win95/frontend/avp_intro.cpp"

$(IntermediateDirectory)/frontend_avp_menudata$(ObjectSuffix): ../src/avp/win95/frontend/avp_menudata.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/win95/frontend/avp_menudata.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/frontend_avp_menudata$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/frontend_avp_menudata$(PreprocessSuffix): ../src/avp/win95/frontend/avp_menudata.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/frontend_avp_menudata$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/win95/frontend/avp_menudata.c"

$(IntermediateDirectory)/frontend_avp_menus$(ObjectSuffix): ../src/avp/win95/frontend/avp_menus.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/win95/frontend/avp_menus.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/frontend_avp_menus$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/frontend_avp_menus$(PreprocessSuffix): ../src/avp/win95/frontend/avp_menus.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/frontend_avp_menus$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/win95/frontend/avp_menus.c"

$(IntermediateDirectory)/frontend_avp_mp_config$(ObjectSuffix): ../src/avp/win95/frontend/avp_mp_config.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/win95/frontend/avp_mp_config.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/frontend_avp_mp_config$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/frontend_avp_mp_config$(PreprocessSuffix): ../src/avp/win95/frontend/avp_mp_config.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/frontend_avp_mp_config$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/win95/frontend/avp_mp_config.cpp"

$(IntermediateDirectory)/frontend_avp_userprofile$(ObjectSuffix): ../src/avp/win95/frontend/avp_userprofile.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/win95/frontend/avp_userprofile.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/frontend_avp_userprofile$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/frontend_avp_userprofile$(PreprocessSuffix): ../src/avp/win95/frontend/avp_userprofile.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/frontend_avp_userprofile$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/win95/frontend/avp_userprofile.cpp"

$(IntermediateDirectory)/gadgets_ahudgadg$(ObjectSuffix): ../src/avp/win95/gadgets/ahudgadg.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/win95/gadgets/ahudgadg.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/gadgets_ahudgadg$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/gadgets_ahudgadg$(PreprocessSuffix): ../src/avp/win95/gadgets/ahudgadg.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/gadgets_ahudgadg$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/win95/gadgets/ahudgadg.cpp"

$(IntermediateDirectory)/gadgets_conscmnd$(ObjectSuffix): ../src/avp/win95/gadgets/conscmnd.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/win95/gadgets/conscmnd.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/gadgets_conscmnd$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/gadgets_conscmnd$(PreprocessSuffix): ../src/avp/win95/gadgets/conscmnd.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/gadgets_conscmnd$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/win95/gadgets/conscmnd.cpp"

$(IntermediateDirectory)/gadgets_conssym$(ObjectSuffix): ../src/avp/win95/gadgets/conssym.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/win95/gadgets/conssym.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/gadgets_conssym$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/gadgets_conssym$(PreprocessSuffix): ../src/avp/win95/gadgets/conssym.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/gadgets_conssym$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/win95/gadgets/conssym.cpp"

$(IntermediateDirectory)/gadgets_consvar$(ObjectSuffix): ../src/avp/win95/gadgets/consvar.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/win95/gadgets/consvar.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/gadgets_consvar$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/gadgets_consvar$(PreprocessSuffix): ../src/avp/win95/gadgets/consvar.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/gadgets_consvar$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/win95/gadgets/consvar.cpp"

$(IntermediateDirectory)/gadgets_gadget$(ObjectSuffix): ../src/avp/win95/gadgets/gadget.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/win95/gadgets/gadget.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/gadgets_gadget$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/gadgets_gadget$(PreprocessSuffix): ../src/avp/win95/gadgets/gadget.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/gadgets_gadget$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/win95/gadgets/gadget.cpp"

$(IntermediateDirectory)/gadgets_hudgadg$(ObjectSuffix): ../src/avp/win95/gadgets/hudgadg.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/win95/gadgets/hudgadg.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/gadgets_hudgadg$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/gadgets_hudgadg$(PreprocessSuffix): ../src/avp/win95/gadgets/hudgadg.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/gadgets_hudgadg$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/win95/gadgets/hudgadg.cpp"

$(IntermediateDirectory)/gadgets_rootgadg$(ObjectSuffix): ../src/avp/win95/gadgets/rootgadg.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/win95/gadgets/rootgadg.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/gadgets_rootgadg$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/gadgets_rootgadg$(PreprocessSuffix): ../src/avp/win95/gadgets/rootgadg.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/gadgets_rootgadg$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/win95/gadgets/rootgadg.cpp"

$(IntermediateDirectory)/gadgets_teletype$(ObjectSuffix): ../src/avp/win95/gadgets/teletype.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/win95/gadgets/teletype.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/gadgets_teletype$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/gadgets_teletype$(PreprocessSuffix): ../src/avp/win95/gadgets/teletype.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/gadgets_teletype$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/win95/gadgets/teletype.cpp"

$(IntermediateDirectory)/gadgets_textexp$(ObjectSuffix): ../src/avp/win95/gadgets/textexp.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/win95/gadgets/textexp.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/gadgets_textexp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/gadgets_textexp$(PreprocessSuffix): ../src/avp/win95/gadgets/textexp.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/gadgets_textexp$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/win95/gadgets/textexp.cpp"

$(IntermediateDirectory)/gadgets_textin$(ObjectSuffix): ../src/avp/win95/gadgets/textin.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/win95/gadgets/textin.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/gadgets_textin$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/gadgets_textin$(PreprocessSuffix): ../src/avp/win95/gadgets/textin.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/gadgets_textin$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/win95/gadgets/textin.cpp"

$(IntermediateDirectory)/gadgets_t_ingadg$(ObjectSuffix): ../src/avp/win95/gadgets/t_ingadg.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/win95/gadgets/t_ingadg.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/gadgets_t_ingadg$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/gadgets_t_ingadg$(PreprocessSuffix): ../src/avp/win95/gadgets/t_ingadg.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/gadgets_t_ingadg$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/win95/gadgets/t_ingadg.cpp"

$(IntermediateDirectory)/gadgets_trepgadg$(ObjectSuffix): ../src/avp/win95/gadgets/trepgadg.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/win95/gadgets/trepgadg.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/gadgets_trepgadg$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/gadgets_trepgadg$(PreprocessSuffix): ../src/avp/win95/gadgets/trepgadg.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/gadgets_trepgadg$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/win95/gadgets/trepgadg.cpp"

$(IntermediateDirectory)/win95_progress_bar$(ObjectSuffix): ../src/avp/win95/progress_bar.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/win95/progress_bar.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_progress_bar$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_progress_bar$(PreprocessSuffix): ../src/avp/win95/progress_bar.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_progress_bar$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/win95/progress_bar.c"

$(IntermediateDirectory)/shapes_cube$(ObjectSuffix): ../src/avp/shapes/cube.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/shapes/cube.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/shapes_cube$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/shapes_cube$(PreprocessSuffix): ../src/avp/shapes/cube.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/shapes_cube$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/shapes/cube.c"

$(IntermediateDirectory)/support_consbind$(ObjectSuffix): ../src/avp/support/consbind.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/support/consbind.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/support_consbind$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/support_consbind$(PreprocessSuffix): ../src/avp/support/consbind.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/support_consbind$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/support/consbind.cpp"

$(IntermediateDirectory)/support_consbtch$(ObjectSuffix): ../src/avp/support/consbtch.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/support/consbtch.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/support_consbtch$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/support_consbtch$(PreprocessSuffix): ../src/avp/support/consbtch.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/support_consbtch$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/support/consbtch.cpp"

$(IntermediateDirectory)/support_coordstr$(ObjectSuffix): ../src/avp/support/coordstr.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/support/coordstr.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/support_coordstr$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/support_coordstr$(PreprocessSuffix): ../src/avp/support/coordstr.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/support_coordstr$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/support/coordstr.cpp"

$(IntermediateDirectory)/support_daemon$(ObjectSuffix): ../src/avp/support/daemon.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/support/daemon.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/support_daemon$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/support_daemon$(PreprocessSuffix): ../src/avp/support/daemon.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/support_daemon$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/support/daemon.cpp"

$(IntermediateDirectory)/support_indexfnt$(ObjectSuffix): ../src/avp/support/indexfnt.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/support/indexfnt.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/support_indexfnt$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/support_indexfnt$(PreprocessSuffix): ../src/avp/support/indexfnt.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/support_indexfnt$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/support/indexfnt.cpp"

$(IntermediateDirectory)/support_r2base$(ObjectSuffix): ../src/avp/support/r2base.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/support/r2base.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/support_r2base$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/support_r2base$(PreprocessSuffix): ../src/avp/support/r2base.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/support_r2base$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/support/r2base.cpp"

$(IntermediateDirectory)/support_r2pos666$(ObjectSuffix): ../src/avp/support/r2pos666.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/support/r2pos666.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/support_r2pos666$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/support_r2pos666$(PreprocessSuffix): ../src/avp/support/r2pos666.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/support_r2pos666$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/support/r2pos666.cpp"

$(IntermediateDirectory)/support_reflist$(ObjectSuffix): ../src/avp/support/reflist.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/support/reflist.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/support_reflist$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/support_reflist$(PreprocessSuffix): ../src/avp/support/reflist.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/support_reflist$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/support/reflist.cpp"

$(IntermediateDirectory)/support_refobj$(ObjectSuffix): ../src/avp/support/refobj.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/support/refobj.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/support_refobj$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/support_refobj$(PreprocessSuffix): ../src/avp/support/refobj.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/support_refobj$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/support/refobj.cpp"

$(IntermediateDirectory)/support_rentrntq$(ObjectSuffix): ../src/avp/support/rentrntq.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/support/rentrntq.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/support_rentrntq$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/support_rentrntq$(PreprocessSuffix): ../src/avp/support/rentrntq.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/support_rentrntq$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/support/rentrntq.cpp"

$(IntermediateDirectory)/support_scstring$(ObjectSuffix): ../src/avp/support/scstring.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/support/scstring.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/support_scstring$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/support_scstring$(PreprocessSuffix): ../src/avp/support/scstring.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/support_scstring$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/support/scstring.cpp"

$(IntermediateDirectory)/support_strtab$(ObjectSuffix): ../src/avp/support/strtab.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/support/strtab.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/support_strtab$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/support_strtab$(PreprocessSuffix): ../src/avp/support/strtab.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/support_strtab$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/support/strtab.cpp"

$(IntermediateDirectory)/support_strutil$(ObjectSuffix): ../src/avp/support/strutil.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/support/strutil.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/support_strutil$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/support_strutil$(PreprocessSuffix): ../src/avp/support/strutil.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/support_strutil$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/support/strutil.c"

$(IntermediateDirectory)/support_trig666$(ObjectSuffix): ../src/avp/support/trig666.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/support/trig666.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/support_trig666$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/support_trig666$(PreprocessSuffix): ../src/avp/support/trig666.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/support_trig666$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/support/trig666.cpp"

$(IntermediateDirectory)/support_wrapstr$(ObjectSuffix): ../src/avp/support/wrapstr.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/avp/support/wrapstr.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/support_wrapstr$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/support_wrapstr$(PreprocessSuffix): ../src/avp/support/wrapstr.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/support_wrapstr$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/avp/support/wrapstr.cpp"

$(IntermediateDirectory)/src_oglfunc$(ObjectSuffix): ../src/oglfunc.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/oglfunc.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_oglfunc$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_oglfunc$(PreprocessSuffix): ../src/oglfunc.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_oglfunc$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/oglfunc.c"

$(IntermediateDirectory)/win95_animchnk$(ObjectSuffix): ../src/win95/animchnk.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/win95/animchnk.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_animchnk$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_animchnk$(PreprocessSuffix): ../src/win95/animchnk.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_animchnk$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/win95/animchnk.cpp"

$(IntermediateDirectory)/win95_animobs$(ObjectSuffix): ../src/win95/animobs.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/win95/animobs.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_animobs$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_animobs$(PreprocessSuffix): ../src/win95/animobs.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_animobs$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/win95/animobs.cpp"

$(IntermediateDirectory)/win95_awbmpld$(ObjectSuffix): ../src/win95/awbmpld.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/win95/awbmpld.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_awbmpld$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_awbmpld$(PreprocessSuffix): ../src/win95/awbmpld.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_awbmpld$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/win95/awbmpld.cpp"

$(IntermediateDirectory)/win95_awiffld$(ObjectSuffix): ../src/win95/awiffld.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/win95/awiffld.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_awiffld$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_awiffld$(PreprocessSuffix): ../src/win95/awiffld.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_awiffld$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/win95/awiffld.cpp"

$(IntermediateDirectory)/win95_awpnmld$(ObjectSuffix): ../src/win95/awpnmld.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/win95/awpnmld.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_awpnmld$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_awpnmld$(PreprocessSuffix): ../src/win95/awpnmld.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_awpnmld$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/win95/awpnmld.cpp"

$(IntermediateDirectory)/win95_awtexld$(ObjectSuffix): ../src/win95/awtexld.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/win95/awtexld.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_awtexld$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_awtexld$(PreprocessSuffix): ../src/win95/awtexld.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_awtexld$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/win95/awtexld.cpp"

$(IntermediateDirectory)/win95_bmpnames$(ObjectSuffix): ../src/win95/bmpnames.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/win95/bmpnames.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_bmpnames$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_bmpnames$(PreprocessSuffix): ../src/win95/bmpnames.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_bmpnames$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/win95/bmpnames.cpp"

$(IntermediateDirectory)/win95_chnkload$(ObjectSuffix): ../src/win95/chnkload.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/win95/chnkload.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_chnkload$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_chnkload$(PreprocessSuffix): ../src/win95/chnkload.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_chnkload$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/win95/chnkload.cpp"

$(IntermediateDirectory)/win95_chnktexi$(ObjectSuffix): ../src/win95/chnktexi.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/win95/chnktexi.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_chnktexi$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_chnktexi$(PreprocessSuffix): ../src/win95/chnktexi.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_chnktexi$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/win95/chnktexi.cpp"

$(IntermediateDirectory)/win95_chnktype$(ObjectSuffix): ../src/win95/chnktype.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/win95/chnktype.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_chnktype$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_chnktype$(PreprocessSuffix): ../src/win95/chnktype.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_chnktype$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/win95/chnktype.cpp"

$(IntermediateDirectory)/win95_chunk$(ObjectSuffix): ../src/win95/chunk.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/win95/chunk.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_chunk$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_chunk$(PreprocessSuffix): ../src/win95/chunk.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_chunk$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/win95/chunk.cpp"

$(IntermediateDirectory)/win95_chunkpal$(ObjectSuffix): ../src/win95/chunkpal.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/win95/chunkpal.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_chunkpal$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_chunkpal$(PreprocessSuffix): ../src/win95/chunkpal.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_chunkpal$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/win95/chunkpal.cpp"

$(IntermediateDirectory)/win95_db$(ObjectSuffix): ../src/win95/db.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/win95/db.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_db$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_db$(PreprocessSuffix): ../src/win95/db.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_db$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/win95/db.c"

$(IntermediateDirectory)/win95_debuglog$(ObjectSuffix): ../src/win95/debuglog.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/win95/debuglog.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_debuglog$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_debuglog$(PreprocessSuffix): ../src/win95/debuglog.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_debuglog$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/win95/debuglog.cpp"

$(IntermediateDirectory)/win95_dummyobjectchunk$(ObjectSuffix): ../src/win95/dummyobjectchunk.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/win95/dummyobjectchunk.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_dummyobjectchunk$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_dummyobjectchunk$(PreprocessSuffix): ../src/win95/dummyobjectchunk.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_dummyobjectchunk$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/win95/dummyobjectchunk.cpp"

$(IntermediateDirectory)/win95_enumchnk$(ObjectSuffix): ../src/win95/enumchnk.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/win95/enumchnk.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_enumchnk$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_enumchnk$(PreprocessSuffix): ../src/win95/enumchnk.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_enumchnk$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/win95/enumchnk.cpp"

$(IntermediateDirectory)/win95_enumsch$(ObjectSuffix): ../src/win95/enumsch.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/win95/enumsch.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_enumsch$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_enumsch$(PreprocessSuffix): ../src/win95/enumsch.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_enumsch$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/win95/enumsch.cpp"

$(IntermediateDirectory)/win95_envchunk$(ObjectSuffix): ../src/win95/envchunk.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/win95/envchunk.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_envchunk$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_envchunk$(PreprocessSuffix): ../src/win95/envchunk.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_envchunk$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/win95/envchunk.cpp"

$(IntermediateDirectory)/win95_fail$(ObjectSuffix): ../src/win95/fail.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/win95/fail.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_fail$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_fail$(PreprocessSuffix): ../src/win95/fail.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_fail$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/win95/fail.c"

$(IntermediateDirectory)/win95_fragchnk$(ObjectSuffix): ../src/win95/fragchnk.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/win95/fragchnk.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_fragchnk$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_fragchnk$(PreprocessSuffix): ../src/win95/fragchnk.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_fragchnk$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/win95/fragchnk.cpp"

$(IntermediateDirectory)/win95_gsprchnk$(ObjectSuffix): ../src/win95/gsprchnk.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/win95/gsprchnk.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_gsprchnk$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_gsprchnk$(PreprocessSuffix): ../src/win95/gsprchnk.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_gsprchnk$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/win95/gsprchnk.cpp"

$(IntermediateDirectory)/win95_hierchnk$(ObjectSuffix): ../src/win95/hierchnk.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/win95/hierchnk.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_hierchnk$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_hierchnk$(PreprocessSuffix): ../src/win95/hierchnk.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_hierchnk$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/win95/hierchnk.cpp"

$(IntermediateDirectory)/win95_huffman$(ObjectSuffix): ../src/win95/huffman.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/win95/huffman.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_huffman$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_huffman$(PreprocessSuffix): ../src/win95/huffman.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_huffman$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/win95/huffman.cpp"

$(IntermediateDirectory)/win95_iff$(ObjectSuffix): ../src/win95/iff.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/win95/iff.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_iff$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_iff$(PreprocessSuffix): ../src/win95/iff.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_iff$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/win95/iff.cpp"

$(IntermediateDirectory)/win95_iff_ilbm$(ObjectSuffix): ../src/win95/iff_ilbm.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/win95/iff_ilbm.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_iff_ilbm$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_iff_ilbm$(PreprocessSuffix): ../src/win95/iff_ilbm.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_iff_ilbm$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/win95/iff_ilbm.cpp"

$(IntermediateDirectory)/win95_ilbm_ext$(ObjectSuffix): ../src/win95/ilbm_ext.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/win95/ilbm_ext.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_ilbm_ext$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_ilbm_ext$(PreprocessSuffix): ../src/win95/ilbm_ext.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_ilbm_ext$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/win95/ilbm_ext.cpp"

$(IntermediateDirectory)/win95_io$(ObjectSuffix): ../src/win95/io.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/win95/io.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_io$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_io$(PreprocessSuffix): ../src/win95/io.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_io$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/win95/io.c"

$(IntermediateDirectory)/win95_list_tem$(ObjectSuffix): ../src/win95/list_tem.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/win95/list_tem.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_list_tem$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_list_tem$(PreprocessSuffix): ../src/win95/list_tem.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_list_tem$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/win95/list_tem.cpp"

$(IntermediateDirectory)/win95_ltchunk$(ObjectSuffix): ../src/win95/ltchunk.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/win95/ltchunk.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_ltchunk$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_ltchunk$(PreprocessSuffix): ../src/win95/ltchunk.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_ltchunk$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/win95/ltchunk.cpp"

$(IntermediateDirectory)/win95_media$(ObjectSuffix): ../src/win95/media.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/win95/media.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_media$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_media$(PreprocessSuffix): ../src/win95/media.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_media$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/win95/media.cpp"

$(IntermediateDirectory)/win95_mishchnk$(ObjectSuffix): ../src/win95/mishchnk.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/win95/mishchnk.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_mishchnk$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_mishchnk$(PreprocessSuffix): ../src/win95/mishchnk.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_mishchnk$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/win95/mishchnk.cpp"

$(IntermediateDirectory)/win95_obchunk$(ObjectSuffix): ../src/win95/obchunk.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/win95/obchunk.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_obchunk$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_obchunk$(PreprocessSuffix): ../src/win95/obchunk.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_obchunk$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/win95/obchunk.cpp"

$(IntermediateDirectory)/win95_oechunk$(ObjectSuffix): ../src/win95/oechunk.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/win95/oechunk.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_oechunk$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_oechunk$(PreprocessSuffix): ../src/win95/oechunk.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_oechunk$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/win95/oechunk.cpp"

$(IntermediateDirectory)/win95_our_mem$(ObjectSuffix): ../src/win95/our_mem.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/win95/our_mem.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_our_mem$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_our_mem$(PreprocessSuffix): ../src/win95/our_mem.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_our_mem$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/win95/our_mem.c"

$(IntermediateDirectory)/win95_plat_shp$(ObjectSuffix): ../src/win95/plat_shp.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/win95/plat_shp.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_plat_shp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_plat_shp$(PreprocessSuffix): ../src/win95/plat_shp.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_plat_shp$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/win95/plat_shp.c"

$(IntermediateDirectory)/win95_plspecfn$(ObjectSuffix): ../src/win95/plspecfn.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/win95/plspecfn.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_plspecfn$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_plspecfn$(PreprocessSuffix): ../src/win95/plspecfn.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_plspecfn$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/win95/plspecfn.c"

$(IntermediateDirectory)/win95_shpchunk$(ObjectSuffix): ../src/win95/shpchunk.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/win95/shpchunk.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_shpchunk$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_shpchunk$(PreprocessSuffix): ../src/win95/shpchunk.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_shpchunk$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/win95/shpchunk.cpp"

$(IntermediateDirectory)/win95_sndchunk$(ObjectSuffix): ../src/win95/sndchunk.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/win95/sndchunk.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_sndchunk$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_sndchunk$(PreprocessSuffix): ../src/win95/sndchunk.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_sndchunk$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/win95/sndchunk.cpp"

$(IntermediateDirectory)/win95_sprchunk$(ObjectSuffix): ../src/win95/sprchunk.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/win95/sprchunk.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_sprchunk$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_sprchunk$(PreprocessSuffix): ../src/win95/sprchunk.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_sprchunk$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/win95/sprchunk.cpp"

$(IntermediateDirectory)/win95_string$(ObjectSuffix): ../src/win95/string.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/win95/string.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_string$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_string$(PreprocessSuffix): ../src/win95/string.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_string$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/win95/string.cpp"

$(IntermediateDirectory)/win95_texio$(ObjectSuffix): ../src/win95/texio.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/win95/texio.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_texio$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_texio$(PreprocessSuffix): ../src/win95/texio.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_texio$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/win95/texio.c"

$(IntermediateDirectory)/win95_toolchnk$(ObjectSuffix): ../src/win95/toolchnk.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/win95/toolchnk.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_toolchnk$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_toolchnk$(PreprocessSuffix): ../src/win95/toolchnk.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_toolchnk$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/win95/toolchnk.cpp"

$(IntermediateDirectory)/win95_txioctrl$(ObjectSuffix): ../src/win95/txioctrl.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/win95/txioctrl.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_txioctrl$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_txioctrl$(PreprocessSuffix): ../src/win95/txioctrl.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_txioctrl$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/win95/txioctrl.cpp"

$(IntermediateDirectory)/win95_wpchunk$(ObjectSuffix): ../src/win95/wpchunk.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/win95/wpchunk.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_wpchunk$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_wpchunk$(PreprocessSuffix): ../src/win95/wpchunk.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_wpchunk$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/win95/wpchunk.cpp"

$(IntermediateDirectory)/win95_zsp$(ObjectSuffix): ../src/win95/zsp.cpp 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/win95/zsp.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/win95_zsp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/win95_zsp$(PreprocessSuffix): ../src/win95/zsp.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/win95_zsp$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/win95/zsp.cpp"

$(IntermediateDirectory)/Video_VideoModes$(ObjectSuffix): ../src/Video/VideoModes.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/Video/VideoModes.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Video_VideoModes$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Video_VideoModes$(PreprocessSuffix): ../src/Video/VideoModes.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Video_VideoModes$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/Video/VideoModes.c"

$(IntermediateDirectory)/Video_OpenGLInit$(ObjectSuffix): ../src/Video/OpenGLInit.c 
	$(CC) $(SourceSwitch) "/media/AE78B81A78B7DF71/avp/src/Video/OpenGLInit.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Video_OpenGLInit$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Video_OpenGLInit$(PreprocessSuffix): ../src/Video/OpenGLInit.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Video_OpenGLInit$(PreprocessSuffix) "/media/AE78B81A78B7DF71/avp/src/Video/OpenGLInit.c"

##
## Clean
##
clean:
	$(RM) $(IntermediateDirectory)/src_cdplayer$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_cdplayer$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_cdplayer$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_files$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_files$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_files$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_fmv$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_fmv$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_fmv$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_frustum$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_frustum$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_frustum$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_kshape$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_kshape$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_kshape$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_main$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_main$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_main$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_map$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_map$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_map$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_mathline$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_mathline$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_mathline$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_maths$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_maths$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_maths$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_md5$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_md5$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_md5$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_mem3dc$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_mem3dc$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_mem3dc$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_mem3dcpp$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_mem3dcpp$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_mem3dcpp$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_menus$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_menus$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_menus$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_module$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_module$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_module$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_morph$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_morph$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_morph$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_net$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_net$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_net$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_object$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_object$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_object$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_openal$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_openal$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_openal$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_shpanim$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_shpanim$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_shpanim$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_sphere$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_sphere$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_sphere$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_stubs$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_stubs$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_stubs$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_tables$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_tables$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_tables$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_vdb$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_vdb$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_vdb$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_version$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_version$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_version$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_winapi$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_winapi$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_winapi$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_opengl$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_opengl$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_opengl$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/Input_JoystickInput$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/Input_JoystickInput$(DependSuffix)
	$(RM) $(IntermediateDirectory)/Input_JoystickInput$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/Input_MenuInput$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/Input_MenuInput$(DependSuffix)
	$(RM) $(IntermediateDirectory)/Input_MenuInput$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/Input_usr_io$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/Input_usr_io$(DependSuffix)
	$(RM) $(IntermediateDirectory)/Input_usr_io$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_ai_sight$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_ai_sight$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_ai_sight$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_avpview$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_avpview$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_avpview$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_agun$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_agun$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_agun$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_ais$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_ais$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_ais$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_alien$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_alien$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_alien$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_binsw$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_binsw$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_binsw$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_cable$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_cable$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_cable$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_corpse$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_corpse$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_corpse$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_deathvol$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_deathvol$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_deathvol$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_debri$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_debri$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_debri$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_dummy$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_dummy$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_dummy$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_fan$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_fan$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_fan$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_far$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_far$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_far$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_fhug$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_fhug$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_fhug$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_gener$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_gener$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_gener$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_ldoor$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_ldoor$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_ldoor$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_lift$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_lift$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_lift$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_light$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_light$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_light$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_lnksw$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_lnksw$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_lnksw$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_ltfx$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_ltfx$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_ltfx$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_marin$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_marin$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_marin$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_mission$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_mission$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_mission$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_near$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_near$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_near$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_pargen$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_pargen$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_pargen$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_plachier$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_plachier$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_plachier$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_plift$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_plift$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_plift$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_pred$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_pred$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_pred$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_queen$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_queen$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_queen$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_rubberduck$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_rubberduck$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_rubberduck$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_selfdest$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_selfdest$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_selfdest$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_snds$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_snds$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_snds$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_spcl$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_spcl$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_spcl$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_swdor$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_swdor$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_swdor$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_track$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_track$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_track$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_types$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_types$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_types$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_videoscreen$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_videoscreen$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_videoscreen$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_waypt$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_waypt$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_waypt$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_weap$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_weap$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_weap$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_xeno$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_xeno$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_bh_xeno$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_bonusabilities$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_bonusabilities$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_bonusabilities$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_cconvars$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_cconvars$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_cconvars$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_cdtrackselection$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_cdtrackselection$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_cdtrackselection$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_cheatmodes$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_cheatmodes$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_cheatmodes$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_comp_map$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_comp_map$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_comp_map$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_comp_shp$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_comp_shp$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_comp_shp$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_consolelog$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_consolelog$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_consolelog$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_davehook$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_davehook$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_davehook$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_deaths$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_deaths$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_deaths$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_decal$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_decal$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_decal$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_detaillevels$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_detaillevels$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_detaillevels$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_dynamics$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_dynamics$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_dynamics$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_dynblock$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_dynblock$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_dynblock$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_equipmnt$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_equipmnt$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_equipmnt$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_extents$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_extents$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_extents$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_game$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_game$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_game$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_gamecmds$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_gamecmds$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_gamecmds$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_game_statistics$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_game_statistics$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_game_statistics$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_gamevars$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_gamevars$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_gamevars$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_hmodel$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_hmodel$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_hmodel$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_hud$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_hud$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_hud$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_inventry$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_inventry$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_inventry$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_language$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_language$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_language$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_lighting$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_lighting$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_lighting$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_load_shp$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_load_shp$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_load_shp$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_los$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_los$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_los$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_mempool$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_mempool$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_mempool$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_messagehistory$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_messagehistory$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_messagehistory$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_missions$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_missions$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_missions$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_movement$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_movement$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_movement$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_paintball$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_paintball$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_paintball$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_particle$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_particle$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_particle$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_pfarlocs$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_pfarlocs$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_pfarlocs$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_pheromon$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_pheromon$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_pheromon$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_player$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_player$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_player$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_pmove$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_pmove$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_pmove$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_psnd$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_psnd$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_psnd$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_psndproj$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_psndproj$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_psndproj$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_pvisible$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_pvisible$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_pvisible$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_savegame$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_savegame$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_savegame$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_scream$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_scream$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_scream$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_secstats$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_secstats$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_secstats$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_sfx$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_sfx$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_sfx$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_stratdef$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_stratdef$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_stratdef$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_targeting$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_targeting$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_targeting$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_track$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_track$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_track$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_triggers$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_triggers$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_triggers$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/avp_weapons$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/avp_weapons$(DependSuffix)
	$(RM) $(IntermediateDirectory)/avp_weapons$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_avpchunk$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_avpchunk$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_avpchunk$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_cheat$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_cheat$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_cheat$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_chtcodes$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_chtcodes$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_chtcodes$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_d3d_hud$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_d3d_hud$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_d3d_hud$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_ddplat$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_ddplat$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_ddplat$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_endianio$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_endianio$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_endianio$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_ffread$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_ffread$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_ffread$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_ffstdio$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_ffstdio$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_ffstdio$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_gammacontrol$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_gammacontrol$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_gammacontrol$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_hierplace$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_hierplace$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_hierplace$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_iofocus$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_iofocus$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_iofocus$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_jsndsup$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_jsndsup$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_jsndsup$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_kzsort$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_kzsort$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_kzsort$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_langplat$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_langplat$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_langplat$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_modcmds$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_modcmds$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_modcmds$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_npcsetup$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_npcsetup$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_npcsetup$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_objsetup$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_objsetup$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_objsetup$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_pathchnk$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_pathchnk$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_pathchnk$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_platsup$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_platsup$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_platsup$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_pldghost$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_pldghost$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_pldghost$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_pldnet$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_pldnet$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_pldnet$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_projload$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_projload$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_projload$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_scrshot$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_scrshot$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_scrshot$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_strachnk$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_strachnk$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_strachnk$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_system$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_system$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_system$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_vision$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_vision$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_vision$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/frontend_avp_envinfo$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/frontend_avp_envinfo$(DependSuffix)
	$(RM) $(IntermediateDirectory)/frontend_avp_envinfo$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/frontend_avp_intro$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/frontend_avp_intro$(DependSuffix)
	$(RM) $(IntermediateDirectory)/frontend_avp_intro$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/frontend_avp_menudata$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/frontend_avp_menudata$(DependSuffix)
	$(RM) $(IntermediateDirectory)/frontend_avp_menudata$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/frontend_avp_menus$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/frontend_avp_menus$(DependSuffix)
	$(RM) $(IntermediateDirectory)/frontend_avp_menus$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/frontend_avp_mp_config$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/frontend_avp_mp_config$(DependSuffix)
	$(RM) $(IntermediateDirectory)/frontend_avp_mp_config$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/frontend_avp_userprofile$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/frontend_avp_userprofile$(DependSuffix)
	$(RM) $(IntermediateDirectory)/frontend_avp_userprofile$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/gadgets_ahudgadg$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/gadgets_ahudgadg$(DependSuffix)
	$(RM) $(IntermediateDirectory)/gadgets_ahudgadg$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/gadgets_conscmnd$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/gadgets_conscmnd$(DependSuffix)
	$(RM) $(IntermediateDirectory)/gadgets_conscmnd$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/gadgets_conssym$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/gadgets_conssym$(DependSuffix)
	$(RM) $(IntermediateDirectory)/gadgets_conssym$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/gadgets_consvar$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/gadgets_consvar$(DependSuffix)
	$(RM) $(IntermediateDirectory)/gadgets_consvar$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/gadgets_gadget$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/gadgets_gadget$(DependSuffix)
	$(RM) $(IntermediateDirectory)/gadgets_gadget$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/gadgets_hudgadg$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/gadgets_hudgadg$(DependSuffix)
	$(RM) $(IntermediateDirectory)/gadgets_hudgadg$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/gadgets_rootgadg$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/gadgets_rootgadg$(DependSuffix)
	$(RM) $(IntermediateDirectory)/gadgets_rootgadg$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/gadgets_teletype$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/gadgets_teletype$(DependSuffix)
	$(RM) $(IntermediateDirectory)/gadgets_teletype$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/gadgets_textexp$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/gadgets_textexp$(DependSuffix)
	$(RM) $(IntermediateDirectory)/gadgets_textexp$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/gadgets_textin$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/gadgets_textin$(DependSuffix)
	$(RM) $(IntermediateDirectory)/gadgets_textin$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/gadgets_t_ingadg$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/gadgets_t_ingadg$(DependSuffix)
	$(RM) $(IntermediateDirectory)/gadgets_t_ingadg$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/gadgets_trepgadg$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/gadgets_trepgadg$(DependSuffix)
	$(RM) $(IntermediateDirectory)/gadgets_trepgadg$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_progress_bar$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_progress_bar$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_progress_bar$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/shapes_cube$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/shapes_cube$(DependSuffix)
	$(RM) $(IntermediateDirectory)/shapes_cube$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/support_consbind$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/support_consbind$(DependSuffix)
	$(RM) $(IntermediateDirectory)/support_consbind$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/support_consbtch$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/support_consbtch$(DependSuffix)
	$(RM) $(IntermediateDirectory)/support_consbtch$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/support_coordstr$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/support_coordstr$(DependSuffix)
	$(RM) $(IntermediateDirectory)/support_coordstr$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/support_daemon$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/support_daemon$(DependSuffix)
	$(RM) $(IntermediateDirectory)/support_daemon$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/support_indexfnt$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/support_indexfnt$(DependSuffix)
	$(RM) $(IntermediateDirectory)/support_indexfnt$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/support_r2base$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/support_r2base$(DependSuffix)
	$(RM) $(IntermediateDirectory)/support_r2base$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/support_r2pos666$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/support_r2pos666$(DependSuffix)
	$(RM) $(IntermediateDirectory)/support_r2pos666$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/support_reflist$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/support_reflist$(DependSuffix)
	$(RM) $(IntermediateDirectory)/support_reflist$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/support_refobj$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/support_refobj$(DependSuffix)
	$(RM) $(IntermediateDirectory)/support_refobj$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/support_rentrntq$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/support_rentrntq$(DependSuffix)
	$(RM) $(IntermediateDirectory)/support_rentrntq$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/support_scstring$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/support_scstring$(DependSuffix)
	$(RM) $(IntermediateDirectory)/support_scstring$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/support_strtab$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/support_strtab$(DependSuffix)
	$(RM) $(IntermediateDirectory)/support_strtab$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/support_strutil$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/support_strutil$(DependSuffix)
	$(RM) $(IntermediateDirectory)/support_strutil$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/support_trig666$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/support_trig666$(DependSuffix)
	$(RM) $(IntermediateDirectory)/support_trig666$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/support_wrapstr$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/support_wrapstr$(DependSuffix)
	$(RM) $(IntermediateDirectory)/support_wrapstr$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_oglfunc$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_oglfunc$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_oglfunc$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_animchnk$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_animchnk$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_animchnk$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_animobs$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_animobs$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_animobs$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_awbmpld$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_awbmpld$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_awbmpld$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_awiffld$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_awiffld$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_awiffld$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_awpnmld$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_awpnmld$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_awpnmld$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_awtexld$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_awtexld$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_awtexld$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_bmpnames$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_bmpnames$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_bmpnames$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_chnkload$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_chnkload$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_chnkload$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_chnktexi$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_chnktexi$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_chnktexi$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_chnktype$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_chnktype$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_chnktype$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_chunk$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_chunk$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_chunk$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_chunkpal$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_chunkpal$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_chunkpal$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_db$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_db$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_db$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_debuglog$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_debuglog$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_debuglog$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_dummyobjectchunk$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_dummyobjectchunk$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_dummyobjectchunk$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_enumchnk$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_enumchnk$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_enumchnk$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_enumsch$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_enumsch$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_enumsch$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_envchunk$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_envchunk$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_envchunk$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_fail$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_fail$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_fail$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_fragchnk$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_fragchnk$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_fragchnk$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_gsprchnk$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_gsprchnk$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_gsprchnk$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_hierchnk$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_hierchnk$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_hierchnk$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_huffman$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_huffman$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_huffman$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_iff$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_iff$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_iff$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_iff_ilbm$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_iff_ilbm$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_iff_ilbm$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_ilbm_ext$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_ilbm_ext$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_ilbm_ext$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_io$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_io$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_io$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_list_tem$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_list_tem$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_list_tem$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_ltchunk$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_ltchunk$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_ltchunk$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_media$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_media$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_media$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_mishchnk$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_mishchnk$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_mishchnk$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_obchunk$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_obchunk$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_obchunk$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_oechunk$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_oechunk$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_oechunk$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_our_mem$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_our_mem$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_our_mem$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_plat_shp$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_plat_shp$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_plat_shp$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_plspecfn$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_plspecfn$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_plspecfn$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_shpchunk$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_shpchunk$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_shpchunk$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_sndchunk$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_sndchunk$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_sndchunk$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_sprchunk$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_sprchunk$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_sprchunk$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_string$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_string$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_string$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_texio$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_texio$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_texio$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_toolchnk$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_toolchnk$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_toolchnk$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_txioctrl$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_txioctrl$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_txioctrl$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_wpchunk$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_wpchunk$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_wpchunk$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/win95_zsp$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/win95_zsp$(DependSuffix)
	$(RM) $(IntermediateDirectory)/win95_zsp$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/Video_VideoModes$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/Video_VideoModes$(DependSuffix)
	$(RM) $(IntermediateDirectory)/Video_VideoModes$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/Video_OpenGLInit$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/Video_OpenGLInit$(DependSuffix)
	$(RM) $(IntermediateDirectory)/Video_OpenGLInit$(PreprocessSuffix)
	$(RM) $(OutputFile)
	$(RM) "/media/AE78B81A78B7DF71/avp/AvP/.build-pandora_release/AvP"


