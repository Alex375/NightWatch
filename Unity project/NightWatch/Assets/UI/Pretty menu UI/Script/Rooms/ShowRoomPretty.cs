using System.Collections;
using System.Collections.Generic;
using Photon.Pun;
using Photon.Realtime;
using UnityEngine;
using UnityEngine.UI;

public class ShowRoomPretty : MonoBehaviourPunCallbacks
{
    public GameObject roomList;
    public GameObject roomMenu;
    public Text roomTextUi;
    public override void OnJoinedRoom()
    {
        print("Joined room : " + PhotonNetwork.CurrentRoom.Name);
        roomMenu.SetActive(true);
        roomList.SetActive(false);
        roomTextUi.text = "Room : " + PhotonNetwork.CurrentRoom.Name;
    }
    
    public override void OnCreatedRoom()
    {
        print("Joined room : " + PhotonNetwork.CurrentRoom.Name);
        roomMenu.SetActive(true);
        roomList.SetActive(false);
        roomTextUi.text = "Room : " + PhotonNetwork.CurrentRoom.Name;
    }
    
}