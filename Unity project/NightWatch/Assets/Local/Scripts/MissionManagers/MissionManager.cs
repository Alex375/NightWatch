using System;
using System.Collections;
using System.Collections.Generic;
using System.Security;
using UnityEngine;

public class MissionManager : MonoBehaviour
{
    #region singleton

    public static MissionManager instance;
    private void Awake()
    {
        instance = this;
        if (GameLoader.hasLoad)
        {
            LoadMission(GameLoader.missionData.activeMission, GameLoader.missionData.currentMission);
        }
    }
    
    #endregion
    public static GameObject CurrentMission { get; private set; }
    public BatteryDispatcher batteryDispatcher;
    public List<GameObject> MissionQueue;
    public int currentMissionIndex = 0;


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
        SaveSystem.SaveGame(PlayerManagerLo.instance, batteryDispatcher.GetActiveComponets(), getActiveMission(), currentMissionIndex);
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
     public void DesactivateMission(string name)
     {
         for (int i = 0; i < MissionQueue.Count; i++)
         {
             if (MissionQueue[i].name == name)
             {
                 MissionQueue[i].SetActive(false);
                 currentMissionIndex = i;
                 CurrentMission = MissionQueue[i];
                 return;
             }
         }
         Debug.LogError($"ActivateMission5(string name) No mission reponding to the name of {name} check the name.");
     }

     public void DesactivateMission(int index)
     {
         try
         {
             MissionQueue[index].SetActive(false);
             currentMissionIndex = index;
             CurrentMission = MissionQueue[index];
         }
         catch (IndexOutOfRangeException)
         {
             Debug.LogError($"ActivateMission(int index) Index out of bound for index {index} max index : {MissionQueue.Count}.");
         }
     }


     public void LoadMission(bool[] activeMissions, int currentMission)
     {
         if (activeMissions.Length > MissionQueue.Count)
             throw new VerificationException("LoadMission : activeMission array must fit to the size of missionQueue array");
         if (currentMission < 0 || currentMission > MissionQueue.Count)
             throw new VerificationException($"LoadMission : current mission msut be : -1 < currentMission < {MissionQueue.Count} and has been set to {currentMission} ");

         for (int i = 0; i < MissionQueue.Count; i++)
         {
             MissionQueue[i].SetActive(activeMissions[i]);
         }

         currentMissionIndex = currentMission;
         CurrentMission = MissionQueue[currentMissionIndex];
     }

     private bool[] getActiveMission()
     {
         bool[] res = new bool[MissionQueue.Count];
         for (int i = 0; i < MissionQueue.Count; i++)
         {
             res[i] = MissionQueue[i].activeSelf;
         }

         return res;
     }
     
}
