using System;
using System.Collections;
using System.Collections.Generic;
using ExitGames.Client.Photon;
using Photon.Pun;
using UnityEngine;

public class SingleplayerPhotonSettings : MonoBehaviourPun
{
    private ExitGames.Client.Photon.Hashtable customProperties = new ExitGames.Client.Photon.Hashtable();
    public bool Survivor = true;
    private void Awake()
    {
        PhotonNetwork.OfflineMode = true;
        customProperties["Survivor"] = Survivor;
        PhotonNetwork.SetPlayerCustomProperties(customProperties);
    }
}
