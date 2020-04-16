using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class AIGuideScript : MonoBehaviour
{
    public float longRangeRadius = 10f;
    public float shortRangeRadius = 5f;

    public float longRangeSpeed = 4f;
    public float shortRangeSpeed = 6f;

    public GameObject destination;

    private NavMeshAgent _agent;
    private Vector3 destinationPos;

    private void Start()
    {
        _agent = GetComponent<NavMeshAgent>();
        destinationPos = destination.transform.position;
    }

    private void Update()
    {
        float distance = Vector3.Distance(transform.position, PlayerManagerLo.instance.player.transform.position);

        if (distance <= longRangeRadius)
        {
            _agent.isStopped = false;
            _agent.SetDestination(destinationPos);
            if (distance <= shortRangeRadius)
            {
                _agent.speed = shortRangeRadius;
            }
            else
            {
                _agent.speed = longRangeSpeed;
            }
        }
        else
        {
            _agent.isStopped = true;
        }
    }

    public void OnDrawGizmos()
    {
        Gizmos.color = Color.green;
        var position = transform.position;
        Gizmos.DrawWireSphere(position, shortRangeRadius);
        
        Gizmos.color = Color.red;
        Gizmos.DrawWireSphere(position, longRangeRadius);
    }
}
