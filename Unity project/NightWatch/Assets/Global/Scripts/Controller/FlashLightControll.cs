using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FlashLightControll : MonoBehaviour
{
    public bool LightOn = false;
    public Light light;
    public float DecraeseBatteryPerUpdate;

    private void Awake()
    {
        SetLightOn(LightOn);
    }


    // Update is called once per frame
    void FixedUpdate()
    {
        if (LightOn)
        {
            PlayerManagerLo.instance.CurrentBatteryLevel -= DecraeseBatteryPerUpdate * Time.deltaTime;
            if (PlayerManagerLo.instance.CurrentBatteryLevel <= 0)
            {
                SetLightOn(false);
            }
        }
    }

    private void OnGUI()
    {
        if (Event.current.Equals(Event.KeyboardEvent("F")))
        {
            SetLightOn(!LightOn);
        }
        
        if (Event.current.Equals(Event.KeyboardEvent("R")))
        {
            PlayerManagerLo.instance.ChangeBattery();
        }
    }

    public void SetLightOn(bool state)
    {
        if (state && PlayerManagerLo.instance.CurrentBatteryLevel <= 0)
            return;
        light.enabled = state;
        LightOn = state;
    }
}
