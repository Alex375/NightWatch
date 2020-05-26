using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SheedMission : MonoBehaviour
{
    public GameObject monster;
    public GameObject point;
    public EnemyController enemyController;
    public PatrolPointScript patrolPoint;

    private void Awake()
    {
        monster.transform.position = point.transform.position;
        enemyController.PatrolPoint = patrolPoint;
        MissionShowing.instance.Show("Take the fuses at the back of the house");
    }
}
