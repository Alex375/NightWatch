using System.Collections;
using System.Collections.Generic;
using Photon.Pun;
using Photon.Realtime;
using UnityEngine;
using UnityEngine.UI;

public class ShowLeavedRoomPretty : MonoBehaviourPunCallbacks
{
    public GameObject roomMenu;
    public GameObject roomList;
    public override void OnLeftRoom()
    {
        print("You left room");
        roomList.SetActive(true);
        roomMenu.SetActive(false);
    }

}