using System.Collections;
using System.Collections.Generic;
using Photon.Pun;
using UnityEngine;

public class HealthSystem : MonoBehaviourPun
{
    public int health = 100;

    public void ModifyHealth(int n)
    {
        photonView.RPC("ModifyHealthRPC", RpcTarget.All, n, photonView.ViewID);
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
