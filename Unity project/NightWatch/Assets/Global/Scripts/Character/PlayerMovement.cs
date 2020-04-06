using System;
using System.Collections;
using System.Collections.Generic;
using Photon.Pun;
using UnityEngine;

public class PlayerMovement : MonoBehaviourPun
{
    

    public float speed = 3f;
    public float speedRunning = 5f;
    public float gravity = -9.81f;
    private Vector3 velocity;
    public CharacterController Controller;
    void Update()
    {
        if (photonView.IsMine)
        { 
            if (Controller.isGrounded && velocity.y < 0)
            {
                velocity.y = -2f;
            }
            float x = Input.GetAxis("Horizontal");
            float z = Input.GetAxis("Vertical");

            Vector3 move = transform.right * x + transform.forward * z;

            if (Input.GetKey(KeyCode.LeftShift))
                Controller.Move(move * speedRunning * Time.deltaTime);
            else
                Controller.Move(move * speed * Time.deltaTime);

            velocity.y += gravity * Time.deltaTime;

            Controller.Move(velocity * Time.deltaTime);
        }
    }
}
