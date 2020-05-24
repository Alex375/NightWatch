using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FusesMission : MonoBehaviour
{
    private void Awake()
    {
        NotificationShowing.instance.Show("Go to the sheed to take the fuses");
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.E))
        {
            MissionManager.instance.NextMission();
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if (!other.CompareTag("Player"))
            return;
        NotificationShowing.instance.Show("E to take the fuses");
        enabled = true;
    }


    private void OnTriggerExit(Collider other)
    {
        if (!other.CompareTag("Player"))
            return;
        NotificationShowing.instance.StopShowing();
        enabled = false;
    }
}
