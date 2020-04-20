using System;
using System.Collections;
using System.Collections.Generic;
using Photon.Pun;
using UnityEngine;

public class MissionTorch : MonoBehaviourPun
{
    public GameObject MissionManager;
    public List<GameObject> flaslight;


    void Start()
    {
        if ((bool) PhotonNetwork.LocalPlayer.CustomProperties["Survivor"])
        {
            MissionShowing.instance.StopShowing();
            MissionShowing.instance.Show("Take your flashlight in the camper !");
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Player")
        {
            NotificationShowing.instance.StopShowing();
            NotificationShowing.instance.Show("Press E to take your flashlight");
        }
    }
    
    private void OnTriggerExit(Collider other)
    {
        if (other.tag == "Player")
        {
            NotificationShowing.instance.StopShowing();
        }
    }

    private void OnTriggerStay(Collider other)
    {
        if (other.tag == "Player" && Input.GetKeyDown(KeyCode.E))
        {
            FlashLightControll flashlight = other.gameObject.GetComponent<FlashLightControll>();
            photonView.RPC("TakeFlashlight",RpcTarget.All);
            flashlight.SetTorchLamp(true);
        }
    }


    [PunRPC]
    private void TakeFlashlight()
    {
        flaslight[0].SetActive(false);
        flaslight.RemoveAt(0);

        if (flaslight.Count == 0)
        {
            MissionShowing.instance.StopShowing();
            NotificationShowing.instance.StopShowing();
            MissionManager.GetComponent<MissionManagerMultiplayer>().StartNextMission();
        }
    }
}
