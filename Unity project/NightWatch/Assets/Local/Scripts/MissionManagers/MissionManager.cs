using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MissionManager : MonoBehaviour
{
    #region singleton

    public static MissionManager instance;

    private void Awake()
    {
        instance = this;
    }
    
    #endregion
    public static GameObject CurrentMission { get; private set; }
    public List<GameObject> MissionQueue;
    private int currentMissionIndex = 0;

    public void QuitAllMission()
    {
        foreach (var mission in MissionQueue)
        {
            mission.SetActive(false);
        }

        CurrentMission = null;
        currentMissionIndex = -1;
    }

    public void NextMission()
    {
        MissionQueue[currentMissionIndex].SetActive(false);
        currentMissionIndex++;
        if (currentMissionIndex >= MissionQueue.Count)
        {
            Debug.LogWarning("Last mission done. All missions desactivate.");
            return;
        }
        MissionQueue[currentMissionIndex].SetActive(true);
        CurrentMission = MissionQueue[currentMissionIndex];
    }

    public void ActivateMission(string name)
    {
        for (int i = 0; i < MissionQueue.Count; i++)
        {
            if (MissionQueue[i].name == name)
            {
                MissionQueue[i].SetActive(true);
                currentMissionIndex = i;
                CurrentMission = MissionQueue[i];
                return;
            }
        }
        Debug.LogError($"ActivateMission5(string name) No mission reponding to the name of {name} check the name.");
    }

    public void ActivateMission(int index)
    {
        try
        {
            MissionQueue[index].SetActive(true);
            currentMissionIndex = index;
            CurrentMission = MissionQueue[index];
        }
        catch (IndexOutOfRangeException)
        {
            Debug.LogError($"ActivateMission(int index) Index out of bound for index {index} max index : {MissionQueue.Count}.");
        }
    }
}
