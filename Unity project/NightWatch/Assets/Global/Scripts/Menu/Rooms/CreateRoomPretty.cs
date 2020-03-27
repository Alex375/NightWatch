using System.Collections;
using System.Collections.Generic;
using Photon.Pun;
using Photon.Realtime;
using UnityEngine;
using UnityEngine.UI;

public class CreateRoomPretty : MonoBehaviourPunCallbacks
{
    public Text roomName;
    // Start is called before the first frame update

    public void OnClick_CreateRoom()
    {
        if (!PhotonNetwork.IsConnected)
        {
            print("Cannot create room, photon not connected");
            return;
        }

        if (roomName.text.Length >= 1)
        {
            RoomOptions options = new RoomOptions();
            options.MaxPlayers = 4;
            options.BroadcastPropsChangeToAll = true;
            PhotonNetwork.JoinOrCreateRoom(roomName.text, options, TypedLobby.Default);    
        }

        
    }

    public override void OnCreatedRoom()
    {
        print("Created room successfully.");
    }

    public override void OnCreateRoomFailed(short returnCode, string message)
    {
        print("Room creation failed, reason : " + message);
    }
}