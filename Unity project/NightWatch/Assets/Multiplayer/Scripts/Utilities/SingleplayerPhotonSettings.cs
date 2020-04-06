using System;
using System.Collections;
using System.Collections.Generic;
using Photon.Pun;
using UnityEngine;

public class SingleplayerPhotonSettings : MonoBehaviourPun
{
    // Start is called before the first frame update
    private void Awake()
    {
        PhotonNetwork.OfflineMode = true;
    }
}
