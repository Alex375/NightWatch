using System;
using System.Collections;
using System.Collections.Generic;
using Photon.Pun;
using UnityEngine;
using Random = UnityEngine.Random;

public class PlayerMovement : MonoBehaviourPun
{
    

    public float speed = 3f;
    public float speedRunning = 5f;
    public float gravity = -9.81f;
    public bool playerCanMove = true;
    private Vector3 velocity;
    public CharacterController Controller;
    public AudioSource AudioWalk;
    public AudioSource AudioRun;

    private bool onTerrain;
    
    public void SetMove(bool move)
    {
        playerCanMove = move;
    }
    
    void Update()
    {
        if (photonView.IsMine && playerCanMove)
        { 
            if (Controller.isGrounded && velocity.y < 0)
            {
                velocity.y = -2f;
            }
            float x = Input.GetAxis("Horizontal");
            float z = Input.GetAxis("Vertical");

            Vector3 move = transform.right * x + transform.forward * z;

            if (Input.GetKey(KeyCode.LeftShift) && Input.GetKey(KeyCode.Z))
                Controller.Move(move * speedRunning * Time.deltaTime);
            else
            {
                Controller.Move(move * speed * Time.deltaTime);
            }

            if (Input.GetKey(KeyCode.Z) && Input.GetKey(KeyCode.LeftShift) && !AudioWalk.isPlaying && !AudioRun.isPlaying)
            {
                AudioRun.volume = Random.Range(0.2f, 0.4f);
                AudioRun.pitch = Random.Range(0.6f, 1.1f);
                AudioRun.Play();
            }
            else if (Input.GetKey(KeyCode.Z) && !AudioWalk.isPlaying && !AudioRun.isPlaying)
            {
                AudioWalk.volume = Random.Range(0.2f, 0.4f);
                AudioWalk.pitch = Random.Range(0.6f, 1.1f);
                AudioWalk.Play();
            }
                

            velocity.y += gravity * Time.deltaTime;

            Controller.Move(velocity * Time.deltaTime);
        }
    }
}
