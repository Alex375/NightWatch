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
    public Text ToogleText;
    public GameObject canvaToogle;
    public float openAngle;
    public float closedAngle;

    private bool inBox;

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

        if (!inBox)
            return;

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
                ToogleText.text = "E to close";
            else
            {
                ToogleText.text = "E to open";
            }

        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.tag != "Player")
            return;
        if (open)
        {
            ToogleText.text = "E to close";
        }
        else
        {
            ToogleText.text = "E to open";
        }
        canvaToogle.SetActive(true);
        inBox = true;
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.tag != "Player")
        {
            return;
        }
        canvaToogle.SetActive(false);
        inBox = false;
    }
}
