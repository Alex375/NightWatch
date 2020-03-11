using System;
using System.Collections;
using System.Collections.Generic;
using Photon.Pun;
using UnityEngine;

public class PlayerSpawn : MonoBehaviourPunCallbacks
{
    private void Awake()
    {
        PhotonNetwork.Instantiate("Player", new Vector3(0, 0, 0), new Quaternion(0, 0, 0, 0));
    }
}
