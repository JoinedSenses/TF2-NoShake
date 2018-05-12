#pragma semicolon 1
#include <sourcemod>

#pragma newdecls required

public void OnPluginStart() {
	HookUserMessage(GetUserMessageId("Shake"), OnShakeTransmit, true);
}

public Action OnShakeTransmit(UserMsg msg_id, BfRead msg, const int[] players, int playersNum,
		bool reliable, bool init) {
	return Plugin_Handled;
}