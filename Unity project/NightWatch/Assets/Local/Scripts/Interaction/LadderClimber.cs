using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LadderClimber : MonoBehaviour
{
    public PlayerMovement movement;
    public float speed = 2;
    public bool Up = true;

    // Update is called once per frame
    void Update()
    {
        PlayerManagerLo.instance.player.transform.Translate(new Vector3(0,Up ? 1: -1,0) * (Time.deltaTime * speed));
    }

    private void OnEnable()
    {
        movement.UseGravity = false;
    }
    private void OnDisable()
    {
        movement.UseGravity = true;
    }
}
