using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LightTuto : MonoBehaviour
{
    private void OnEnable()
    {
        MissionShowing.instance.Show("Press F to turn on your flash light.");
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKey(KeyCode.F))
        {
            MissionManager.instance.NextMission();
        }
    }
}
