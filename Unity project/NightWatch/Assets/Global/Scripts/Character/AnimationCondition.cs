using System;
using System.Collections;
using System.Collections.Generic;
using Photon.Pun;
using UnityEngine;

public class AnimationCondition : MonoBehaviourPun
{
    public Animator anim;
    public bool StayIdle = false;
    public GameObject Player;

    private FlashLightControll flashLight;

    private void Start()
    {
        flashLight = Player.GetComponent<FlashLightControll>();
    }

    void Update()
    {
        if (photonView.IsMine || PhotonNetwork.OfflineMode)
        {
            anim.SetBool("HasLamp",flashLight.HasTorchLamp);
            if (!StayIdle)
            {
                if (Input.GetKey(KeyCode.LeftShift))
                    anim.SetFloat("vertical", Input.GetAxis("Vertical") * 2);
                else
                    anim.SetFloat("vertical", Input.GetAxis("Vertical"));
                anim.SetFloat("horizontal",Input.GetAxis("Horizontal"));
            }
        }
    }
}