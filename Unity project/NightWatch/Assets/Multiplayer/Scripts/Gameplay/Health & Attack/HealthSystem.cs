using System;
using System.Collections;
using System.Collections.Generic;
using Photon.Pun;
using UnityEngine;

public class HealthSystem : MonoBehaviourPun
{
    public int health = 100;

    private GameObject DeathScreen;

    public void ModifyHealth(int n)
    {
        photonView.RPC("ModifyHealthRPC", RpcTarget.All, n, photonView.ViewID);
    }

    private void Update()
    {
        if (health <= 0 && photonView.IsMine)
        {
            DeathScreen = GameObject.FindWithTag("Dead");
            DeathScreen.GetComponent<Canvas>().enabled = true;
            DeathScreen.GetComponent<DieScreen>().enabled = true;
            enabled = false;
        }
    }
    
    [PunRPC]
    private void ModifyHealthRPC(int n, int id)
    {
        if (photonView.ViewID == id)
        {
            health += n;
        }
    }
}
