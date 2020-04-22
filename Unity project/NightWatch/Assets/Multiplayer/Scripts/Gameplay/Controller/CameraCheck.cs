using System;
using System.Collections;
using System.Collections.Generic;
using Photon.Pun;
using UnityEngine;

public class CameraCheck : MonoBehaviourPun
{
    public Camera camera;

    private void Start()
    {
        if (!photonView.IsMine)
        {
            camera.enabled = false;
            GetComponent<AudioListener>().enabled = false;
        }
    }
}
