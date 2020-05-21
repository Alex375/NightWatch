using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LadderClimber : MonoBehaviour
{
    public PlayerMovement movement;
    public Rigidbody rb;

    // Update is called once per frame
    void Update()
    {
        rb.velocity = Vector3.up;
    }

    private void OnEnable()
    {
        movement.gravity = 0;
    }

    private void OnDisable()
    {
        movement.gravity = -9.81f;
    }
}
