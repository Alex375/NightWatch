using System;
using System.Collections;
using System.Collections.Generic;
using Photon.Pun;
using UnityEngine;

public class PlayerSpawn : MonoBehaviourPunCallbacks
{
    
    private void Awake()
    {
        if (PhotonNetwork.LocalPlayer.CustomProperties["Survivor"] != null)
        {
            if ((bool) PhotonNetwork.LocalPlayer.CustomProperties["Survivor"])
            {
                PhotonNetwork.Instantiate("PhotonPrefabs/Survivor", new Vector3(0, 0, 0), new Quaternion(0, 0, 0, 0));
            }
            else
            {
                PhotonNetwork.Instantiate("PhotonPrefabs/Monster", new Vector3(0, 0, 0), new Quaternion(0, 0, 0, 0));
            }
        }
    }
}
