#ifndef AVP_NET_H
#define AVP_NET_H

#define MAX_PLAYERS 8
#define NO_ID -1
#define HOST_ID 1
#define FIRST_CLIENT_ID (HOST_ID + 1)

// Convert a clientID to a socket index
#define CLIENT_SOCKET(clientID) (clientID - FIRST_CLIENT_ID)

// Convert a socket index to a clientID
#define CLIENT_ID(socketIndex) (socketIndex + FIRST_CLIENT_ID)

// Convert from NetworkID to an index in the player details array
#define PLAYER_INDEX(clientID) (clientID - 1)

extern NetworkID g_netID;

enum SystemEvents
{
	NETEVENT_CLIENT_JOINED = 1, // This client has been accepted into the game
};

BOOL NetInit(void);
void NetQuit(void);

BOOL NetHost(short int portNumber, short int maxPlayers, const char *playerName, char *sessionName, int species, int gamestyle, int level);
BOOL NetConnect(const char *pIPAddress, short int portNumber, const char *playerName);
void NetDisconnect(void);
BOOL NetUpdate(void);

#endif
