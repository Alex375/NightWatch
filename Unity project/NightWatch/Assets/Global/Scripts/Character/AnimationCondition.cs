using System;
using System.Collections;
using System.Collections.Generic;
using Photon.Pun;
using UnityEngine;

public class AnimationCondition : MonoBehaviourPun
{
    public Animator anim;
    public bool StayIdle = false;

    void Update()
    {
        if (photonView.IsMine || PhotonNetwork.OfflineMode)
        {
            if ((Input.GetKey(KeyCode.Z) || Input.GetKey(KeyCode.S) || Input.GetKey(KeyCode.Q) || Input.GetKey(KeyCode.D)) && !StayIdle)
            {
                anim.SetFloat("vertical",1f);
                
                if (Input.GetKey(KeyCode.Z))
                {
                    if (Input.GetKey(KeyCode.LeftShift))
                        anim.SetFloat("horizontal",4f);
                    else
                        anim.SetFloat("horizontal",0f);
                }
                    
                else if (Input.GetKey(KeyCode.S))
                    anim.SetFloat("horizontal",1f);
                else if (Input.GetKey(KeyCode.Q))
                    anim.SetFloat("horizontal",2f);
                else if (Input.GetKey(KeyCode.D))
                    anim.SetFloat("horizontal",3f);
            }
            else
            {
                anim.SetFloat("vertical",0f);
            }
        }
    }
}
