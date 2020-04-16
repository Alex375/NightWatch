using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;


public class BatteryBoxScript : MonoBehaviour
{
    

    // Start is called before the first frame update

    private void Awake()
    {
    }

    private void Update()
    {
        PlayerManagerLo playerManager = PlayerManagerLo.instance;
        if (Input.GetKey(KeyCode.E) && playerManager.Batteries < playerManager.MaxBatteries)
        {
            playerManager.Batteries++;
            gameObject.SetActive(false);
            NotificationShowing.instance.StopShowing();
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        PlayerManagerLo playerManager = PlayerManagerLo.instance;
        if (!other.CompareTag("Player")) return;
        if (playerManager.Batteries >= playerManager.MaxBatteries)
            NotificationShowing.instance.Show("Maximum stack of batteries");
        else 
            NotificationShowing.instance.Show("E to grap the battery");
        enabled = true;
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            NotificationShowing.instance.StopShowing();
            enabled = false;
        }
    }
}
