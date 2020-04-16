using System;
using System.Collections;
using System.Collections.Generic;
using Photon.Pun;
using UnityEngine;

public class IntroManager : MonoBehaviourPunCallbacks
{
    public GameObject thisObject;
    private void Start()
    {
        if (!(bool) PhotonNetwork.LocalPlayer.CustomProperties["Survivor"])
        {
            thisObject.SetActive(false);
        }
    }
}
