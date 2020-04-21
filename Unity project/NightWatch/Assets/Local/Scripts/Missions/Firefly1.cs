using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Firefly1 : MonoBehaviour
{
    public FireFlyMission manager;
    

    private void OnTriggerEnter(Collider other)
    {
        if (!other.CompareTag("Player"))
            return;
        manager.ChangeFirefly(1);
    }
}
