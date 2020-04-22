﻿using System;
using System.Collections;
using System.Collections.Generic;
using Photon.Pun;
using UnityEngine;
using UnityEngine.UI;

public class MissionNightTransition : MonoBehaviourPun
{
    public Animation AnimPanel;
    public List<GameObject> NightElements;
    public List<GameObject> DayElements;
    public Text Text;
    public GameObject MissionManager;
    public GameObject AnimPlayer;
    public Animation A1;
    public Animation A2;

    private bool isSurvivor;
    private bool stopSendRpc = false;
    
    private void OnEnable()
    {
        isSurvivor = (bool) PhotonNetwork.LocalPlayer.CustomProperties["Survivor"];
        if (!isSurvivor)
        {
            AnimPlayer.SetActive(false);
            A1.enabled = true;
            A2.enabled = true;
            A1.Play("transNightMonsterBack");
            A2.Play("transNightMonsterText");
        }
    }
    
    void Update()
    {
        if (isSurvivor)
        {
            if (Text.color.a >= 1 && !stopSendRpc)
            {
                if (PhotonNetwork.IsMasterClient)
                {
                    photonView.RPC("ActivateNight",RpcTarget.All);
                }
            }

            if (!AnimPanel.isPlaying)
            {
                if (PhotonNetwork.IsMasterClient)
                {
                    photonView.RPC("NextMission",RpcTarget.All);
                }
            }
        }
    }

    [PunRPC]
    private void ActivateNight()
    {
        stopSendRpc = true;
        foreach (GameObject gameObject in NightElements)
        {
            gameObject.SetActive(true);
        }
            
        foreach (GameObject gameObject in DayElements)
        {
            gameObject.SetActive(false);
        }
    }

    [PunRPC]
    private void NextMission()
    {
        MissionManager.GetComponent<MissionManagerMultiplayer>().StartNextMission();
    }
}


