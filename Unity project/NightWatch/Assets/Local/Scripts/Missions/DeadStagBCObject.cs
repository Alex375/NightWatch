using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DeadStagBCObject : MonoBehaviour
{
    private void OnTriggerEnter(Collider other)
    {
        if (!other.CompareTag("Player"))
            return;
        MissionManager.instance.DesactivateMission("RabbitMission");
        MissionManager.instance.ActivateMission("FirstMonsterMission");
    }
}
