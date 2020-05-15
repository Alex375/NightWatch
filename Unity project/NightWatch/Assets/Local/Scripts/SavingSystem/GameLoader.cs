using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameLoader : MonoBehaviour
{
    public struct PlayerData
    {
        public Vector3 position;
        public float batteryLevel;
        public int batteryStack;
    }

    public struct MissionData
    {
        public bool[] activeMission;
        public int currentMission;
    }
    
    public bool LoadGame = true;
    public BatteryDispatcher batteryDispatcher;
    public static PlayerData playerData;
    public static MissionData missionData;
    public static bool hasLoad = false;
    public NightShiftingScript nightShiftingScript;

    private void Awake()
    {
        if (!LoadGame)
            return;
        PersistentData persistentData = SaveSystem.LoadGame();
        playerData = new PlayerData
        {
            position = new Vector3(persistentData.playerPosition[0], persistentData.playerPosition[1],
                persistentData.playerPosition[2]),
            batteryLevel = persistentData.batteryLevel,
            batteryStack = persistentData.stackBattery
        };
        try
        {
            PlayerManagerLo.instance.player.transform.position = new Vector3(persistentData.playerPosition[0],
                        persistentData.playerPosition[1],
                        persistentData.playerPosition[2]);
            PlayerManagerLo.instance.CurrentBatteryLevel = persistentData.batteryLevel;
            PlayerManagerLo.instance.Batteries = persistentData.stackBattery;
        }
        catch (Exception)
        {
            // ignored
        }

        if (persistentData.night)
        {
            nightShiftingScript.ShiftToNihgt();
        }
        
        batteryDispatcher.ActivateComponents(persistentData.activeElements);
        missionData = new MissionData
        {
            activeMission = persistentData.activeMissions,
            currentMission = persistentData.currentMission
        };
        hasLoad = true;
    }
}
