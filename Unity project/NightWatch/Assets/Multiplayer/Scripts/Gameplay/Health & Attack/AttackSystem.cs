using System;
using System.Collections;
using System.Collections.Generic;
using Photon.Pun;
using UnityEngine;

public class AttackSystem : MonoBehaviourPun
{
    private float time = 0.9f;
    private bool activateTimer = false;
    private Collider player;
    
    private void OnTriggerStay(Collider other)
    {
        if (other.tag == "Player" && Input.GetKeyDown(KeyCode.Mouse0))
        {
            if (time >= 0.9f)
            {
                activateTimer = true;
                player = other;
            }
                
        }
    }
    private void Update()
    {
        if (activateTimer)
        {
            time -= Time.deltaTime;
            if (time <= 0f)
            {
                time = 0.9f;
                activateTimer = false;
                player.GetComponent<HealthSystem>().ModifyHealth(-50);
            }
        }
        
    }
}
