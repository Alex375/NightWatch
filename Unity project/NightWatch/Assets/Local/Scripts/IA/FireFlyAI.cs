using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class FireFlyAI : MonoBehaviour
{
    private NavMeshAgent _agent;
    public GameObject destination;
    private Vector3 destiantionPos;

    private void Awake()
    {
       // MissionShowing.instance.Show("Find the origin of the scream...");
        destiantionPos = destination.transform.position;
        _agent = GetComponent<NavMeshAgent>();
    }

    private void Update()
    {
        float distance = Vector3.Distance(PlayerManagerLo.instance.player.transform.position, destiantionPos);

        if (distance < 7f)
        {
            _agent.isStopped = false;
            _agent.SetDestination(destiantionPos);
        }
        else
        {
            _agent.isStopped = true;
        }

        if (Vector3.Distance(destiantionPos, transform.position) < _agent.stoppingDistance)
        {
            MissionManager.instance.NextMission();
        }
    }
}
