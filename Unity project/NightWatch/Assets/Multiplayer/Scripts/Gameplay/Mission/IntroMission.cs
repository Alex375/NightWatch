using System;
using System.Collections;
using System.Collections.Generic;
using Photon.Pun;
using Photon.Realtime;
using UnityEngine;

public class IntroMission : MonoBehaviourPun
{
    public GameObject MissionManager;
    public Animation Anim;
    public GameObject AnimSurvivor;
    public GameObject AnimMonster;

    private bool isSurvivor;

    private void Start()
    {
        isSurvivor = (bool) PhotonNetwork.LocalPlayer.CustomProperties["Survivor"];
        if (isSurvivor)
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
        if (!Anim.isPlaying && isSurvivor)
        {
            MissionManager.GetComponent<MissionManagerMultiplayer>().StartNextMission(false);
        }
    }
}
