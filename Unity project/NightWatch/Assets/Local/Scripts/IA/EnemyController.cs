using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class EnemyController : MonoBehaviour
{
    public Animator Anim;
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
            if (distance > agent.stoppingDistance)
            {
                Anim.SetFloat("vertical",1f);
            }
            agent.SetDestination(target.position);
            agent.isStopped = false;
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
            Anim.SetFloat("vertical",0f);
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
        Anim.SetFloat("vertical",2f);
        print("Player died");
    }
}
