#pragma once

#include "../fixer.h"

extern int g_currentVideoX;
extern int g_currentVideoY;

BOOL IsVideoModeSupported(int sizeX, int sizeY);
BOOL NextAvailableVideoMode(int currentSizeX, int currentSizeY, int *pNextX, int *pNextY);
BOOL PrevAvailableVideoMode(int currentSizeX, int currentSizeY, int *pPrevX, int *pPrevY);
void LoadInitialVideoModeSettings();
void SaveVideoModePreferences();
char *GetVideoModeResolutionString();
char *GetVideoModeLibraryType();
