using System;
using System.Collections;
using System.Collections.Generic;
using Photon.Pun;
using Photon.Realtime;
using UnityEngine;

public class FlashLightControll : MonoBehaviourPun
{
    public bool HasTorchLamp = false;
    public bool LightOn = false;
    public Light light;
    public float DecraeseBatteryPerUpdate;
    public GameObject TorchLamp;
    public GameObject FlickerEffect;
    private bool played = false;
    private bool playing = false;
    private int timer = 0;
    

    private bool IsOffline;

    private void Start()
    {
        IsOffline = PhotonNetwork.OfflineMode;
        
        if (IsOffline)
            SetTorchLamp(HasTorchLamp);
        else
            photonView.RPC("SetTorchLampMultiplayer",RpcTarget.All,HasTorchLamp,photonView.ViewID);

        if (!IsOffline)
            light.enabled = true;
        else
            SetLightOn(LightOn && HasTorchLamp);

    }


    // Update is called once per frame
    void FixedUpdate()
    {
        if (LightOn && HasTorchLamp)
        {
            if (playing)
            {
                timer -= 1;
                if (timer <= 0)
                {
                    FlickerEffect.SetActive(false);
                    SetLightOn(true);
                }
            }
            else if (!played && PlayerManagerLo.instance.CurrentBatteryLevel <= 25 &&
                     PlayerManagerLo.instance.CurrentBatteryLevel >= 20)
            {
                timer = 150;
                played = true;
                playing = true;
                FlickerEffect.SetActive(true);
            }

            PlayerManagerLo.instance.CurrentBatteryLevel -= DecraeseBatteryPerUpdate * Time.deltaTime;
            if (PlayerManagerLo.instance.CurrentBatteryLevel <= 0)
            {
                if (IsOffline)
                    SetLightOn(false);
            }
        }
    }

    private void OnGUI()
    {
        if (Event.current.Equals(Event.KeyboardEvent("F")) && HasTorchLamp && photonView.IsMine)
        {
            if (IsOffline)
                SetLightOn(!LightOn);
        }
        
        if (Event.current.Equals(Event.KeyboardEvent("R")) && HasTorchLamp)
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

    public void SetTorchLamp(bool state)
    {
        if (IsOffline)
        {
            TorchLamp.SetActive(state);
            HasTorchLamp = state;
        }
        else
        {
            photonView.RPC("SetTorchLampMultiplayer",RpcTarget.All,state,photonView.ViewID);
        }
    }
    
    //______________________RPC FUNCTION
    
    [PunRPC]
    private void SetTorchLampMultiplayer(bool state, int id)
    {
        if (photonView.ViewID == id)
        {
            TorchLamp.SetActive(state);
            HasTorchLamp = state;
        }
    }

    [PunRPC]
    private void SetLightOnMulti(bool state, Player player)
    {
        if (Equals(player,PhotonNetwork.LocalPlayer) && PlayerManagerLo.instance.CurrentBatteryLevel > 0)
        {
            light.enabled = state;
            LightOn = state;
        }
    }
}
