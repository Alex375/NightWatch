using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AnimationCondition : MonoBehaviour
{
    public Animator anim;
    public GameObject Character;
    private FirstPersonAIO scriptFPP;

    // Update is called once per frame
    private void Start()
    {
        scriptFPP = Character.GetComponent<FirstPersonAIO>();
    }

    void Update()
    {
        if ((Input.GetKey(KeyCode.Z) || Input.GetKey(KeyCode.S) || Input.GetKey(KeyCode.Q) || Input.GetKey(KeyCode.D)) && scriptFPP.playerCanMove)
        {
            anim.SetFloat("vertical",1f);
            
            if (Input.GetKey(KeyCode.Z))
                anim.SetFloat("horizontal",0f);
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
