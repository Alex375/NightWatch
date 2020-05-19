using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using Random = System.Random;

public class EnemyController : MonoBehaviour
{
    public Animator Anim;
    public float nearLookRadius = 10f;
    public float middleLookRadius = 15f;
    public float longLookRadius = 20f;
    public float nearSpeed = 5f;
    public float midleSpeed = 4f;
    public float longSpeed = 3f;

    public PatrolPointScript PatrolPoint;
    
    private Transform target;
    private NavMeshAgent agent;
    private bool patrolBehaviour = false;
    private Transform patrolDestination;
    private int patrolPointIndex = 0;

    // Start is called before the first frame update
    void Start()
    {
        target = PlayerManagerLo.instance.player.transform;
        agent = GetComponent<NavMeshAgent>();
    }



    // Update is called once per frame
    void Update()
    {
        float distance = Vector3.Distance(PlayerManagerLo.instance.player.transform.position, transform.position);

        if (distance <= agent.stoppingDistance)
        {
            PlayerHit();
        }

        if (distance <= longLookRadius)
        {
            if (!patrolBehaviour)
            {
                agent.isStopped = false;
                agent.SetDestination(PlayerManagerLo.instance.player.transform.position);
                if (distance > agent.stoppingDistance)
                {
                    Anim.SetFloat("vertical",1f);
                }
                if (distance < nearLookRadius)
                {
                    Anim.SetFloat("horizontal",2f);
                    agent.speed = nearSpeed;
                    return;
                }
                if (distance < middleLookRadius)
                {
                    Anim.SetFloat("horizontal",1f);
                    agent.speed = midleSpeed;
                    return;
                }
                if (distance < longLookRadius)
                {
                    Anim.SetFloat("horizontal",0f);
                    agent.speed = longSpeed;
                    return;
                }
            }
            else
            {
                patrolBehaviour = false;
                agent.SetDestination(PlayerManagerLo.instance.player.transform.position);
            }

        }
        else
        {
            Anim.SetFloat("horizontal",1f);
            if (!patrolBehaviour)
            {
                SetPatrolBehavior();
                agent.speed = longSpeed;
                agent.SetDestination(patrolDestination.position);
            }
            else
            {
                float patrolDistance = Vector3.Distance(transform.position, patrolDestination.position);
                if (patrolDistance <= agent.stoppingDistance)
                {
                    patrolBehaviour = false;
                    SetPatrolBehavior();
                    agent.SetDestination(patrolDestination.position);
                }
            }
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
        Anim.SetFloat("vertical",2f);
        print("Player died");
    }
    
    public void SetPatrolBehavior()
    {
        patrolBehaviour ^= true;
        Random rand = new Random();
        int choose = rand.Next(0, 1);
        if (choose == 1)
        {
            patrolPointIndex = (patrolPointIndex + 1) % PatrolPoint.PatrolPoints.Count;
        }
        else
        {
            if (patrolPointIndex == 0)
                patrolPointIndex = PatrolPoint.PatrolPoints.Count - 1;
            else
                patrolPointIndex--;
        }

        patrolDestination = PatrolPoint.PatrolPoints[patrolPointIndex].transform;
    }
}
