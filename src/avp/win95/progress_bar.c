#include "3dc.h"
#include "module.h"
#include "platform.h"
#include "kshape.h"
#include "progress_bar.h"
#include "chnktexi.h"
#include "awtexld.h"
#include "ffstdio.h"
#include "inline.h"
#include "gamedef.h"
#include "psnd.h"
#include "opengl.h"

#include "language.h"
#include "avp_menus.h"

extern SCREENDESCRIPTORBLOCK ScreenDescriptorBlock;
extern int DebouncedGotAnyKey;
extern int AAFontImageNumber;
extern int FadingGameInAfterLoading;

static float g_currentProgressPercentage = 0.0f;
static int BarLeft;
static int BarRight;
static int BarTop;
static int BarBottom;

static const char* Loading_Image_Name="Menus\\Loading.rim";
static const char* Loading_Bar_Empty_Image_Name="Menus\\Loadingbar_empty.rim";
static const char* Loading_Bar_Full_Image_Name="Menus\\Loadingbar_full.rim";

static D3DTexture *g_loadingBarEmptyTex = NULL;
static D3DTexture *g_loadingBarFullTex = NULL;

// Src on the texture to blit from
static const RECT LoadingBarEmpty_SrcRect = {0, 0, 639, 39};
static const RECT LoadingBarFull_SrcRect = {0, 0, 639, 39};

// Screen positions between -/+1.0f defining the four corners of the entire progress bar
static const float g_loadingBarLeft = -1.0f;
static const float g_loadingBarRight = 1.0f;
static const float g_loadingBarTop = -0.83f;
static const float g_loadingBarBottom = -1.0f;

void Start_Progress_Bar()
{
	AAFontImageNumber = CL_LoadImageOnce("Common\\aa_font.RIM",LIO_D3DTEXTURE|LIO_RELATIVEPATH|LIO_RESTORABLE);

	/* load other graphics */
	{
		char buffer[100];
		CL_GetImageFileName(buffer, 100,Loading_Bar_Empty_Image_Name, LIO_RELATIVEPATH);
		
		//see if graphic can be found in fast file
		size_t fastFileLength;
		void const * pFastFileData = ffreadbuf(buffer,&fastFileLength);
		
		if(pFastFileData)
		{
			//load from fast file
			g_loadingBarEmptyTex = AwCreateTexture("pxf", pFastFileData, fastFileLength, 0);
		}
		else
		{
			//load graphic from rim file
			g_loadingBarEmptyTex = AwCreateTexture ("sf", buffer, 0);
		}
	}
	{
		char buffer[100];
		CL_GetImageFileName(buffer, 100,Loading_Bar_Full_Image_Name, LIO_RELATIVEPATH);
		
		//see if graphic can be found in fast file
		size_t fastFileLength;
		void const * pFastFileData = ffreadbuf(buffer,&fastFileLength);
		
		if(pFastFileData)
		{
			//load from fast file
			g_loadingBarFullTex = AwCreateTexture("pxf", pFastFileData,	fastFileLength,	0);
		}
		else
		{
			//load graphic from rim file
			g_loadingBarFullTex = AwCreateTexture("sf", buffer, 0);
		}
	}
	
	// Draw the initial screen that will displayed when loading. The full progress bar will be drawn gradually over the top
	// Clear the screen
	ColourFillBackBuffer(0);
	FlushD3DZBuffer();
	ThisFramesRenderingHasBegun();
	
	// Draw empty loading bar
	if (g_loadingBarEmptyTex) 
		RenderScaledImage(g_loadingBarLeft, g_loadingBarRight, g_loadingBarTop, g_loadingBarBottom, g_loadingBarEmptyTex ,&LoadingBarEmpty_SrcRect);

	RenderBriefingText(ScreenDescriptorBlock.SDB_Height/2, ONE_FIXED);
	ThisFramesRenderingHasFinished();
	InGameFlipBuffers();

	// No longer need the texture
	if (g_loadingBarEmptyTex) 
	{
		ReleaseD3DTexture(g_loadingBarEmptyTex);
		g_loadingBarEmptyTex = NULL;
	}

	g_currentProgressPercentage = 0.0f;
}

void Set_Progress_Bar_Position(int pos)
{
	float newPosition = (float)pos / (float)PBAR_LENGTH;
	if(newPosition>g_currentProgressPercentage)
	{
		g_currentProgressPercentage = newPosition;

		// Draw the progress bar upto the point of progress
		if (g_loadingBarFullTex) 
		{
			RECT srcRect;
			srcRect.left = LoadingBarFull_SrcRect.left;
			srcRect.top = LoadingBarFull_SrcRect.top;
			srcRect.bottom = LoadingBarFull_SrcRect.bottom;
			srcRect.right = (float)LoadingBarFull_SrcRect.right * newPosition;
			RenderScaledImage(g_loadingBarLeft, g_loadingBarRight * g_currentProgressPercentage, g_loadingBarTop, g_loadingBarBottom, g_loadingBarFullTex, &srcRect);
			InGameFlipBuffers();
		}
		
		/*
		If this is a network game , then check the received network messages from 
		time to time (~every second).
		Has nothing to do with the progress bar , but this is a convenient place to
		do the check.
		*/
		if(AvP.Network != I_No_Network)
		{
			static int LastSendTime;
			int time=GetTickCount();
			if(time-LastSendTime>1000 || time<LastSendTime)
			{
				//time to check our messages 
				LastSendTime=time;

				MinimalNetCollectMessages();
				//send messages , mainly  needed so that the host will send the game description
				//allowing people to join while the host is loading
				NetSendMessages();
			}
		}
		
	}
}

void Game_Has_Loaded(void)
{
	extern int NormalFrameTime;
	extern void RenderStringCentred(char *stringPtr, int centreX, int y, int colour);

	SoundSys_StopAll();
	SoundSys_Management();

	int f = 65536;
	ResetFrameCounter();
	do
	{
		CheckForWindowsMessages();
		ReadUserInput();
		
		{
			extern void ThisFramesRenderingHasBegun(void);
			ThisFramesRenderingHasBegun();
		}
		if (f)
		{
			if (g_loadingBarFullTex) 
				RenderScaledImage(g_loadingBarLeft, g_loadingBarRight, g_loadingBarTop, g_loadingBarBottom, g_loadingBarFullTex, &LoadingBarFull_SrcRect);

			f-=NormalFrameTime;
			if (f<0) f=0;
		}
		
		RenderStringCentred(GetTextString(TEXTSTRING_INGAME_PRESSANYKEYTOCONTINUE), ScreenDescriptorBlock.SDB_Width/2, (ScreenDescriptorBlock.SDB_Height*23)/24-9, 0xffffffff);
		{
			// after this call, no more graphics can be drawn until the next frame 
			extern void ThisFramesRenderingHasFinished(void);
			ThisFramesRenderingHasFinished();
		}

		InGameFlipBuffers();
		FrameCounterHandler();

		// If in a network game then we may as well check the network messages while waiting
		if(AvP.Network != I_No_Network)
		{
			MinimalNetCollectMessages();
			
			//send messages , mainly  needed so that the host will send the game description
			//allowing people to join while the host is loading
			NetSendMessages();
		}
		
	} while(!DebouncedGotAnyKey);

	if (g_loadingBarFullTex)
	{
		ReleaseD3DTexture(g_loadingBarFullTex);
		g_loadingBarFullTex = NULL;
	}
	FadingGameInAfterLoading=ONE_FIXED;

};
