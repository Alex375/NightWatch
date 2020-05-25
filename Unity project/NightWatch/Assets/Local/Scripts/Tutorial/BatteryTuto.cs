using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BatteryTuto : MonoBehaviour
{
    public FlashLightControll flash;
    private bool first = true;
    private void OnEnable()
    {
        MissionShowing.instance.Show("You have no more battery find a battery box...");
    }

    // Update is called once per frame
    void Update()
    {
        if (first && PlayerManagerLo.instance.Batteries != 0)
        {
            MissionShowing.instance.Show("Now press R to put the battery in the flashlight.");
            first = false;
        }
        else if (!first && Input.GetKeyDown(KeyCode.R))
        {
            MissionShowing.instance.StopShowing();
            MissionManager.instance.NextMission();
        }   
    }

    private void OnDisable()
    {
        flash.DecraeseBatteryPerUpdate = LightTuto.deacreseBattery;
    }
}
