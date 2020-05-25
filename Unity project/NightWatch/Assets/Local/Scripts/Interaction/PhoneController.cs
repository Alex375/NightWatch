using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq.Expressions;
using UnityEngine;

public class PhoneController : MonoBehaviour
{
    public bool isUsable = false;
    public string Message = "You can't use the phone now";
    public Action CompletionHanlder;


    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.E))
        {
            if (isUsable)
            {
                CompletionHanlder.Invoke();
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
            NotificationShowing.instance.Show(Message);
    }

    private void OnTriggerExit(Collider other)
    {
        if (!other.CompareTag("Player"))
            return;
        NotificationShowing.instance.StopShowing();
    }
}
