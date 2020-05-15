using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[System.Serializable]
public class PersistentData
{

    public float batteryLevel;
    public int stackBattery;
    public float[] playerPosition;
    public bool[] activeElements;
    public bool[] activeMissions;
    public int currentMission;
    public bool night;


    public PersistentData(PlayerManagerLo playerManager, bool[] activeElements, bool[] activeMissions,
        int currentMission, bool night)
    {
        batteryLevel = playerManager.CurrentBatteryLevel;
        stackBattery = playerManager.Batteries;
        playerPosition = new float[3];
        var pos = playerManager.player.transform.position;
        playerPosition[0] = pos.x;
        playerPosition[1] = pos.y;
        playerPosition[2] = pos.z;
        this.activeElements = activeElements;
        this.activeMissions = activeMissions;
        this.currentMission = currentMission;
        this.night = night;
    }
    
}
