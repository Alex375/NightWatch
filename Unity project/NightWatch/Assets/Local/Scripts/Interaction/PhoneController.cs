using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PhoneController : MonoBehaviour
{
    public bool isUsable = false;


    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.E))
        {
            if (isUsable)
            {
                // TODO : proced method
            }
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if (!other.CompareTag("Player"))
            return;
        enabled = true;
        if(isUsable)
            NotificationShowing.instance.Show("E to use the phone");
        else
            NotificationShowing.instance.Show("You can't use the phone now");
    }

    private void OnTriggerExit(Collider other)
    {
        if (!other.CompareTag("Player"))
            return;
        NotificationShowing.instance.StopShowing();
    }
}
