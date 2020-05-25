using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GenratorMission : MonoBehaviour
{
    public GeneratorScript generator;
    private void Awake()
    {
        MissionShowing.instance.Show("Find and repair the generator");
        generator.State = GeneratorScript.GeneratorState.Usable;
    }

    private void Update()
    {
        if (generator.State == GeneratorScript.GeneratorState.Repaired)
        {
            MissionManager.instance.NextMission();
        }
    }
}
