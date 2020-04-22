using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Photon.Pun;
using Photon.Realtime;

public class ConnectPhoton : MonoBehaviourPunCallbacks
{
    
    // Start is called before the first frame update

    public void Awake()
    {
        base.OnEnable();
        PhotonNetwork.GameVersion = MasterManager.GameSettings.GameVersion;
        PhotonNetwork.AutomaticallySyncScene = true;
        PhotonNetwork.NickName = MasterManager.GameSettings.NickName;
        PhotonNetwork.ConnectUsingSettings();
    }
    
    public override void OnConnectedToMaster()
    {
        /*print("Connected to master server");
        print(PhotonNetwork.LocalPlayer.NickName);*/
        PhotonNetwork.JoinLobby(TypedLobby.Default);
    }

    public override void OnDisconnected(DisconnectCause cause)
    {
        /*print("Disconenct from master server. Reason : " + cause.ToString());*/
    }
}
 