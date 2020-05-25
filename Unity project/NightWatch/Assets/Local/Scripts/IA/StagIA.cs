using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using Random = System.Random;

public class StagIA : MonoBehaviour
{
    private bool Walking;
    private bool Running;
    private bool Stopped;
    private bool InFirstZone = false;
    private bool InSecondZone = false;
    private Collider player;

    private float timeInactive = 0;

    public NavMeshAgent bot;
    public CharacterController controller;
    public Animator anim;
    
    private Vector3 velocity;
    
    private void Update()
    {
        if (!InFirstZone && !InSecondZone && bot.remainingDistance <= 1f)
            ChangeState("stopped");
        
        if ((InFirstZone || InSecondZone) && bot.remainingDistance <= 5f)
                MoveIA(player, 3f);

        if (Stopped & !InFirstZone && !InFirstZone)
            timeInactive += Time.deltaTime;
        else
            timeInactive = 0;

        if (timeInactive > 15f)
        {
            EatingMode();
        }
        
        // Gravity
        if (Stopped)
        {
            if (controller.isGrounded && velocity.y < 0)
            {
                velocity.y = -2f;
            }

            velocity.y += -9.81f * Time.deltaTime;
            controller.Move(velocity * Time.deltaTime);
        }
    }

    private void EatingMode()
    { 
        print("Eating mode");
        Random rnd = new Random();
        
        bot.SetDestination(new Vector3(transform.position.x + rnd.Next(-10,10), transform.position.y, transform.position.z  + rnd.Next(-10,10)));
        ChangeState("walking");

        timeInactive = 0f;
    }

    private void Start()
    {
        ChangeState("stopped");
        bot.autoRepath = true;
        bot.obstacleAvoidanceType = ObstacleAvoidanceType.HighQualityObstacleAvoidance;
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Player")
        {
            player = other;
            if (!InFirstZone && !InSecondZone)
            {
                ChangeState("walking");
                InFirstZone = true;

            }
            else if (InFirstZone && !InSecondZone)
            {
                ChangeState("running");
                InSecondZone = true;
            }
            print("Entered in zone | Zone 1 : " + InFirstZone + " | Zone 2 : " + InSecondZone);

            MoveIA(other);
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.tag == "Player")
        {
            if (InFirstZone && !InSecondZone)
            {
                InFirstZone = false;
            }
            else if (InFirstZone && InSecondZone)
            {
                InSecondZone = false;
            }
            print("Exit zone | Zone 1 : " + InFirstZone + " | Zone 2 : " + InSecondZone);
        }
    }
    
    private void ChangeState(string state)
    {
        if (state == "stopped")
        {
            bot.speed = 0f;
            anim.SetFloat("vertical",0f);
            Running = false;
            Walking = false;
            Stopped = true;
        }
        else if (state == "walking")
        {
            bot.speed = 3.5f;
            anim.SetFloat("vertical",1f);
            Running = false;
            Walking = true;
            Stopped = false;
        }
        else if (state == "running")
        {
            bot.speed = 6f;
            anim.SetFloat("vertical",2f);
            Running = true;
            Walking = false;
            Stopped = false;
        }
    }
    private void MoveIA(Collider other, float coef2 = 1f)
    {
        float coef = 0f;
        if (Walking)
        {
            coef = 1.3f;
        }
        else if (Running)
        {
            coef = 2f;
        }
        
        float vecteurX = (transform.position.x - other.transform.position.x) * coef * coef2;
        float vecteurZ = (transform.position.z - other.transform.position.z) * coef * coef2;
        bot.SetDestination(new Vector3(transform.position.x + vecteurX, transform.position.y, transform.position.z  + vecteurZ));
    }
}
