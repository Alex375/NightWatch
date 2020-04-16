using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BeginCinScript : MonoBehaviour
{
    
    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            MissionManager.instance.NextMission();
        }
    }
}
