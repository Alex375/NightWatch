using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FirstMonsterMission : MonoBehaviour
{
    public EnemyController Enemy;
    public GameObject EnemyObject;

    private void OnEnable()
    {
        Enemy.middleLookRadius = 200;
        Enemy.longLookRadius = 200;
        EnemyObject.SetActive(true);
        MissionShowing.instance.Show("Run to your hut!");
    }

    private void OnDisable()
    {
        Enemy.middleLookRadius = 15;
        Enemy.longLookRadius = 20;
        EnemyObject.SetActive(false);
    }
}
