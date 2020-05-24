using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LadderController : MonoBehaviour
{

    public LadderClimber climber;

    public bool Up = true;
    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.A))
        {
            climber.enabled = true;
            climber.Up = Up;
        }

        if (Input.GetKeyUp(KeyCode.A))
        {
            climber.enabled = false;
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if (!other.CompareTag("Player"))
            return;
        enabled = true;
    }

    private void OnTriggerExit(Collider other)
    {
        if (!other.CompareTag("Player"))
            return;
        enabled = false;

    }

    private void OnEnable()
    {
        NotificationShowing.instance.Show("A to use the ladder");
    }

    private void OnDisable()
    {
        climber.enabled = false;
        NotificationShowing.instance.StopShowing();
    }
}
