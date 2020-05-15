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
    public GameObject Sound;
    public Animator Anim;

    private NavMeshAgent _agent;
    private Vector3 destinationPos;
    

    private void Start()
    {
        _agent = GetComponent<NavMeshAgent>();
        destinationPos = destination.transform.position;
        MissionManager.instance.ActivateMission("DeadStagMission");
        MissionManager.instance.currentMissionIndex--;
    }
    
    private void Update()
    {
        float distance = Vector3.Distance(transform.position, PlayerManagerLo.instance.player.transform.position);
        if (Vector3.Distance(destinationPos, transform.position) <= _agent.stoppingDistance)
        {
            print("arrived");
            Sound.SetActive(true);
            MissionManager.instance.NextMission();
        }
        
        if (distance <= longRangeRadius)
        {
            Anim.SetFloat("vertical",1f);
            _agent.isStopped = false;
            _agent.SetDestination(destinationPos);
            if (distance <= shortRangeRadius)
            {
                Anim.SetFloat("horizontal",0f);
                _agent.speed = shortRangeRadius;
            }
            else
            {
                Anim.SetFloat("horizontal",1f);
                _agent.speed = longRangeSpeed;
            }
        }
        else
        {
            Anim.SetFloat("vertical",0f);
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
