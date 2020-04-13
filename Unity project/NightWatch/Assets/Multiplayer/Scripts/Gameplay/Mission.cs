using System.Collections;
using System.Collections.Generic;
using Photon.Pun;
using UnityEngine;

public class Mission : MonoBehaviour
{
    private int GeneratorRepaired = 0;

    public void IncreaseGenerator()
    {
        MissionShowing.instance.StopShowing();
        GeneratorRepaired++;
        if ((bool) PhotonNetwork.LocalPlayer.CustomProperties["Survivor"])
        {
            MissionShowing.instance.Show("Repair the generators : " + GeneratorRepaired + "/4");
        }
        else
        {
            MissionShowing.instance.Show("Prevent survivors from running away !");
            NotificationShowing.instance.Show("Generators repaired : " + GeneratorRepaired + "/4");
        }
    }
    
    void Start()
    {
        if ((bool) PhotonNetwork.LocalPlayer.CustomProperties["Survivor"])
        {
            MissionShowing.instance.Show("Repair the generators : " + GeneratorRepaired + "/4");
        }
        else
        {
            MissionShowing.instance.Show("Prevent survivors from running away !");
            NotificationShowing.instance.Show("Generators repaired : " + GeneratorRepaired + "/4");
        }
        
    }
    
}
