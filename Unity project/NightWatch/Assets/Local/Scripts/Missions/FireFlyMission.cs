using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FireFlyMission : MonoBehaviour
{
    public GameObject Firefly1;
    public GameObject Firefly2;
    public GameObject Firefly3;

    private void Awake()
    {
        MissionShowing.instance.Show("Folow the fireflies...");
    }

    public void ChangeFirefly(int index)
    {
        switch (index)
        {
            case 1 :
                Firefly2.SetActive(true);
                break;
            case 2 :
                Firefly3.SetActive(true);
                Firefly1.SetActive(false);
                break;
            case 3 :
                Firefly2.SetActive(false);
                MissionManager.instance.ActivateMission("RabbitMission");
                break;
            case 4 :
                MissionManager.instance.DesactivateMission("FireflyMission");
                break;
            default:
                Debug.LogWarning("Fireflye.ChangeFirefly index must be 0 < index < 5");
                break;
        }
    }
    
}
