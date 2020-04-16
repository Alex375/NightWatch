using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GoToYourHutMission : MonoBehaviour
{
    private void OnEnable()
    {
        MissionShowing.instance.Show("Go to your hut...");
    }

    private void OnDisable()
    {
        MissionShowing.instance.StopShowing();
    }
}
