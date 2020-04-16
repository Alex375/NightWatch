﻿using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class EnemyController : MonoBehaviour
{
    public float nearLookRadius = 10f;
    public float middleLookRadius = 15f;
    public float longLookRadius = 20f;
    public float nearSpeed = 2f;
    public float midleSpeed = 6f;
    public float longSpeed = 3f;


    private Transform target;
    private NavMeshAgent agent;
    
    // Start is called before the first frame update
    void Start()
    {
        target = PlayerManagerLo.instance.player.transform;
        agent = GetComponent<NavMeshAgent>();
    }



    // Update is called once per frame
    void Update()
    {
        float distance = Vector3.Distance(target.position, transform.position);

        if (distance <= agent.stoppingDistance)
        {
            PlayerHit();
        }

        if (distance <= longLookRadius)
        {
            agent.SetDestination(target.position);
            agent.isStopped = false;
            if (distance < nearLookRadius)
            {
                agent.speed = nearSpeed;
                return;
            }
            if (distance < middleLookRadius)
            {
                agent.speed = midleSpeed;
                return;
            }
            if (distance < middleLookRadius)
            {
                agent.speed = midleSpeed;
                return;
            }
        }
        else
        {
            agent.isStopped = true;
        }

    }

    private void OnDrawGizmosSelected()
    {
        Gizmos.color = Color.red;
        var position = transform.position;
        Gizmos.DrawWireSphere(position, nearLookRadius);
        
        Gizmos.color = Color.yellow;
        Gizmos.DrawWireSphere(position, middleLookRadius);
        
        Gizmos.color = Color.green;
        Gizmos.DrawWireSphere(position, longLookRadius);
        
    }

    public void PlayerHit()
    {
        print("Player died");
    }
}
