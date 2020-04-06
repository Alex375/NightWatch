using System;
using System.Collections;
using System.Collections.Generic;
using Photon.Pun;
using UnityEngine;

public class MouseLook : MonoBehaviourPun
{
    public float mouseSensitivy = 100f;
    public Transform playerBody;
    private float xRotation = 0f;

    private void Start()
    {
        if (photonView.IsMine)
            Cursor.lockState = CursorLockMode.Locked;
    }

    void Update()
    {
        if (photonView.IsMine)
        {
            float mouseX = Input.GetAxis("Mouse X") * mouseSensitivy * Time.deltaTime;
            float mouseY = Input.GetAxis("Mouse Y") * mouseSensitivy * Time.deltaTime;

            xRotation -= mouseY;
            xRotation = Mathf.Clamp(xRotation, -90f, 90f);
        
            transform.localRotation = Quaternion.Euler(xRotation,0f,0f);
            playerBody.Rotate(Vector3.up * mouseX);
        }
    }
}
