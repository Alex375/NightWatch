using System;
using System.Collections;
using System.Collections.Generic;
using Photon.Pun;
using UnityEngine;

public class CameraCheck : MonoBehaviourPun
{
    public Camera camera;

    private void Awake()
    {
        if (!base.photonView.IsMine)
        {
            camera.enabled = false;
        }
    }
}
