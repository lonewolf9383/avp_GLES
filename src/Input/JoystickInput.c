#include <SDL/SDL.h>
#include "fixer.h"
#include "3dc.h"
#include "platform.h"

// We support either a single joystick with 4 axes or 2 joysticks with one axes each (Open Pandora)
#define JOYSTICK_MAX 2
SDL_Joystick *g_joystickHandles[JOYSTICK_MAX] = {NULL, NULL};
JOYINFOEX JoystickData;
JOYCAPS JoystickCaps;
BOOL g_joystickEnabled = TRUE;

extern unsigned char KeyboardInput[MAX_NUMBER_OF_INPUT_KEYS];
extern unsigned char GotAnyKey;

unsigned char DebouncedKeyboardInput[MAX_NUMBER_OF_INPUT_KEYS];

BOOL InitialiseJoystick()
{
	SDL_InitSubSystem(SDL_INIT_JOYSTICK);
	
	int numJoysticks = SDL_NumJoysticks();
	if (numJoysticks > 0) 
	{
		// Open the last two (works for pandora + makes little difference for other platforms hopefully!)
		int i = (numJoysticks > 2) ? numJoysticks - 2 : 0;
		g_joystickHandles[0] = SDL_JoystickOpen(i);

		if (SDL_JoystickNumAxes(g_joystickHandles[0]) < 4 && numJoysticks > 1)
		{	// Opened joystick only contains one axes so open a second joystick if available
			g_joystickHandles[1] = SDL_JoystickOpen(i+1);
		}
		
		JoystickCaps.wCaps = 0; 		
		JoystickData.dwXpos = 0;
		JoystickData.dwYpos = 0;
		JoystickData.dwXpos2 = 0;
		JoystickData.dwYpos2 = 0;
		JoystickData.dwRpos = 0;
		JoystickData.dwUpos = 0;
		JoystickData.dwVpos = 0;
	}
}

void CloseJoystick()
{
	if (g_joystickHandles[0]) 
	{
		SDL_JoystickClose(g_joystickHandles[0]);
		g_joystickHandles[0] = NULL;
	}
	if (g_joystickHandles[1]) 
	{
		SDL_JoystickClose(g_joystickHandles[1]);
		g_joystickHandles[1] = NULL;
	}
}
	

void ReadJoysticks()
{
	if (g_joystickHandles[0] == NULL || g_joystickEnabled == FALSE)
		return;
		
	int axes, balls, hats;
	Uint8 hat;
	
	JoystickData.dwXpos = 0;
	JoystickData.dwYpos = 0;
	JoystickData.dwXpos2 = 0;
	JoystickData.dwYpos2 = 0;
	JoystickData.dwRpos = 0;
	JoystickData.dwUpos = 0;
	JoystickData.dwVpos = 0;
	
	SDL_JoystickUpdate();
	
	axes = SDL_JoystickNumAxes(g_joystickHandles[0]);
	balls = SDL_JoystickNumBalls(g_joystickHandles[0]);

	JoystickData.dwXpos = SDL_JoystickGetAxis(g_joystickHandles[0], 0);
	JoystickData.dwYpos = SDL_JoystickGetAxis(g_joystickHandles[0], 1);
	
	// Read second set from same joystick
	if (axes > 2)
	{
		if (axes > 2) 
		{
			JoystickData.dwYpos2 = SDL_JoystickGetAxis(g_joystickHandles[0], 2);
		}
		if (axes > 3)
		{
			JoystickData.dwXpos2 = SDL_JoystickGetAxis(g_joystickHandles[0], 3);
		}
	}
	else if (g_joystickHandles[1] != NULL)
	{	// Read 3rd and 4th axes from second joystick
		JoystickData.dwXpos2 = SDL_JoystickGetAxis(g_joystickHandles[1], 0);
		JoystickData.dwYpos2 = SDL_JoystickGetAxis(g_joystickHandles[1], 1);
	}
}

void UpdateJoystickButtons()
{
	if (g_joystickEnabled == FALSE || g_joystickHandles[0] == NULL)
		return;
		
	int numbuttons;
	SDL_JoystickUpdate();
		
	numbuttons = SDL_JoystickNumButtons(g_joystickHandles[0]);
	if (numbuttons > 16) numbuttons = 16;
	
	int x;
	for (x = 0; x < numbuttons; x++) 
	{
		if (SDL_JoystickGetButton(g_joystickHandles[0], x)) 
		{
			//int GotAnyKey = 1;
			if (!KeyboardInput[KEY_JOYSTICK_BUTTON_1+x])
			{
				KeyboardInput[KEY_JOYSTICK_BUTTON_1+x] = 1;
				DebouncedKeyboardInput[KEY_JOYSTICK_BUTTON_1+x] = 1;
				handle_keypress(KEY_JOYSTICK_BUTTON_1+x, KEY_JOYSTICK_BUTTON_1+x, 1);
			}
		} 
		else 
		{
			KeyboardInput[KEY_JOYSTICK_BUTTON_1+x] = 0;
		}	
	}
}