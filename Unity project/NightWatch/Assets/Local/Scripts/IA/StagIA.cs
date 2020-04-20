using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class StagIA : MonoBehaviour
{
    private bool Walking;
    private bool Running;
    private bool Stopped;
    

    public NavMeshAgent bot;
    public CharacterController controller;
    public Animator anim;
    
    private Vector3 velocity;
    
    private void Update()
    {
        if (bot.pathEndPosition == transform.position)
            ChangeState("stopped");
        
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

    private void Start()
    {
        ChangeState("stopped");
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Player")
        {
            if (Stopped)
            {
                ChangeState("walking");
                MoveIA(other);
            }

            if (Walking)
            {
                ChangeState("running");
                MoveIA(other);
            }
        }
    }

    private void OnTriggerStay(Collider other)
    {
        if (other.tag == "Player")
        {
            MoveIA(other);
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
        else
        {
            bot.speed = 6f;
            anim.SetFloat("vertical",2f);
            Running = true;
            Walking = false;
            Stopped = false;
        }
    }
    private void MoveIA(Collider other)
    {
        float vecteurX = (transform.position.x - other.transform.position.x) * 2;
        float vecteurZ = (transform.position.z - other.transform.position.z) * 2;
        bot.SetDestination(new Vector3(transform.position.x + vecteurX, transform.position.y, transform.position.z  + vecteurZ));
    }
}
