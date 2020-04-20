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
    public List<Animation> AnimMonster;

    private bool isSurvivor;
    private bool stopSendRpc = false;

    private void Start()
    {
        isSurvivor = (bool) PhotonNetwork.LocalPlayer.CustomProperties["Survivor"];
        if (!isSurvivor)
        {
            AnimPlayer.SetActive(false);
            foreach (Animation a in AnimMonster)
            {
                a.enabled = true;
            }
        }
    }
    
    void Update()
    {
        if (isSurvivor)
        {
            if (Text.color.a >= 1 && !stopSendRpc)
            {
                photonView.RPC("ActivateNight",RpcTarget.All);
            }

            if (!AnimPanel.isPlaying)
            {
                photonView.RPC("NextMission",RpcTarget.All);
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


