using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LightTuto : MonoBehaviour
{
    public FlashLightControll flashLightControll;
    public static float deacreseBattery;
    private void OnEnable()
    {
        MissionShowing.instance.Show("Press F to turn on your flash light.");
        PlayerManagerLo.instance.CurrentBatteryLevel = 30;
        deacreseBattery = flashLightControll.DecraeseBatteryPerUpdate;
        flashLightControll.DecraeseBatteryPerUpdate = 0;
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKey(KeyCode.F))
        {
            MissionManager.instance.NextMission();
        }
    }
}
