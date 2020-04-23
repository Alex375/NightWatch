using System;
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
    private bool stopSendRpcNight = false;
    private bool stopSendRpcMission = false;
    
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

    [PunRPC]
    private void ActivateNight()
    {
        if (!stopSendRpcNight)
        {
            foreach (GameObject gameObject in NightElements)
            {
                gameObject.SetActive(true);
            }
            
            foreach (GameObject gameObject in DayElements)
            {
                gameObject.SetActive(false);
            }
        }
        stopSendRpcNight = true;
    }

    [PunRPC]
    private void NextMission()
    {
        if (!stopSendRpcMission)
        {
            MissionManager.GetComponent<MissionManagerMultiplayer>().StartNextMission();
        }

        stopSendRpcMission = false;
    }
}


