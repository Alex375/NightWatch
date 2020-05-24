using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LastMission : MonoBehaviour
{
    public PhoneController phone;
    public GameObject enemyObject;
    public EnemyController enemy;
    public PatrolPointScript patrol;
    private void Awake()
    {
        MissionShowing.instance.Show("Call for help with the phone!");
        phone.isUsable = true;
        enemyObject.SetActive(true);
        enemy.PatrolPoint = patrol;
        enemyObject.transform.position = patrol.PatrolPoints[0].transform.position;
        phone.CompletionHanlder = () =>
        {
            MissionManager.instance.NextMission();
        };
    }
}
