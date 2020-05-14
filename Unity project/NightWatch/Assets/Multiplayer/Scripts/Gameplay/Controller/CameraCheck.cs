using System;
using System.Collections;
using System.Collections.Generic;
using Photon.Pun;
using UnityEditor;
using UnityEngine;

public class CameraCheck : MonoBehaviourPun
{
    public Camera camera;
    public AudioSource audio;

    private void Start()
    {
        if (!photonView.IsMine)
        {
            camera.enabled = false;
            GetComponent<AudioListener>().enabled = false;
            if (audio != null)
                audio.enabled = false;
        }
    }
}
