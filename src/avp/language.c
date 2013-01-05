/*KJL***************************************
*    Language Internationalization Code    *
***************************************KJL*/
#include "3dc.h"
#include "inline.h"
#include "module.h"
#include "gamedef.h"


#include "langenum.h"
#include "language.h"
#include "huffman.hpp"

// DHM 12 Nov 97: hooks for C++ string handling code:
#include "strtab.hpp"

#define UseLocalAssert Yes
#include "ourasert.h"
#include "avp_menus.h"


#ifdef AVP_DEBUG_VERSION
	#define USE_LANGUAGE_TXT 0
#else
	#define USE_LANGUAGE_TXT 1
#endif

static char EmptyString[]="";

static char *TextStringPtr[MAX_NO_OF_TEXTSTRINGS] = { EmptyString };
static char *TextBufferPtr;

static void SetupOverrideTextStrings(void);

void InitTextStrings(void)
{
	char *filename;
	char *textPtr;
	int i;

	/* language select here! */
	GLOBALASSERT(AvP.Language>=0);
	GLOBALASSERT(AvP.Language<I_MAX_NO_OF_LANGUAGES);
	
#if MARINE_DEMO
	filename = "menglish.txt";
#elif ALIEN_DEMO
	filename = "aenglish.txt";
#elif USE_LANGUAGE_TXT
	filename = "language.txt";
#else
	filename = LanguageFilename[AvP.Language];
#endif
	TextBufferPtr = LoadTextFile(filename);
		
	if (TextBufferPtr == NULL) {
		/* NOTE:
		   if this load fails, then most likely the game is not 
		   installed correctly. 
		   SBF
		  */ 
		fprintf(stderr, "ERROR: unable to load %s language text file\n",
			 filename);
		exit(1);
	}
	
	if (!strncmp (TextBufferPtr, "REBCRIF1", 8))
	{
		textPtr = (char*)HuffmanDecompress((HuffmanPackage*)(TextBufferPtr)); 		
		DeallocateMem(TextBufferPtr);
		TextBufferPtr=textPtr;
	}
	else
	{
		textPtr = TextBufferPtr;
	}

	AddToTable( EmptyString );

	for (i=1; i<TOTAL_STRINGS_IN_FILE; i++)
	{	
		/* scan for a quote mark */
		while (*textPtr++ != '"') 
			if (*textPtr == '@') return; /* '@' should be EOF */

		/* now pointing to a text string after quote mark*/
		TextStringPtr[i] = textPtr;

		/* scan for a quote mark */
		while (*textPtr != '"')
		{	
			textPtr++;
		}

		/* change quote mark to zero terminator */
		*textPtr = 0;
		textPtr++;

		AddToTable( TextStringPtr[i] );
	}
	
	SetupOverrideTextStrings();
}

void KillTextStrings(void)
{
	UnloadTextFile(LanguageFilename[AvP.Language],TextBufferPtr);

	UnloadTable();
}

char *GetTextString(enum TEXTSTRING_ID stringID)
{
	LOCALASSERT(stringID<MAX_NO_OF_TEXTSTRINGS);

	return TextStringPtr[stringID];
}

struct STextStringOverride
{
	enum TEXTSTRING_ID replaceID;
	char *pString;	
};

static struct STextStringOverride g_overrideStrings[] = {
														 {TEXTSTRING_JOYSTICKCONTROLS_AXIS2_VERTICAL, "Joystick Axis 2 X"},
														 {TEXTSTRING_JOYSTICKCONTROLS_AXIS2_VERTICAL_HELP, "Set what Joystick Axis 2 (horizontal) should control."},
														 {TEXTSTRING_JOYSTICKCONTROLS_AXIS2_HORIZONTAL, "Joystick Axis 2 Y"},
														 {TEXTSTRING_JOYSTICKCONTROLS_AXIS2_HORIZONTAL_HELP, "Set what Joystick Axis 2 (vertical) should control."},
														 {TEXTSTRING_JOYSTICKCONTROLS_AXIS2_REVERSED, "Invert Axis 2 Y"},
														 {TEXTSTRING_JOYSTICKCONTROLS_AXIS2_REVERSED_HELP, "Invert Axis 2 (Vertical)"},
														 {TEXTSTRING_JOYSTICKCONTROLS_AXIS2_HORIZONTAL_SENSITIVITY, "Axis 2 Horizontal Sensitivity"},
														 {TEXTSTRING_JOYSTICKCONTROLS_AXIS2_HORIZONTAL_SENSITIVITY_HELP, "Horizontal sensitivity for Axis 2 (Axis 1 is the same as mouse sensitivity)"},
														 {TEXTSTRING_JOYSTICKCONTROLS_AXIS2_VERTICAL_SENSITIVITY, "Axis 2 Vertical Sensitivity"},
														 {TEXTSTRING_JOYSTICKCONTROLS_AXIS2_VERTICAL_SENSITIVITY_HELP, "Vertical sensitivity for Axis 2 (Axis 1 is the same as mouse sensitivity)"},
														 {TEXTSTRING_MULTIPLAYER_CONNECTING_TITLE, "Connecting to game..."},
														 {TEXTSTRING_MULTIPLAYER_CONNECT_FAILED, "Unable to connect to server"},
														 {TEXTSTRING_OK, "Ok"},
														 {TEXTSTRING_MULTIPLAYER_CONNECTION_LOST, "Connection Lost"},
														 {TEXTSTRING_MULTIPLAYER_HOST_FAILED, "Unable to host. Firewall?"},
														 {TEXTSTRING_MULTIPLAYER_HOSTFULL, "The host is full."},
														 {TEXTSTRING_MULTIPLAYER_PORT, "Port Number"},
														};
														 

static void SetupOverrideTextStrings(void)
{
	int numOverrideStrings = sizeof(g_overrideStrings) / sizeof(struct STextStringOverride);
	int i;
	for(i = 0; i < numOverrideStrings; ++i)
	{
		TextStringPtr[g_overrideStrings[i].replaceID] = g_overrideStrings[i].pString;
	}
}


