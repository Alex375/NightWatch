using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class doorController : MonoBehaviour
{

    public float speed;
    public float angle;
    public Vector3 direction;
    public bool open;
    public float openAngle;
    public float closedAngle;
    

    // Start is called before the first frame update
    void Start()
    {
        if (open)
            angle = openAngle;
        else
            angle = closedAngle;
    }

    // Update is called once per frame
    void Update()
    {
        if (Mathf.Round(transform.eulerAngles.y) != angle)
        {
            transform.Rotate(direction * speed);
        }

        if (Input.GetKeyDown(KeyCode.E)) 
        {
            if (!open)
            {
                angle = openAngle;
                direction = Vector3.up;
            }
            else
            {
                angle = closedAngle;
                direction = -Vector3.up;
            }

            open ^= true;
            if (open)
                NotificationShowing.instance.Show("E to close");
            else
            {
                NotificationShowing.instance.Show("E to open");
            }

        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if (!other.CompareTag("Player"))
            return;
        if (open)
        {
            NotificationShowing.instance.Show("E to close");
        }
        else
        {
            NotificationShowing.instance.Show("E to open");
        }
        enabled = true;
    }

    private void OnTriggerExit(Collider other)
    {
        if (!other.CompareTag("Player"))
        {
            return;
        }
        NotificationShowing.instance.StopShowing();
        enabled = false;
    }
}
