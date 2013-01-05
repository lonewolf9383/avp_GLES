#include <SDL/SDL.h>
#include "3dc.h"
#include "platform.h"

extern unsigned char KeyboardInput[MAX_NUMBER_OF_INPUT_KEYS];
int DebouncedGotAnyKey;
unsigned char DebouncedKeyboardInput[MAX_NUMBER_OF_INPUT_KEYS];
extern unsigned char GotAnyKey;

int KeySymToKey(int keysym)
{
	switch(keysym) 
	{
		case SDLK_ESCAPE:
			return KEY_ESCAPE;
		case SDLK_0:
			return KEY_0;
		case SDLK_1:
			return KEY_1;
		case SDLK_2:
			return KEY_2;
		case SDLK_3:
			return KEY_3;
		case SDLK_4:
			return KEY_4;
		case SDLK_5:
			return KEY_5;
		case SDLK_6:
			return KEY_6;
		case SDLK_7:
			return KEY_7;
		case SDLK_8:
			return KEY_8;
		case SDLK_9:
			return KEY_9;
		
		case SDLK_a:
			return KEY_A;
		case SDLK_b:
			return KEY_B;
		case SDLK_c:
			return KEY_C;
		case SDLK_d:
			return KEY_D;
		case SDLK_e:
			return KEY_E;
		case SDLK_f:
			return KEY_F;
		case SDLK_g:
			return KEY_G;
		case SDLK_h:
			return KEY_H;
		case SDLK_i:
			return KEY_I;
		case SDLK_j:
			return KEY_J;
		case SDLK_k:
			return KEY_K;
		case SDLK_l:
			return KEY_L;
		case SDLK_m:
			return KEY_M;
		case SDLK_n:
			return KEY_N;
		case SDLK_o:
			return KEY_O;
		case SDLK_p:
			return KEY_P;
		case SDLK_q:
			return KEY_Q;
		case SDLK_r:
			return KEY_R;
		case SDLK_s:
			return KEY_S;
		case SDLK_t:
			return KEY_T;
		case SDLK_u:
			return KEY_U;
		case SDLK_v:
			return KEY_V;
		case SDLK_w:
			return KEY_W;
		case SDLK_x:
			return KEY_X;
		case SDLK_y:
			return KEY_Y;
		case SDLK_z:
			return KEY_Z;
				
		case SDLK_LEFT:
			return KEY_LEFT;
		case SDLK_RIGHT:
			return KEY_RIGHT;
		case SDLK_UP:
			return KEY_UP;
		case SDLK_DOWN:
			return KEY_DOWN;		
		case SDLK_RETURN:
			return KEY_CR;
		case SDLK_TAB:
			return KEY_TAB;
		case SDLK_INSERT:
			return KEY_INS;
		case SDLK_DELETE:
			return KEY_DEL;
		case SDLK_END:
			return KEY_END;
		case SDLK_HOME:
			return KEY_HOME;
		case SDLK_PAGEUP:
			return KEY_PAGEUP;
		case SDLK_PAGEDOWN:
			return KEY_PAGEDOWN;
		case SDLK_BACKSPACE:
			return KEY_BACKSPACE;
		case SDLK_COMMA:
			return KEY_COMMA;
		case SDLK_PERIOD:
			return KEY_FSTOP;
		case SDLK_SPACE:
			return KEY_SPACE;
			
		case SDLK_LSHIFT:
			return KEY_LEFTSHIFT;
		case SDLK_RSHIFT:
			return KEY_RIGHTSHIFT;
		case SDLK_LALT:
			return KEY_LEFTALT;
		case SDLK_RALT:
			return KEY_RIGHTALT;
		case SDLK_LCTRL:
			return KEY_LEFTCTRL;
		case SDLK_RCTRL:
			return KEY_RIGHTCTRL;

		case SDLK_CAPSLOCK:
			return KEY_CAPS;
		case SDLK_NUMLOCK:
			return KEY_NUMLOCK;
		case SDLK_SCROLLOCK:
			return KEY_SCROLLOK;
			
		case SDLK_KP0:
			return KEY_NUMPAD0;
		case SDLK_KP1:
			return KEY_NUMPAD1;
		case SDLK_KP2:
			return KEY_NUMPAD2;
		case SDLK_KP3:
			return KEY_NUMPAD3;
		case SDLK_KP4:
			return KEY_NUMPAD4;
		case SDLK_KP5:
			return KEY_NUMPAD5;
		case SDLK_KP6:
			return KEY_NUMPAD6;
		case SDLK_KP7:
			return KEY_NUMPAD7;
		case SDLK_KP8:
			return KEY_NUMPAD8;
		case SDLK_KP9:
			return KEY_NUMPAD9;
		case SDLK_KP_MINUS:
			return KEY_NUMPADSUB;
		case SDLK_KP_PLUS:
			return KEY_NUMPADADD;
		case SDLK_KP_PERIOD:
			return KEY_NUMPADDEL;
		case SDLK_KP_ENTER:
			return KEY_NUMPADENTER;
		case SDLK_KP_DIVIDE:
			return KEY_NUMPADDIVIDE;
		case SDLK_KP_MULTIPLY:
			return KEY_NUMPADMULTIPLY;
	
		case SDLK_LEFTBRACKET:
			return KEY_LBRACKET;
		case SDLK_RIGHTBRACKET:
			return KEY_RBRACKET;
		case SDLK_SEMICOLON:
			return KEY_SEMICOLON;
		case SDLK_QUOTE:
			return KEY_APOSTROPHE;
		case SDLK_BACKQUOTE:
			return KEY_GRAVE;
		case SDLK_BACKSLASH:
			return KEY_BACKSLASH;
		case SDLK_SLASH:
			return KEY_SLASH;
/*		case SDLK_
			return KEY_CAPITAL; */
		case SDLK_MINUS:
			return KEY_MINUS;
		case SDLK_EQUALS:
			return KEY_EQUALS;
		case SDLK_LSUPER:
			return KEY_LWIN;
		case SDLK_RSUPER:
			return KEY_RWIN;
/*		case SDLK_
			return KEY_APPS; */
		
		case SDLK_F1:
			return KEY_F1;
		case SDLK_F2:
			return KEY_F2;
		case SDLK_F3:
			return KEY_F3;
		case SDLK_F4:
			return KEY_F4;
		case SDLK_F5:
			return KEY_F5;
		case SDLK_F6:
			return KEY_F6;
		case SDLK_F7:
			return KEY_F7;
		case SDLK_F8:
			return KEY_F8;
		case SDLK_F9:
			return KEY_F9;
		case SDLK_F10:
			return KEY_F10;
		case SDLK_F11:
			return KEY_F11;
		case SDLK_F12:
			return KEY_F12;

/* finish foreign keys */

		default:
			return -1;
	}
}

void handle_keypress(int key, int unicode, int press)
{	
	void RE_ENTRANT_QUEUE_WinProc_AddMessage_WM_CHAR(char Ch);
	void RE_ENTRANT_QUEUE_WinProc_AddMessage_WM_KEYDOWN(int wParam);

	if (key == -1)
		return;

	if (press) {
		switch(key) {
			case KEY_BACKSPACE:
				RE_ENTRANT_QUEUE_WinProc_AddMessage_WM_KEYDOWN(VK_BACK);
				break;
			case KEY_END:
				RE_ENTRANT_QUEUE_WinProc_AddMessage_WM_KEYDOWN(VK_END);
				break;
			case KEY_HOME:
				RE_ENTRANT_QUEUE_WinProc_AddMessage_WM_KEYDOWN(VK_HOME);
				break;
			case KEY_LEFT:
				RE_ENTRANT_QUEUE_WinProc_AddMessage_WM_KEYDOWN(VK_LEFT);
				break;
			case KEY_UP:
				RE_ENTRANT_QUEUE_WinProc_AddMessage_WM_KEYDOWN(VK_UP);
				break;
			case KEY_RIGHT:
				RE_ENTRANT_QUEUE_WinProc_AddMessage_WM_KEYDOWN(VK_RIGHT);
				break;
			case KEY_DOWN:
				RE_ENTRANT_QUEUE_WinProc_AddMessage_WM_KEYDOWN(VK_DOWN);
				break;
			case KEY_INS:
				RE_ENTRANT_QUEUE_WinProc_AddMessage_WM_KEYDOWN(VK_INSERT);
				break;
			case KEY_DEL:
				RE_ENTRANT_QUEUE_WinProc_AddMessage_WM_KEYDOWN(VK_DELETE);
				break;
			case KEY_TAB:
				RE_ENTRANT_QUEUE_WinProc_AddMessage_WM_KEYDOWN(VK_TAB);
				break;
			default:
				if (unicode && !(unicode & 0xFF80)) {
					RE_ENTRANT_QUEUE_WinProc_AddMessage_WM_CHAR(unicode);
					KeyboardEntryQueue_Add(unicode);
				}
				break;
		}
	}
	
	if (press && !KeyboardInput[key]) {
		DebouncedKeyboardInput[key] = 1;
		DebouncedGotAnyKey = 1;
	}
	
	if (press)
		GotAnyKey = 1;
	KeyboardInput[key] = press;
}

void handle_buttonpress(int button, int press)
{
	int key;

	switch(button) {
		case 4: /* mouse wheel up */
			key = KEY_MOUSEWHEELUP;
			break;
		case 5: /* mouse wheel down */
			key = KEY_MOUSEWHEELDOWN;
			break;
		default: /* other buttons are handled elsewhere */
			return;
	}
	
	/* since this currently only handles wheel up/down */
	if (press == 0)
		return;
		
	if (press && !KeyboardInput[key]) {
		DebouncedKeyboardInput[key] = 1;
	}
	
	GotAnyKey = 1;
	KeyboardInput[key] = press;
}
