using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Photon.Pun;
using Photon.Realtime;

public class ConnectPhoton : MonoBehaviourPunCallbacks
{
    
    // Start is called before the first frame update
    void Start()
    {
        PhotonNetwork.GameVersion = MasterManager.GameSettings.GameVersion;
        PhotonNetwork.ConnectUsingSettings();
        PhotonNetwork.AutomaticallySyncScene = true;
        PhotonNetwork.NickName = MasterManager.GameSettings.NickName;
    }

    // Update is called once per frame
    void Update()
    {
    }

    public override void OnConnectedToMaster()
    {
        /*print("Connected to master server");
        print(PhotonNetwork.LocalPlayer.NickName);*/
        PhotonNetwork.JoinLobby();
    }

    public override void OnDisconnected(DisconnectCause cause)
    {
        /*print("Disconenct from master server. Reason : " + cause.ToString());*/
    }
}
 