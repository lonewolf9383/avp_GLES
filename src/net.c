#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

#include "fixer.h"

#include "3dc.h"
#include "inline.h"
#include "module.h"
#include "stratdef.h"
#include "equipmnt.h"

#include "pldnet.h"
#include "net.h"
#include <SDL/SDL_net.h>
#include <assert.h>
#include "avp_menus.h"

enum PacketTypes
{
	PACKETTYPE_SYSTEM_NAMESYNC = 0,		// Name sync. Client sends there name over. Server sends all player names
	PACKETTYPE_SYSTEM_NO_SPACE,			// Client has joined a host that is full
	PACKETTYPE_SYSTEM_YOURID,			// Server informs client of its id
	PACKETTYPE_SYSTEM_NEW_PLAYER,		// A new player has joined.
	PACKETTYPE_SYSTEM_PLAYER_LEFT,		// A player has left. 
	PACKETTYPE_GAME,					// Game specific data
};

// Every packet has the header. In the case of PACKETTYPE_GAME packets this is followed by the 
// game datas header (NETMESSAGEHEADER)
PACKED_PUSH
typedef struct SPacketHeader
{
	NetworkID fromClientID;
	unsigned char packetID;
	unsigned short packetSize;
} PACKED SPacketHeader;
PACKED_POP

TCPsocket g_primarySocket;
TCPsocket g_clientSockets[MAX_PLAYERS];
SDLNet_SocketSet g_socketSet;

NetworkID g_netID = 0;

int QuickStartMultiplayer=1;
SPlayerName g_playerName;

BOOL NetInit(void);
void NetQuit(void);
BOOL NetUpdate(void);
static void AcceptNewClient(void);
static BOOL NetHostSendAllPlayersToNewClient(NetworkID toClientID);
static BOOL NetSendSystemPacket(TCPsocket toSocket, BOOL toAllPlayers, void *pPacketData, unsigned int packetSize);
static BOOL NetSendSystemDataSocket(short packetID, TCPsocket toSocket, BOOL toAllPlayers, void *pData, unsigned int dataSize);
static BOOL NetSendSystemData(short packetID, NetworkID toID, BOOL toAllPlayers, void *pData, unsigned int dataSize);
static BOOL g_netInitialised = FALSE;

#define MAX_PACKET_SIZE_PLUS_HEADER (NET_MESSAGEBUFFERSIZE + sizeof(SPacketHeader))
char g_receiveBuffer[MAX_PACKET_SIZE_PLUS_HEADER];
SPacketHeader *g_pReceiveHeader = (SPacketHeader*)g_receiveBuffer;
char *g_pReceiveData = (g_receiveBuffer + sizeof(SPacketHeader));

char g_sendBuffer[MAX_PACKET_SIZE_PLUS_HEADER];
SPacketHeader *g_pSendHeader = (SPacketHeader*)g_sendBuffer;
char *g_pSendData = (g_sendBuffer + sizeof(SPacketHeader));

BOOL NetInit(void)
{
	if (!g_netInitialised)
	{
		AvP.Network==I_No_Network;
		g_netInitialised = (SDLNet_Init() == 0) ? TRUE : FALSE;
		return g_netInitialised;
	}
	return TRUE;
}

static void EndCurrentConnections(void)
{
	if (g_primarySocket)
	{
		SDLNet_TCP_Close(g_primarySocket);
	}
	
	// Close all client connections
	int i;
	for (i = 0; i < MAX_PLAYERS; ++i)
	{
		if (g_clientSockets[i])
		{
			SDLNet_TCP_Close(g_clientSockets[i]);
		}
	}
	
	AvP.Network = I_No_Network;
}

void NetQuit(void)
{
	if (g_netInitialised)
	{
		EndCurrentConnections();
		SDLNet_Quit();
		g_netInitialised = FALSE;
	}
}

void NetDisconnect(void)
{
	if (g_netInitialised)
	{
		EndCurrentConnections();
	}
}

BOOL NetHost(short int portNumber, short int maxPlayers, const char *playerName, char *sessionName, int species, int gamestyle, int level)
{
	if (!g_netInitialised)
	{
		if (!NetInit())
			return FALSE;
	}
	else
		EndCurrentConnections();
	
	// Create a port to listen on
	IPaddress hostAddress;
	if (SDLNet_ResolveHost(&hostAddress, NULL, portNumber) == -1)
	{
		printf("SDLNet_Error: %s\n", SDLNet_GetError());
		return FALSE;
	}
	
	g_primarySocket = SDLNet_TCP_Open(&hostAddress);
	if (!g_primarySocket)
	{
		printf("Unable to listen on socket: %s\n", SDLNet_GetError());
		return FALSE;
	}
	
	int availableCharacterTypes = DetermineAvailableCharacterTypes(FALSE);
	maxPlayers = (maxPlayers < 0) ? 1 : ((availableCharacterTypes < maxPlayers) ? availableCharacterTypes : maxPlayers); 
	
	assert(maxPlayers <= MAX_PLAYERS);
	if (maxPlayers > MAX_PLAYERS)
		maxPlayers = MAX_PLAYERS;
	
	 // Create the player socket set
	g_socketSet = SDLNet_AllocSocketSet(maxPlayers);
	if (!g_socketSet)
	{
		printf("Unable to create socket set: %s\n", SDLNet_GetError());
		EndCurrentConnections();
		return FALSE;
	}
	 
	SDLNet_AddSocket(g_socketSet, (SDLNet_GenericSocket)g_primarySocket);
	AvP.Network = I_Host;
	 
	//if(!netGameData.skirmishMode) 
	//{
	fprintf(stderr, "DirectPlay_HostGame(%s, %s, %d, %d, %d)\n", playerName, sessionName, species, gamestyle, level);
	g_netID = HOST_ID;
	strncpy(g_playerName.playerName, playerName, MAX_PLAYER_NAME_LENGTH);
	
	InitAVPNetGameForHost(species,gamestyle,level);
	
	return TRUE;
}

BOOL NetConnect(const char *pIpAddress, short int port, const char *playerName)
{
	IPaddress hostAddress;
	if (SDLNet_ResolveHost(&hostAddress, pIpAddress, port) == -1)
	{
		printf("SDLNet_Error: %s\n", SDLNet_GetError());
		return FALSE;
	}
	
	g_primarySocket = SDLNet_TCP_Open(&hostAddress);
	if (!g_primarySocket)
	{
		// Unable to connect
		printf("SDLNet_Error: %s\n", SDLNet_GetError());
		return FALSE;
	}
	
	g_socketSet = SDLNet_AllocSocketSet(1);
	if (!g_socketSet)
	{
		printf("Unable to create socket set: %s\n", SDLNet_GetError());
		EndCurrentConnections();
		return FALSE;
	}
	
	SDLNet_AddSocket(g_socketSet, (SDLNet_GenericSocket)g_primarySocket);

	AvP.Network = I_Peer;
	InitAVPNetGame();

	// Send player name as the first message
	strncpy(g_playerName.playerName, playerName, MAX_PLAYER_NAME_LENGTH);
	
	// The data in the packet to send...
	SPlayerNameNet playersName;
	strncpy(playersName.playerName, playerName, MAX_PLAYER_NAME_LENGTH);
	NetSendSystemData(PACKETTYPE_SYSTEM_NAMESYNC, NO_ID, TRUE, (void*)&playersName, sizeof(SPlayerNameNet));

	return TRUE;
}

// Returns size of data recieved
BOOL NetRecieveData(TCPsocket fromSocket, NetworkID fromSocketIndex)
{
	int dataRead = 0;
	// All data will be sent with a packet header telling us its size
	dataRead += SDLNet_TCP_Recv(fromSocket, g_pReceiveHeader, sizeof(SPacketHeader));
	if (dataRead <= 0)	// Error probably been disconnected!
	{
		return FALSE;
	}
		
	// Read in the data part of the packet
	if (g_pReceiveHeader->packetSize > 0)
	{
		dataRead += SDLNet_TCP_Recv(fromSocket, g_pReceiveData, g_pReceiveHeader->packetSize);

		if (dataRead < sizeof(SPacketHeader) + g_pReceiveHeader->packetSize)
		{
			return FALSE;	// Error probably disconnected
		}
	}
	
	// Raise packet event
	switch(g_pReceiveHeader->packetID)
	{
	case PACKETTYPE_GAME:
		ProcessGameMessage(g_pReceiveHeader->fromClientID, g_pReceiveData, g_pReceiveHeader->packetSize);
		
		// If hosting then forward the packet to all other players
		if (AvP.Network == I_Host)
		{
			NetSendSystemPacket(fromSocket, TRUE, g_pReceiveHeader, sizeof(SPacketHeader) + g_pReceiveHeader->packetSize);
		}
		break;
	case PACKETTYPE_SYSTEM_NAMESYNC:
	{
		// Server recieves the players name from a new client. Note: At this point the client does not know its
		// id so we use the socket index to work it out!
		SPlayerNameNet *pPlayerNameData = (SPlayerNameNet*)g_pReceiveData;
		AddPlayerToGame(CLIENT_ID(fromSocketIndex), pPlayerNameData->playerName);
		
		// Send over details of existing players + the new clients ID
		NetHostSendAllPlayersToNewClient(CLIENT_ID(fromSocketIndex));
		
		// Send a message to all other existing clients to inform them of the new player
		SPlayerDetailsNet newClientsDetails;
		newClientsDetails.clientID = CLIENT_ID(fromSocketIndex);
		strncpy(newClientsDetails.playerName, pPlayerNameData->playerName, MAX_PLAYER_NAME_LENGTH);
		NetSendSystemData(PACKETTYPE_SYSTEM_NEW_PLAYER, CLIENT_ID(fromSocketIndex), TRUE, &newClientsDetails, sizeof(SPlayerDetailsNet));
		break;
	}
	case PACKETTYPE_SYSTEM_NO_SPACE:
		NetQuit();
		SetupNewMenu(AVPMENU_MULTIPLAYER_HOSTFULL);
		return FALSE;
	case PACKETTYPE_SYSTEM_YOURID:
	{
		// Client received its id + all other players details
		SClientIDNet *pClientsID = (SClientIDNet*)g_pReceiveData;
		g_netID = pClientsID->clientsID;
		NETGAME_PLAYERDATA *pClientData = &netGameData.playerData[PLAYER_INDEX(pClientsID->clientsID)];
		pClientData->playerId = pClientsID->clientsID;
		strncpy(pClientData->name, g_playerName.playerName, MAX_PLAYER_NAME_LENGTH);
		
		// Receive all other players details included in the packet
		SPlayerDetailsNet *pPlayerNetDetails = (SPlayerDetailsNet*)(g_pReceiveData + sizeof(SClientIDNet));
		unsigned int i;
		for(i = pClientsID->numberOfPlayerDetailsFollowing; i != 0; --i)
		{
			NETGAME_PLAYERDATA *pPlayer = &netGameData.playerData[PLAYER_INDEX(pPlayerNetDetails->clientID)];
			pPlayer->playerId = pPlayerNetDetails->clientID;
			strncpy(pPlayer->name, pPlayerNetDetails->playerName, MAX_PLAYER_NAME_LENGTH);
			++pPlayerNetDetails;
		}
		
		// We can now join the game
		SetupNewMenu(AVPMENU_MULTIPLAYER_JOINING);
		break;
	}
	case PACKETTYPE_SYSTEM_NEW_PLAYER:
	{
		SPlayerDetailsNet *pPlayerNetDetails = (SPlayerDetailsNet*)g_pReceiveData;
		AddPlayerToGame(pPlayerNetDetails->clientID, pPlayerNetDetails->playerName);
		break;
	}
	case PACKETTYPE_SYSTEM_PLAYER_LEFT:
	{
		SClientIDOnlyNet *pPlayerNet = (SClientIDOnlyNet*)g_pReceiveData;
		RemovePlayerFromGame(pPlayerNet->clientID);
		break;
	}
	}
	return TRUE;
}

static BOOL NetHostSendAllPlayersToNewClient(NetworkID toClientID)
{
	// Determine how many players details we have to send so we know the final size of the packet
	int totalPlayerDetailsToSend = 1;	// Always at least the host player!
	int i;
	int toClientIndex = CLIENT_SOCKET(toClientID);
	for(i = 0; i < MAX_PLAYERS; ++i)
	{
		if (i != toClientIndex && g_clientSockets[i] != NULL)
		{
			++totalPlayerDetailsToSend;
		}
	}
	
	unsigned int totalPacketSize = sizeof(SClientIDNet) + (sizeof(SPlayerDetailsNet) * totalPlayerDetailsToSend);
	char *pData = (char*)malloc(totalPacketSize);
	SClientIDNet *pPacketHead = (SClientIDNet*)pData;
	SPlayerDetailsNet *pPlayerDetails = (SPlayerDetailsNet*)(pData + sizeof(SClientIDNet));
	pPacketHead->clientsID = toClientID;
	pPacketHead->numberOfPlayerDetailsFollowing = totalPlayerDetailsToSend;
	
	// First the hosts details
	pPlayerDetails->clientID = HOST_ID;
	strncpy(pPlayerDetails->playerName, netGameData.playerData[PLAYER_INDEX(HOST_ID)].name, MAX_PLAYER_NAME_LENGTH);
	++pPlayerDetails;
	
	// Now all other clients
	for(i = 0; i < MAX_PLAYERS; ++i)
	{
		if (i != toClientIndex && g_clientSockets[i] != NULL)
		{
			pPlayerDetails->clientID = CLIENT_ID(i);
			strncpy(pPlayerDetails->playerName, netGameData.playerData[PLAYER_INDEX(CLIENT_ID(i))].name, MAX_PLAYER_NAME_LENGTH);
			++pPlayerDetails;
		}
	}
	
	BOOL returnVal = NetSendSystemData(PACKETTYPE_SYSTEM_YOURID, toClientID, FALSE, pData, totalPacketSize);
	free(pData);
	pData = NULL;
	return returnVal;
}

// Send the packet of data (do not call directly, instead use NetSendSystemData)
static BOOL NetSendSystemPacket(TCPsocket toSocket, BOOL toAllPlayers, void *pPacketData, unsigned int packetSize)
{
	if (AvP.Network==I_Peer)
	{
		// Send to host
		return SDLNet_TCP_Send(g_primarySocket, pPacketData, packetSize);
	}
	else if (toAllPlayers)
	{
		int i;
		for (i = 0 ; i < MAX_PLAYERS; ++i)
		{
			if (g_clientSockets[i] && g_clientSockets[i] != toSocket)
			{
				SDLNet_TCP_Send(g_clientSockets[i], pPacketData, packetSize);
			}
		}
		return TRUE;
	}
	else
	{	// Send to one client
		if (toSocket)
		{
			return SDLNet_TCP_Send(toSocket, pPacketData, packetSize);
		}
	}
	return FALSE;
}

// Used to send all packets. If the message is an ingame message use NetSendData
static BOOL NetSendSystemDataSocket(short packetID, TCPsocket toSocket, BOOL toAllPlayers, void *pData, unsigned int dataSize)
{
	if(AvP.Network==I_No_Network)
		return FALSE;
		
	assert(dataSize <= NET_MESSAGEBUFFERSIZE);
	if (dataSize > NET_MESSAGEBUFFERSIZE)
		return FALSE;
	
	assert(packetID <= 255);	// ID should fit into a single byte!
	
	// Put together the packet to send
	g_pSendHeader->fromClientID = g_netID;
	g_pSendHeader->packetID = (unsigned char)packetID;
	g_pSendHeader->packetSize = dataSize;
	memcpy(g_pSendData, pData, dataSize);
	
	return NetSendSystemPacket(toSocket, toAllPlayers, g_pSendHeader, sizeof(SPacketHeader) + dataSize);
}

static inline BOOL NetSendSystemData(short packetID, NetworkID toID, BOOL toAllPlayers, void *pData, unsigned int dataSize)
{
	NetSendSystemDataSocket(packetID, g_clientSockets[CLIENT_SOCKET(toID)], toAllPlayers, pData, dataSize);
}

// Send a custom packet. If toAllPlayers is false then the packet is only sent to the client toID (or the host if this is a client)
// If toAllPlayers is true then toID is the client not to send the message to
inline BOOL NetSendData(NetworkID toID, BOOL toAllPlayers, void *pData, unsigned int dataSize)
{
	// A packet should never be bigger than the send buffer!
	return NetSendSystemData(PACKETTYPE_GAME, toID, toAllPlayers, pData, dataSize);
}

BOOL NetUpdate(void)
{
	if (AvP.Network != I_No_Network)
	{
		int i;
		
		// Check for messages
		while (SDLNet_CheckSockets(g_socketSet, 0) > 0)
		{
			// First check the primary socket. On the client this is the only socket connecting to the host.
			// On the host this is the socket that accepts new players
			if (SDLNet_SocketReady(g_primarySocket))
			{
				assert(AvP.Network != I_No_Network);	// Should not be reached if not a host or client!
				
				if (AvP.Network==I_Host)
				{
					// Accept the new connection
					AcceptNewClient();
				}
				else
				{
					// Recieve data from the server
					if (!NetRecieveData(g_primarySocket, -1))
					{
						// Quit to main menu!
						QuitInGameToMainMenu(AVPMENU_MULTIPLAYER_CONNECTIONLOST);
						return FALSE;
					}
				}
			}
			
			for (i = 0; i < MAX_PLAYERS; ++i)
			{
				if (g_clientSockets[i] && SDLNet_SocketReady(g_clientSockets[i]))
				{
					// Recieved a message from a client. If no data can be read then the player has disconnected!
					if (!NetRecieveData(g_clientSockets[i], i))
					{
						// Release the socket. The game handles disconnects by just detecting when the clients ghost times out (Apparently)
						SDLNet_TCP_DelSocket(g_socketSet, g_clientSockets[i]);
						SDLNet_TCP_Close(g_clientSockets[i]);
						g_clientSockets[i] = NULL;
						
						// Send a message to all other players that someone has left
						NETGAME_PLAYERDATA *pPlayer = &netGameData.playerData[PLAYER_INDEX(CLIENT_ID(i))];
						SClientIDOnlyNet clientLeftID;
						clientLeftID.clientID = CLIENT_ID(i);
						NetSendSystemData(PACKETTYPE_SYSTEM_PLAYER_LEFT, NO_ID, TRUE, &clientLeftID, sizeof(SClientIDOnlyNet));
						
						RemovePlayerFromGame(CLIENT_ID(i));
					}
				}
			}
		}
		return TRUE;
	}
	
	return FALSE;
}

static void AcceptNewClient(void)
{
	assert (AvP.Network == I_Host);
		
	TCPsocket newConnection = SDLNet_TCP_Accept(g_primarySocket);
	if (newConnection)
	{
		// Find a slot for the player
		int i;
		for (i = 0; i < MAX_PLAYERS; ++i)
		{
			if (!g_clientSockets[i])
			{
				// Accepted!
				g_clientSockets[i] = newConnection;
				SDLNet_AddSocket(g_socketSet, (SDLNet_GenericSocket)newConnection);
				// Now we have to wait for the player to send over its name before anything else can happen!
				return;
			}
		}
		
		// No space :-(
		NetSendSystemDataSocket(PACKETTYPE_SYSTEM_NO_SPACE, newConnection, FALSE, NULL, 0);
	}
}
