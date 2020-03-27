using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Photon.Pun;
using Photon.Realtime;

public class JoinRoom : MonoBehaviour
{
    public void OnClick_JoinRoom()
    {
        PhotonNetwork.JoinRoom(this.GetComponent<RoomButton>().roomName);
    }
}