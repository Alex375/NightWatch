using System.Collections;
using System.Collections.Generic;
using Photon.Pun;
using Photon.Realtime;
using UnityEngine;

public class TestMultiplayer : MonoBehaviourPunCallbacks
{
    public bool Survivor;
    void Awake()
    {
        PhotonNetwork.ConnectUsingSettings();
        PhotonNetwork.AutomaticallySyncScene = true;
        PhotonNetwork.NickName = "test";

    }

    public override void OnConnectedToMaster()
    {
        PhotonNetwork.JoinLobby();
        
    }

    public override void OnJoinedLobby()
    {
        PhotonNetwork.JoinOrCreateRoom("testRoom", new RoomOptions(), TypedLobby.Default);
        if (Survivor)
        {
            PhotonNetwork.Instantiate("PhotonPrefabs/Player", new Vector3(0, 0, 0), new Quaternion(0, 0, 0, 0));
        }
        else
        {
            PhotonNetwork.LocalPlayer.CustomProperties["Survivor"] = false;
        }
    }
}
