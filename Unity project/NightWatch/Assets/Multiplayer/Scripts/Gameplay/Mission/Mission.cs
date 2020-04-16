using System.Collections;
using System.Collections.Generic;
using Photon.Pun;
using UnityEngine;

public class Mission : MonoBehaviourPunCallbacks
{
    private int GeneratorRepaired = 0;

    public void IncreaseGenerator()
    {
        print("IncreaseGenerator received");
        MissionShowing.instance.StopShowing();
        GeneratorRepaired++;
        if ((bool) PhotonNetwork.LocalPlayer.CustomProperties["Survivor"])
        {
            print("If 1 passed");
            MissionShowing.instance.Show("Repair the generators : " + GeneratorRepaired + "/4");
        }
        else
        {
            print("If 2 passed");
            MissionShowing.instance.Show("Prevent survivors from running away !");
            NotificationShowing.instance.Show("Generators repaired : " + GeneratorRepaired + "/4");
        }
    }
    
    void Start()
    {
        print("Mission started");
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
