using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FirstMonsterMissionBCObject : MonoBehaviour
{
    private void OnTriggerEnter(Collider other)
    {
        if (!other.CompareTag("Player"))
            return;
        MissionManager.instance.DesactivateMission("DeadStagMission");
        MissionManager.instance.currentMissionIndex = 10;
        MissionManager.instance.NextMission();
    }
}
