﻿using System;
using System.Collections;
using System.Collections.Generic;
using Photon.Pun;
using UnityEngine;

public class IntroMission : MonoBehaviourPun
{
    public GameObject MissionManager;
    public Animation Anim;
    public GameObject AnimSurvivor;
    public GameObject AnimMonster;

    private void Start()
    {
        if ((bool) PhotonNetwork.LocalPlayer.CustomProperties["Survivor"])
        {
            print("ok");
            AnimSurvivor.SetActive(true);
            AnimMonster.SetActive(false);
        }
        else
        {
            print("ok2");
            AnimSurvivor.SetActive(false);
            AnimMonster.SetActive(true);
        }
    }

    void Update()
    {
        if (!Anim.isPlaying)
        {
            photonView.RPC("GoNextMission",RpcTarget.All);
        }
    }

    [PunRPC]
    private void GoNextMission()
    {
        MissionManager.GetComponent<MissionManagerMultiplayer>().StartNextMission();
    }
}