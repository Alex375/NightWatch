using System;
using System.Collections;
using System.Collections.Generic;
using Photon.Pun;
using UnityEngine;

public class FlashLightControll : MonoBehaviourPun
{
    public bool HasTorchLamp = false;
    public bool LightOn = false;
    public Light light;
    public float DecraeseBatteryPerUpdate;
    public GameObject TorchLamp;
    

    private bool IsOffline;

    private void Start()
    {
        IsOffline = PhotonNetwork.OfflineMode;
        
        SetTorchLamp(HasTorchLamp);
        
        if (!IsOffline)
            photonView.RPC("SetLightOnMulti",RpcTarget.All,LightOn && HasTorchLamp,photonView.ViewID);
        else
            SetLightOn(LightOn && HasTorchLamp);
        
        
    }


    // Update is called once per frame
    void FixedUpdate()
    {
        if (LightOn && HasTorchLamp)
        {
            PlayerManagerLo.instance.CurrentBatteryLevel -= DecraeseBatteryPerUpdate * Time.deltaTime;
            if (PlayerManagerLo.instance.CurrentBatteryLevel <= 0)
            {
                if (IsOffline)
                    SetLightOn(false);
                else if (light.enabled) 
                    photonView.RPC("SetLightOnMulti",RpcTarget.All,false,photonView.ViewID);
            }
        }
    }

    private void OnGUI()
    {
        if (Event.current.Equals(Event.KeyboardEvent("F")) && HasTorchLamp)
        {
            if (IsOffline)
                SetLightOn(!LightOn);
            else
                photonView.RPC("SetLightOnMulti",RpcTarget.All,!LightOn,photonView.ViewID);
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
    private void SetLightOnMulti(bool state, int id)
    {
        if (id == photonView.ViewID && PlayerManagerLo.instance.CurrentBatteryLevel <= 0)
        {
            light.enabled = state;
            LightOn = state;
        }
    }
}
