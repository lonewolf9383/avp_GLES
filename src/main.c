#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <assert.h>
#include "oglfunc.h"
#include <SDL/SDL.h>

#if !defined(_MSC_VER)
#ifndef _GNU_SOURCE
#define _GNU_SOURCE
#endif
#include <getopt.h>
#endif

#include "fixer.h"

#include "3dc.h"
#include "platform.h"
#include "inline.h"
#include "gamedef.h"
#include "gameplat.h"
#include "ffstdio.h"
#include "vision.h"
#include "comp_shp.h"
#include "avp_envinfo.h"
#include "stratdef.h"
#include "bh_types.h"
#include "avp_userprofile.h"
#include "pldnet.h"
#include "cdtrackselection.h"
#include "gammacontrol.h"
#include "opengl.h"
#include "avp_menus.h"
#include "avp_mp_config.h"
#include "npcsetup.h"
#include "cdplayer.h"
#include "hud.h"
#include "player.h"
#include "mempool.h"
#include "avpview.h"
#include "consbind.hpp"
#include "progress_bar.h"
#include "scrshot.hpp"
#include "version.h"
#include "fmv.h"
#include "Video/VideoModes.h"

#ifndef PATH_MAX
#define PATH_MAX 1024
#endif

char LevelName[] = {"predbit6\0QuiteALongNameActually"}; /* the real way to load levels */

int GotMouse;
int MouseVelX;
int MouseVelY;

extern int ScanDrawMode;
extern SCREENDESCRIPTORBLOCK ScreenDescriptorBlock;
extern int NormalFrameTime;

extern unsigned char KeyboardInput[MAX_NUMBER_OF_INPUT_KEYS];
extern int DebouncedGotAnyKey;
extern unsigned char DebouncedKeyboardInput[MAX_NUMBER_OF_INPUT_KEYS];
extern unsigned char GotAnyKey;

SDL_Surface *surface;

/* defaults */
static int WantFullscreen = 0;
int WantSound = 1;
static int WantCDRom = 0;
extern BOOL g_joystickEnabled;

/* originally was "/usr/lib/libGL.so.1:/usr/lib/tls/libGL.so.1:/usr/X11R6/lib/libGL.so" */
#ifdef GLES1
char *g_glLibrary = "libGLES_CM.so";
#else
char *g_glLibrary = "libGL.so";
#endif
/* ** */

static void IngameKeyboardInput_ClearBuffer(void)
{
	// clear the keyboard state
	memset((void*) KeyboardInput, 0, MAX_NUMBER_OF_INPUT_KEYS);
	GotAnyKey = 0;
}

void DirectReadKeyboard()
{
}

void DirectReadMouse()
{
}

/* ** */

unsigned char *GetScreenShot24(int *width, int *height)
{
	assert(0);
	/*
	unsigned char *buf;
//	Uint16 redtable[256], greentable[256], bluetable[256];
	
	if (surface == NULL) {
		return NULL;
	}
	
	buf = (unsigned char *)malloc(surface->w * surface->h * 3);
	
	if (surface->flags & SDL_OPENGL) {
		glPixelStorei(GL_PACK_ALIGNMENT, 1);
		glPixelStorei(GL_UNPACK_ALIGNMENT, 1);
		glReadPixels(0, 0, surface->w, surface->h, GL_RGB, GL_UNSIGNED_BYTE, buf);
	} else {
		unsigned char *ptrd;
		unsigned short int *ptrs;
		int x, y;
	
		if (SDL_MUSTLOCK(surface)) {
			if (SDL_LockSurface(surface) < 0) {
				free(buf);
				return NULL; /* ... */
		/*	}
		}
		
		ptrd = buf;
		for (y = 0; y < surface->h; y++) {
			ptrs = (unsigned short *)(((unsigned char *)surface->pixels) + (surface->h-y-1)*surface->pitch);
			for (x = 0; x < surface->w; x++) {
				unsigned int c;
				
				c = *ptrs;
				ptrd[0] = (c & 0xF800)>>8;
				ptrd[1] = (c & 0x07E0)>>3;
				ptrd[2] = (c & 0x001F)<<3;
				
				ptrs++;
				ptrd += 3;
			}
		}
		
		if (SDL_MUSTLOCK(surface)) {
			SDL_UnlockSurface(surface);
		}
	}
	
	*width = surface->w;
	*height = surface->h;

#if 0	
	if (SDL_GetGammaRamp(redtable, greentable, bluetable) != -1) {
		unsigned char *ptr;
		int i;
		
		ptr = buf;
		for (i = 0; i < surface->w*surface->h; i++) {
			ptr[i*3+0] = redtable[ptr[i*3+0]]>>8;
			ptr[i*3+1] = greentable[ptr[i*3+1]]>>8;
			ptr[i*3+2] = bluetable[ptr[i*3+2]]>>8;
			ptr += 3;
		}
	}
#endif	
	return buf;*/
	return NULL;
}

/* ** */

PROCESSORTYPES ReadProcessorType()
{
	return PType_PentiumMMX;
}

int InitSDL()
{
	if (SDL_Init(SDL_INIT_VIDEO) < 0) 
	{
		fprintf(stderr, "SDL Init failed: %s\n", SDL_GetError());
		exit(EXIT_FAILURE);
	}

	atexit(SDL_Quit);
	LoadInitialVideoModeSettings();
	surface = NULL;
	return 0;
}

int SetSoftVideoMode(int Width, int Height, int Depth)
{
	SDL_GrabMode isgrab;
	int flags;
	
	ScanDrawMode = ScanDrawD3DHardwareRGB;
	GotMouse = 1;
	
#ifdef GLES1
	flags = SDL_SWSURFACE|SDL_FULLSCREEN | SDL_DOUBLEBUF;
#else
	flags = SDL_SWSURFACE|SDL_DOUBLEBUF;
#endif
	if (surface != NULL) {
	 	if (surface->flags & SDL_FULLSCREEN)
	 		flags |= SDL_FULLSCREEN;
		isgrab = SDL_WM_GrabInput(SDL_GRAB_QUERY);

		//SDL_FreeSurface(surface);
	} else {
		if (WantFullscreen)
			flags |= SDL_FULLSCREEN;
		isgrab = SDL_GRAB_OFF;
	}
	
	// reset input
	IngameKeyboardInput_ClearBuffer();
	
	// force restart the video system
	SDL_QuitSubSystem(SDL_INIT_VIDEO);
	SDL_InitSubSystem(SDL_INIT_VIDEO);
	
	if ((surface = SDL_SetVideoMode(Width, Height, Depth, flags)) == NULL) {
		fprintf(stderr, "(Software) SDL SetVideoMode failed: %s\n", SDL_GetError());
		exit(EXIT_FAILURE);
	}
	
	SDL_WM_SetCaption("Aliens vs Predator", "Aliens vs Predator");

	/* this is for supporting keyboard input processing with little hassle */
	SDL_EnableKeyRepeat(SDL_DEFAULT_REPEAT_DELAY, SDL_DEFAULT_REPEAT_INTERVAL);
	SDL_EnableUNICODE(1); /* toggle it to ON */
      
	if (isgrab == SDL_GRAB_ON)
		SDL_WM_GrabInput(SDL_GRAB_ON);

	if ((surface->flags & SDL_FULLSCREEN) || 
	    (SDL_WM_GrabInput(SDL_GRAB_QUERY) == SDL_GRAB_ON))
		SDL_ShowCursor(0);

	ScreenDescriptorBlock.SDB_Width     = Width;
	ScreenDescriptorBlock.SDB_Height    = Height;
	ScreenDescriptorBlock.SDB_CentreX   = Width/2;
	ScreenDescriptorBlock.SDB_CentreY   = Height/2;
	ScreenDescriptorBlock.SDB_ProjX     = Width/2;
	ScreenDescriptorBlock.SDB_ProjY     = Height/2;
	ScreenDescriptorBlock.SDB_ClipLeft  = 0;
	ScreenDescriptorBlock.SDB_ClipRight = Width;
	ScreenDescriptorBlock.SDB_ClipUp    = 0;
	ScreenDescriptorBlock.SDB_ClipDown  = Height;
	
	return 0;	
}

int SetOGLVideoMode(int Width, int Height)
{
	SDL_GrabMode isgrab;
	int flags = 0;
	char *ext;
	
	ScanDrawMode = ScanDrawD3DHardwareRGB;
	GotMouse = 1;
#ifdef GLES1
	flags = SDL_SWSURFACE | SDL_FULLSCREEN;
#else
	flags = SDL_OPENGL | SDL_HWSURFACE | SDL_DOUBLEBUF;
#endif
	
	if (surface != NULL) {
		if (surface->flags & SDL_FULLSCREEN)
			flags |= SDL_FULLSCREEN;
		isgrab = SDL_WM_GrabInput(SDL_GRAB_QUERY);

		//SDL_FreeSurface(surface);
	} else {
		if (WantFullscreen) {
			flags |= SDL_FULLSCREEN;
		}
		
		isgrab = SDL_GRAB_OFF;
	}

	// reset input
	IngameKeyboardInput_ClearBuffer();
	
	// force restart the video system
	TerminateOpenGL();
	
	SDL_QuitSubSystem(SDL_INIT_VIDEO);
	SDL_InitSubSystem(SDL_INIT_VIDEO);
			
	if ((surface = SDL_SetVideoMode(Width, Height, 16, flags)) == NULL) {
		fprintf(stderr, "(OpenGL) SDL SetVideoMode failed: %s\n", SDL_GetError());
		exit(EXIT_FAILURE);
	}
	
	if (!InitOpenGL())
	{
		exit(EXIT_FAILURE);
	}
	
	SDL_WM_SetCaption("Aliens vs Predator", "Aliens vs Predator");

	/* this is for supporting keyboard input processing with little hassle */
	SDL_EnableKeyRepeat(SDL_DEFAULT_REPEAT_DELAY, SDL_DEFAULT_REPEAT_INTERVAL);
	SDL_EnableUNICODE(1); /* toggle it to ON */
      
	if (isgrab == SDL_GRAB_ON)
		SDL_WM_GrabInput(SDL_GRAB_ON);

	if ((surface->flags & SDL_FULLSCREEN) || 
	    (SDL_WM_GrabInput(SDL_GRAB_QUERY) == SDL_GRAB_ON))
		SDL_ShowCursor(0);	
	LoadGLLibrary(g_glLibrary);
	load_ogl_functions(1);
	
	pglViewport(0, 0, Width, Height);
	pglMatrixMode(GL_PROJECTION);
	
	pglLoadIdentity();
	pglMatrixMode(GL_MODELVIEW);
	pglLoadIdentity();

	pglEnable(GL_BLEND);
	pglBlendFunc(GL_SRC_ALPHA, GL_ONE);
	
	pglEnable(GL_DEPTH_TEST);
	pglDepthFunc(GL_LEQUAL);
	pglDepthMask(GL_TRUE);
	pglDepthRange(0.0f, 1.0f);
	
	pglEnable(GL_TEXTURE_2D);
	//pglDisable(GL_CULL_FACE);
	
	pglClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
	
	pglHint(GL_PERSPECTIVE_CORRECTION_HINT, GL_NICEST);
	
	ScreenDescriptorBlock.SDB_Width     = Width;
	ScreenDescriptorBlock.SDB_Height    = Height;
	ScreenDescriptorBlock.SDB_CentreX   = Width/2;
	ScreenDescriptorBlock.SDB_CentreY   = Height/2;
	ScreenDescriptorBlock.SDB_ProjX     = Width/2;
	ScreenDescriptorBlock.SDB_ProjY     = Height/2;
	ScreenDescriptorBlock.SDB_ClipLeft  = 0;
	ScreenDescriptorBlock.SDB_ClipRight = Width;
	ScreenDescriptorBlock.SDB_ClipUp    = 0;
	ScreenDescriptorBlock.SDB_ClipDown  = Height;
	
	ext = (char *) pglGetString(GL_EXTENSIONS);
	
	InitRenderer();
	return 0;
}

int InitialiseWindowsSystem(HANDLE hInstance, int nCmdShow, int WinInitMode)
{
	return 0;
}

int ExitWindowsSystem()
{
	CloseJoystick();
	if (surface) {
		SDL_FreeSurface(surface);
	}
	
	surface = NULL;
	ShutdownGLLibrary();
	return 0;
}

static int GotPrintScn, HavePrintScn;

void CheckForWindowsMessages()
{
	SDL_Event event;
	int x, y, buttons, wantmouse;
	
	GotAnyKey = 0;
	DebouncedGotAnyKey = 0;
	memset(DebouncedKeyboardInput, 0, sizeof(DebouncedKeyboardInput));
	
	wantmouse =	(surface->flags & SDL_FULLSCREEN) ||
			(SDL_WM_GrabInput(SDL_GRAB_QUERY) == SDL_GRAB_ON);

	KeyboardInput[KEY_MOUSEWHEELUP] = 0;
	KeyboardInput[KEY_MOUSEWHEELDOWN] = 0;
	
	if (SDL_PollEvent(&event)) {
		do {
			switch(event.type) {
				case SDL_MOUSEBUTTONDOWN:
					
					if (wantmouse)
						handle_buttonpress(event.button.button, 1);
					break;
				case SDL_MOUSEBUTTONUP:
					break;
				case SDL_KEYDOWN:
					
					if (event.key.keysym.sym == SDLK_PRINT) {
						if (HavePrintScn == 0)
							GotPrintScn = 1;
						HavePrintScn = 1;
					} else {
						
						handle_keypress(KeySymToKey(event.key.keysym.sym), event.key.keysym.unicode, 1);
						
					}
					break;
				case SDL_KEYUP:
					
					if (event.key.keysym.sym == SDLK_PRINT) {
						GotPrintScn = 0;
						HavePrintScn = 0;
					} else {
						handle_keypress(KeySymToKey(event.key.keysym.sym), 0, 0);
					}
					break;
				case SDL_QUIT:
					QuitInGameToMainMenu(AVPMENU_MAIN); 
					break;
			}
		} while (SDL_PollEvent(&event));
	}
	buttons = SDL_GetRelativeMouseState(&x, &y);
	if (wantmouse) {
		if (buttons & SDL_BUTTON(1))
			handle_keypress(KEY_LMOUSE, 0, 1);
		else
			handle_keypress(KEY_LMOUSE, 0, 0);
		if (buttons & SDL_BUTTON(2))
			handle_keypress(KEY_MMOUSE, 0, 1);
		else
			handle_keypress(KEY_MMOUSE, 0, 0);
		if (buttons & SDL_BUTTON(3))
			handle_keypress(KEY_RMOUSE, 0, 1);
		else
			handle_keypress(KEY_RMOUSE, 0, 0);
	
		MouseVelX = DIV_FIXED(x, NormalFrameTime);
		MouseVelY = DIV_FIXED(y, NormalFrameTime);
	} else {
		KeyboardInput[KEY_LMOUSE] = 0;
		KeyboardInput[KEY_MMOUSE] = 0;
		KeyboardInput[KEY_RMOUSE] = 0;
		MouseVelX = 0;
		MouseVelY = 0;
	}
	
	ReadJoysticks();
	UpdateJoystickButtons();

	if ((KeyboardInput[KEY_LEFTALT]||KeyboardInput[KEY_RIGHTALT]) && DebouncedKeyboardInput[KEY_CR]) {
		SDL_GrabMode gm;

		SDL_WM_ToggleFullScreen(surface);
		
		gm = SDL_WM_GrabInput(SDL_GRAB_QUERY);
		if (gm == SDL_GRAB_OFF && !(surface->flags & SDL_FULLSCREEN))
			SDL_ShowCursor(1);
		else
			SDL_ShowCursor(0);
	}

	if (KeyboardInput[KEY_LEFTCTRL] && DebouncedKeyboardInput[KEY_G]) {
		SDL_GrabMode gm;
		
		gm = SDL_WM_GrabInput(SDL_GRAB_QUERY);
		SDL_WM_GrabInput((gm == SDL_GRAB_ON) ? SDL_GRAB_OFF : SDL_GRAB_ON);
		
		gm = SDL_WM_GrabInput(SDL_GRAB_QUERY);
		if (gm == SDL_GRAB_OFF && !(surface->flags & SDL_FULLSCREEN))
			SDL_ShowCursor(1);
		else
			SDL_ShowCursor(0);
	}
	
	if (GotPrintScn) {
		GotPrintScn = 0;
		
		ScreenShot();
	}
}
        
void InGameFlipBuffers()
{
	SwapBuffers();
}

void FlipBuffers()
{
	SDL_Flip(surface);
}

char *AvpCDPath = 0;

#if !defined(_MSC_VER)
static const struct option getopt_long_options[] = {
{ "help",	0,	NULL,	'h' },
{ "version",	0,	NULL,	'v' },
{ "fullscreen",	0,	NULL,	'f' },
{ "windowed",	0,	NULL,	'w' },
{ "nosound",	0,	NULL,	's' },
{ "nocdrom",	0,	NULL,	'c' },
{ "nojoy",	0,	NULL,	'j' },
{ "debug",	0,	NULL,	'd' },
{ "withgl",	1,	NULL,	'g' },
/*
{ "loadrifs",	1,	NULL,	'l' },
{ "server",	0,	someval,	1 },
{ "client",	1,	someval,	2 },
*/
{ NULL,		0,	NULL,	0 },
};
#endif

static const char *usage_string =
"Aliens vs Predator Linux - http://www.icculus.org/avp/\n"
"Based on Rebellion Developments AvP Gold source\n"
"      [-h | --help]           Display this help message\n"
"      [-v | --version]        Display the game version\n"
"      [-f | --fullscreen]     Run the game fullscreen\n"
"      [-w | --windowed]       Run the game in a window\n"
"      [-s | --nosound]        Do not access the soundcard\n"
"      [-c | --nocdrom]        Do not access the CD-ROM\n"
"      [-j | --nojoy]          Do not access the joystick\n"
"      [-g | --withgl] [x]     Use [x] instead of /usr/lib/libGL.so.1 for OpenGL\n"
;
         
int main(int argc, char *argv[])
{			
#if !defined(_MSC_VER)
	int c;
	
	opterr = 0;
	while ((c = getopt_long(argc, argv, "hvfwscdg:", getopt_long_options, NULL)) != -1) {
		switch(c) {
			case 'h':
				printf("%s", usage_string);
				exit(EXIT_SUCCESS);
			case 'v':
				printf("%s", AvPVersionString);
				exit(EXIT_SUCCESS);
			case 'f':
				WantFullscreen = 1;
				break;
			case 'w':
				WantFullscreen = 0;
				break;
			case 's':
				WantSound = 0;
				break;
			case 'c':
				WantCDRom = 0;
				break;
			case 'j':
				g_joystickEnabled = FALSE;
				break;			
			case 'd': {
				extern int DebuggingCommandsActive;
				DebuggingCommandsActive = 1;
				}
				break;
			case 'g':
				g_glLibrary = optarg;
				break;
			default:
				printf("%s", usage_string);
				exit(EXIT_FAILURE);	
		}
	}
#endif

	InitGameDirectories(argv[0]);
	
	if (InitSDL() == -1) {
		fprintf(stderr, "Could not find a sutable resolution!\n");
		fprintf(stderr, "At least 512x384 is needed.  Does OpenGL work?\n");
		exit(EXIT_FAILURE);
	}
		
	LoadCDTrackList();
	
	SetFastRandom();
	
#if MARINE_DEMO
	ffInit("fastfile/mffinfo.txt","fastfile/");
#elif ALIEN_DEMO
	ffInit("alienfastfile/ffinfo.txt","alienfastfile/");
#else
	ffInit("fastfile/ffinfo.txt","fastfile/");
#endif
	InitGame();

	SetSoftVideoMode(640, 480, 16);
	if (!LoadGLLibrary(g_glLibrary))
	{
		exit(EXIT_FAILURE);
	}

	InitialVideoMode();

	/* Env_List can probably be removed */
	Env_List[0]->main = LevelName;
	
	InitialiseSystem();
	InitialiseRenderer();
	InitialiseJoystick();
	
	LoadKeyConfiguration();
	
	SoundSys_Start();
	if (WantCDRom) CDDA_Start();
	
	InitTextStrings();
	
	BuildMultiplayerLevelNameArray();
	
	ChangeDirectDrawObject();
	AvP.LevelCompleted = 0;
	LoadSounds("PLAYER");

	/* is this still neccessary? */
	AvP.CurrentEnv = AvP.StartingEnv = 0;

#if ALIEN_DEMO
	AvP.PlayerType = I_Alien;
	SetLevelToLoad(AVP_ENVIRONMENT_INVASION_A);
#elif PREDATOR_DEMO
	AvP.PlayerType = I_Predator;
	SetLevelToLoad(AVP_ENVIRONMENT_INVASION_P);
#elif MARINE_DEMO
	AvP.PlayerType = I_Marine;
	SetLevelToLoad(AVP_ENVIRONMENT_INVASION);
#endif

	// Start on the select profile screen
	g_menuToShowOnMainMenuRestart = AVPMENU_USERPROFILESELECT;

#if !(ALIEN_DEMO|PREDATOR_DEMO|MARINE_DEMO)	
while (AvP_MainMenus())
#else
if (AvP_MainMenus())
#endif
{
	int menusActive = 0;
	int thisLevelHasBeenCompleted = 0;
	// turn off any special effects 
	d3d_light_ctrl.ctrl = LCCM_NORMAL;
	SetOGLVideoMode(g_currentVideoX, g_currentVideoY);
	InitialiseGammaSettings(RequestedGammaSetting);
	
	start_of_loaded_shapes = load_precompiled_shapes();
	InitCharacter();
	
	LoadRifFile(); // sets up a map 
	AssignAllSBNames();
	
	StartGame();
	ffcloseall();
	AvP.MainLoopRunning = 1;
	ScanImagesForFMVs();
	ResetFrameCounter();
	Game_Has_Loaded();
	ResetFrameCounter();
	if(AvP.Network!=I_No_Network)
	{
		/*Need to choose a starting position for the player , but first we must look
		through the network messages to find out which generator spots are currently clear*/
		netGameData.myGameState = NGS_Playing;
		MinimalNetCollectMessages();
		TeleportNetPlayerToAStartingPosition(Player->ObStrategyBlock,1);
	}
	
	IngameKeyboardInput_ClearBuffer();
	while(AvP.MainLoopRunning) {
		CheckForWindowsMessages();
		
		switch(AvP.GameMode) {
		case I_GM_Playing:
			if ((!menusActive || (AvP.Network!=I_No_Network && !netGameData.skirmishMode)) && !AvP.LevelCompleted) {
				/* TODO: print some debugging stuff */
				
				DoAllShapeAnimations();
				
				UpdateGame();
				
				AvpShowViews();
				
				MaintainHUD();
				
				CheckCDAndChooseTrackIfNeeded();
				
				if(InGameMenusAreRunning() && ( (AvP.Network!=I_No_Network && netGameData.skirmishMode) || (AvP.Network==I_No_Network)) ) {
					SoundSys_StopAll();
				}
			} else {
				ReadUserInput();
				
				SoundSys_Management();
				
				FlushD3DZBuffer();
				
				ThisFramesRenderingHasBegun();
			}

			menusActive = AvP_InGameMenus();
			if (AvP.RestartLevel) menusActive=0;
			
			if (AvP.LevelCompleted) {
				SoundSys_FadeOutFast();
				DoCompletedLevelStatisticsScreen();
				thisLevelHasBeenCompleted = 1;
			}

			ThisFramesRenderingHasFinished();

			InGameFlipBuffers();
			
			FrameCounterHandler();
			{
				PLAYER_STATUS *playerStatusPtr = (PLAYER_STATUS *) (Player->ObStrategyBlock->SBdataptr);
				
				if (!menusActive && playerStatusPtr->IsAlive && !AvP.LevelCompleted) {
					DealWithElapsedTime();
				}
			}
			break;
			
		case I_GM_Menus:
			AvP.GameMode = I_GM_Playing;
			break;
		default:
			fprintf(stderr, "AvP.MainLoopRunning: gamemode = %d\n", AvP.GameMode);
			exit(EXIT_FAILURE);
		}
		
		if (AvP.RestartLevel) {
			AvP.RestartLevel = 0;
			AvP.LevelCompleted = 0;

			FixCheatModesInUserProfile(UserProfilePtr);

			RestartLevel();
		}
	}
	
	AvP.LevelCompleted = thisLevelHasBeenCompleted;

	FixCheatModesInUserProfile(UserProfilePtr);

	ReleaseAllFMVTextures();

	CONSBIND_WriteKeyBindingsToConfigFile();
	
	DeInitialisePlayer();
	
	DeallocatePlayersMirrorImage();
	
	KillHUD();
	
	Destroy_CurrentEnvironment();
	
	DeallocateAllImages();
	
	EndNPCs();
	
	ExitGame();
	
	SoundSys_StopAll();
	
	SoundSys_ResetFadeLevel();
	
	CDDA_Stop();
	
	if (AvP.Network != I_No_Network) 
	{
		EndAVPNetGame();
	}
	
	TerminateOpenGL();
	
	ClearMemoryPool();

/* go back to menu mode */
#if !(ALIEN_DEMO|PREDATOR_DEMO|MARINE_DEMO)
	SetSoftVideoMode(640, 480, 16);
#endif	
}

	SoundSys_StopAll();
	SoundSys_RemoveAll();
	
	ExitSystem();
	
	CDDA_End();
	ClearMemoryPool();
	
	return 0;
}
