using System.Collections;
using System.Collections.Generic;
using Photon.Pun;
using UnityEngine;

public class MonsterAberation : MonoBehaviour
{
    public GameObject Gobject;
    private void Start()
    {
        if (PhotonNetwork.LocalPlayer.CustomProperties["Survivor"] != null)
        {
            if ((bool) PhotonNetwork.LocalPlayer.CustomProperties["Survivor"])
            {
                Gobject.SetActive(false);
            }
        }
        else
        {
            Gobject.SetActive(false);
        }
    }
}
