using System;
using System.Collections;
using System.Collections.Generic;
using Photon.Pun;
using UnityEngine;
using UnityEngine.UI;

public class MonsterIntro : MonoBehaviour
{
    public Text text;

    private void Awake()
    {
        if (!(bool) PhotonNetwork.LocalPlayer.CustomProperties["Survivor"])
            text.text = "Prevent survivors from running away";
    }
}
