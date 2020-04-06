using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class StagIA : MonoBehaviour
{
    private float timeIdle;
    private bool Walking;
    private bool Running;

    private string waiting = "idle2";
    private string eating = "idle1";

    public NavMeshAgent bot;
    public Animation anim;
    public Transform botPos;
    public CharacterController controller;
    public Transform player;
    private Vector3 velocity;
    private void Update()
    {
        /*
        if (anim.IsPlaying(waiting) && timeIdle > 15f)
        {
            timeIdle = 0;
            anim.Play(eating);
        }
        else if (anim.IsPlaying(eating) && timeIdle > 7.5f)
        {
            timeIdle = 0;
            anim.Play(waiting);
        }
        else if (anim.IsPlaying(waiting) || anim.IsPlaying(eating))
        {
            timeIdle += Time.deltaTime;
        }*/

        if (!Walking && !Running)
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
        timeIdle = 0;
        Walking = false;
        Running = false;
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            
            if (!Walking && !Running)
            {
                anim.Play("walk");
                Walking = true;
                bot.speed = 3.5f;
                float vecteurX = botPos.position.x - player.position.x;
                float vecteurZ = botPos.position.z - player.position.z;
                bot.SetDestination(new Vector3(botPos.position.x + vecteurX, botPos.position.y, botPos.position.z  + vecteurZ));
            }
            else if (!Running)
            {
                anim.Play("run");
                Running = true;
                Walking = false;
                bot.speed = 6f;
                float vecteurX = botPos.position.x - player.position.x;
                float vecteurZ = botPos.position.z - player.position.z;
                bot.SetDestination(new Vector3(botPos.position.x + vecteurX, botPos.position.y, botPos.position.z  + vecteurZ));
            }

        }
    }
}
