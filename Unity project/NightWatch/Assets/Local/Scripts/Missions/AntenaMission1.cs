using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AntenaMission1 : MonoBehaviour
{
    public AntenaMission antena;
    public EnemyController enemy;
    public GameObject enemyObject;
    public PatrolPointScript patrolPoints;
    private void Awake()
    {
        MissionShowing.instance.Show("Go to the tower next to the lake and replace the antena");
        antena.state = AntenaMission.State.usabled;
        enemyObject.SetActive(true);
        enemy.PatrolPoint = patrolPoints;
    }

    private void Update()
    {
        if (antena.state == AntenaMission.State.repaired)
        {
            MissionManager.instance.NextMission();
        }
    }
}
