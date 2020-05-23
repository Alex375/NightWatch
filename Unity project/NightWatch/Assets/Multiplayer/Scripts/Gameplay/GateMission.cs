using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GateMission : MonoBehaviour
{
    public GameObject Gate;
    private void OnEnable()
    {
        GateScript script = Gate.GetComponent<GateScript>();
        MissionShowing.instance.StopShowing();
        MissionShowing.instance.Show("Activate the gate");
        script.MissionActivated = true;
    }
}
