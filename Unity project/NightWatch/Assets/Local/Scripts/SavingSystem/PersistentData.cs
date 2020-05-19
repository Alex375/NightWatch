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
    public bool enemyActive;
    public float[] enemyPosition;


    public PersistentData(PlayerManagerLo playerManager, bool[] activeElements, bool[] activeMissions,
        int currentMission, bool night, bool enemyActive, Vector3 enemyPosition)
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
        this.enemyActive = enemyActive;
        this.enemyPosition = new float[3];
        this.enemyPosition[0] = enemyPosition.x;
        this.enemyPosition[1] = enemyPosition.y;
        this.enemyPosition[2] = enemyPosition.z;
    }
    
}
