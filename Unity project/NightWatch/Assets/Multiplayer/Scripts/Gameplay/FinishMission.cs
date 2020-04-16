using System.Collections;
using System.Collections.Generic;
using Photon.Pun;
using UnityEngine;

public class FinishMission : MonoBehaviourPun
{
    private bool isFinished = false;
    private void OnTriggerEnter(Collider other)
    {

        if (other.tag == "Player" && (bool) PhotonNetwork.LocalPlayer.CustomProperties["Survivor"])
        {
            if (!isFinished)
            {
                NotificationShowing.instance.Show("You need complete the objectives, to get out");
            }
            
        }
    }
    
    private void OnTriggerExit(Collider other)
    {

        if (other.tag == "Player" && (bool) PhotonNetwork.LocalPlayer.CustomProperties["Survivor"])
        {
            if (!isFinished)
            {
                NotificationShowing.instance.StopShowing();
            }
            
        }
    }
    
}
