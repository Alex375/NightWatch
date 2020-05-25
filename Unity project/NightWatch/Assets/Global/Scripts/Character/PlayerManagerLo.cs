using System;
using System.Collections;
using System.Collections.Generic;
using System.Runtime.InteropServices;
using System.Security;
using UnityEngine;
using UnityEngine.UI;

public class PlayerManagerLo : MonoBehaviour
{
    private int _batteries;
    public readonly int MaxBatteries = 1;

    #region Singleton

    public static PlayerManagerLo instance;

    private void Awake()
    {
        instance = this;
        if (GameLoader.hasLoad)
        {
            Batteries = GameLoader.playerData.batteryStack;
            CurrentBatteryLevel = GameLoader.playerData.batteryLevel;
            player.transform.position = GameLoader.playerData.position;   
        }
    }

    #endregion

    public GameObject player;
    
    public int Batteries
    {
        get => _batteries;
        set
        {
            if (value + _batteries < 0)
            {
                throw new VerificationException(
                    "PlayerManager : Verification failed for _batteries setter. Error : you give a negative number of batteries");
            }

            if (Math.Abs(value - _batteries) > 1)
            {
                throw new VerificationException(
                    "PlayerManager : Verification failed for _batteries setter. Error : You are trying to increase _batteries by more than one at a time");
            }

            if (value > MaxBatteries)
            {
                throw new VerificationException(
                    "PlayerManager : Verification failed for _batteries setter. Error : Number of _batteries will exced MaximumBatteries ");
            }

            _batteries = value;
        }
    }

    public float CurrentBatteryLevel = 0f;

    public void ChangeBattery()
    {
        if (Batteries == 0)
        {
            return;
        }

        // TODO: Call envent functions
        Batteries--;
        CurrentBatteryLevel = 100;
    }

    public void AudioListenerSetActive(bool active)
    {
        AudioListener audioListener = GetComponent<AudioListener>();
        audioListener.enabled = active;
    }
}
