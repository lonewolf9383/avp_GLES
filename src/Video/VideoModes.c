#include <SDL/SDL_video.h>
#include "VideoModes.h"
#include "../files.h"

const int g_SupportedVideoFlags = SDL_FULLSCREEN;

// Video modes
// Current selected size (in game)
int g_currentVideoX = 640;
int g_currentVideoY = 480;

// Determine if the video mode is supported on the current hardware
BOOL IsVideoModeSupported(int sizeX, int sizeY)
{
	if (SDL_VideoModeOK(sizeX, sizeY, 16, g_SupportedVideoFlags))
		return TRUE;
	
	return FALSE;
}

BOOL PrevAvailableVideoMode(int currentSizeX, int currentSizeY, int *pNextX, int *pNextY)
{
	SDL_Rect **pAvailableModes = SDL_ListModes(NULL, g_SupportedVideoFlags);
	if (pAvailableModes)
	{
		int i;
		for (i = 0; pAvailableModes[i]; ++i)
		{
			// Find the matching config and return the next one (or first if at end of the list)
			if (pAvailableModes[i]->w == currentSizeX && pAvailableModes[i]->h == currentSizeY)
			{
				++i; 
				if (pAvailableModes[i] == NULL)
					i = 0;
				
				*pNextX = pAvailableModes[i]->w;
				*pNextY = pAvailableModes[i]->h;
				return TRUE;
			}
		}
		
		// No match found for current size. Return first entry
		*pNextX = pAvailableModes[0]->w;
		*pNextY = pAvailableModes[0]->h;
		return TRUE;
	}
	else
	{
		*pNextX = 0;
		*pNextY = 0;
		return FALSE;
	}
}

BOOL NextAvailableVideoMode(int currentSizeX, int currentSizeY, int *pPrevX, int *pPrevY)
{
	SDL_Rect **pAvailableModes = SDL_ListModes(NULL, g_SupportedVideoFlags);
	if (pAvailableModes)
	{
		int i;
		for (i = 0; pAvailableModes[i]; ++i)
		{
			// Find the matching config and return the next one (or first if at end of the list)
			if (pAvailableModes[i]->w == currentSizeX && pAvailableModes[i]->h == currentSizeY)
			{
				--i; 
				if (i < 0)
				{
					// Find last element
					for (i = 0; pAvailableModes[i]; ++i)
						;
					--i;
				}
				
				*pPrevX = pAvailableModes[i]->w;
				*pPrevY = pAvailableModes[i]->h;
				return TRUE;
			}
		}
		
		// No match for current found. Return first entry
		*pPrevX = pAvailableModes[0]->w;
		*pPrevY = pAvailableModes[0]->h;
	}
	else
	{
		*pPrevX = 0;
		*pPrevY = 0;
		return FALSE;
	}
}

void LoadInitialVideoModeSettings()
{
	FILE *fp;
	int modeX = 0, modeY = 0;
	BOOL validResolutionFound = FALSE;
	fp = OpenGameFile("AvP_TempVideo.cfg", FILEMODE_READONLY, FILETYPE_CONFIG);
	
	if (fp != NULL) 
	{
	 	if (fscanf(fp, "%d %d", &modeX, &modeY) == 2) 
		{
			fclose(fp);
		
			if (IsVideoModeSupported(modeX, modeY))
			{
				g_currentVideoX = modeX;
				g_currentVideoY = modeY;
				validResolutionFound = TRUE;
			}
		} 
		else 
		{
			fclose(fp);
		}
	}
	
	// Find a valid mode supported on this device
	if (!validResolutionFound)
	{
		/* Try 640x480 first */
		if (IsVideoModeSupported(640, 480))
		{
			g_currentVideoX = 640;
			g_currentVideoY = 480;
		} 
		else
		{
			NextAvailableVideoMode(0, 0, &g_currentVideoX, &g_currentVideoY);
		}
	}
}

void SaveVideoModePreferences()
{
	FILE *fp;
	
	fp = OpenGameFile("AvP_TempVideo.cfg", FILEMODE_WRITEONLY, FILETYPE_CONFIG);
	if (fp != NULL) 
	{
		fprintf(fp, "%d %d", g_currentVideoX, g_currentVideoY);
		fclose(fp);
	}
}

char *GetVideoModeLibraryType()
{
#ifdef GLES1
	return "GLES";
#else
	return "OpenGL";
#endif
}

char *GetVideoModeResolutionString()
{
	static char buf[64];
	_snprintf(buf, 64, "%dx%d", g_currentVideoX, g_currentVideoY);
	return buf;
}