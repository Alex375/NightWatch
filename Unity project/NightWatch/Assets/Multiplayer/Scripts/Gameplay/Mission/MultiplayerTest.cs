using System.Collections;
using System.Collections.Generic;
using Photon.Pun;
using Photon.Realtime;
using UnityEngine;

public class MultiplayerTest : MonoBehaviourPunCallbacks
{
    public bool Survivor = true;

    private GameObject localGameObject;
    void Awake()
    {
        PhotonNetwork.AutomaticallySyncScene = true;
        PhotonNetwork.ConnectUsingSettings();
    }

    public override void OnConnectedToMaster()
    {
        base.OnConnectedToMaster();
        PhotonNetwork.JoinLobby();
    }

    public override void OnJoinedLobby()
    {
        base.OnJoinedLobby();
        PhotonNetwork.JoinOrCreateRoom("testRoom", new RoomOptions(), TypedLobby.Default);
        PhotonNetwork.LocalPlayer.CustomProperties["Survivor"] = Survivor;
    }
}
