using System;
using System.Collections;
using System.Collections.Generic;
using Photon.Pun;
using UnityEngine;

public class MissionCamper : MonoBehaviourPun
{
    public GameObject MissionManagerGameObject;
    
    private int nbPlayer = 0;
    private int nbMax;
    private MissionManagerMultiplayer MissionManagerMultiplayer;
    void Start()
    {
        nbMax = PhotonNetwork.PlayerList.Length - 1;
        MissionShowing.instance.StopShowing();
        if ((bool) PhotonNetwork.LocalPlayer.CustomProperties["Survivor"])
        {
            MissionShowing.instance.Show("Go in the camper to escape the forest !");
        }
        else
        {
            MissionShowing.instance.Show("Prevent players from going into the camper");

        }
        MissionManagerMultiplayer = MissionManagerGameObject.GetComponent<MissionManagerMultiplayer>();
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Player")
        {
            NotificationShowing.instance.StopShowing();
            NotificationShowing.instance.Show("Wait everyone to escape");
            photonView.RPC("IncreasePlayer",RpcTarget.All);
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.tag == "Player")
        {
            NotificationShowing.instance.StopShowing();
            photonView.RPC("DecreasePlayer",RpcTarget.All);
        }
    }

    [PunRPC]
    private void IncreasePlayer()
    {
        nbPlayer += 1;
        if (nbPlayer == nbMax)
        {
            MissionShowing.instance.StopShowing();
            NotificationShowing.instance.StopShowing();
        }
    }
    
    [PunRPC]
    private void DecreasePlayer()
    {
        nbPlayer -= 1;
    }
}
