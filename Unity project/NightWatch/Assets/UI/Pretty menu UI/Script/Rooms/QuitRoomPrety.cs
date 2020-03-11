using System.Collections;
using System.Collections.Generic;
using Photon.Pun;
using UnityEngine;

public class QuitRoomPrety : MonoBehaviour
{
    public void OnClick_LeaveRoom()
    {
        if (PhotonNetwork.InRoom)
        {
            PhotonNetwork.LeaveRoom(true);
            print("room quitted");
        }
    }
}