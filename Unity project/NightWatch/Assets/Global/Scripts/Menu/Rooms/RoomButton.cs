using System.Collections;
using System.Collections.Generic;
using Photon.Realtime;
using UnityEngine;
using UnityEngine.UI;

public class RoomButton : MonoBehaviour
{
    public Text textButton;
    
    public RoomInfo RoomInfo { get; private set; }

    public string roomName;

    public void SetRoomInfo(RoomInfo roomInfo)
    {
        RoomInfo = roomInfo;
        textButton.text = roomInfo.Name;
        roomName = roomInfo.Name;
    }

}
