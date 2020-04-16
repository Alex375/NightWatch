using System;
using System.Collections;
using System.Collections.Generic;
using Photon.Pun;
using UnityEngine;
using UnityEngine.UI;

public class Generator : MonoBehaviourPunCallbacks
{
    private GeneratorUpdate script;
    private void Awake()
    {
        script = GetComponent<GeneratorUpdate>();
    }

    private void OnTriggerEnter(Collider other)
    {

        if (other.tag == "Player" && other.GetComponent<PhotonView>().IsMine && (bool) PhotonNetwork.LocalPlayer.CustomProperties["Survivor"])
        {
            NotificationShowing.instance.Show("Press E to repair the generator");
            script.enabled = true;
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.tag == "Player" && NotificationShowing.instance.IsShowing && other.GetComponent<PhotonView>().IsMine && (bool) PhotonNetwork.LocalPlayer.CustomProperties["Survivor"])
        {
            NotificationShowing.instance.StopShowing();
            script.enabled = false;
        };
    }
}
