using System.Collections;
using System.Collections.Generic;
using Photon.Pun;
using Photon.Realtime;
using UnityEngine;

public class RoomListingPretty : MonoBehaviourPunCallbacks
{
    public Transform contentOfRoomListing;

    public RoomButton roomButton;
    
    private List<RoomButton> listings = new List<RoomButton>();
    
    private ExitGames.Client.Photon.Hashtable customProperties = new ExitGames.Client.Photon.Hashtable();
    
    private void AddRoomButton(RoomInfo info)
    {
        if (info.RemovedFromList)
        {
            int index = listings.FindIndex(x => x.RoomInfo.Name == info.Name);
            if (index != -1)
            {
                Destroy(listings[index].gameObject);
                listings.RemoveAt(index);
            }
        }
        else
        {
            int index = listings.FindIndex(x => x.RoomInfo.Name == info.Name);
            if (index == -1)
            {
                RoomButton listing = Instantiate(roomButton, contentOfRoomListing);
                if (listing != null)
                {
                    listing.SetRoomInfo(info);
                    listings.Add(listing);
                }
            }
        }
    }

    private void GetCurrentRoom(List<RoomInfo> roomList)
    {
        foreach (RoomInfo info in roomList)
        {
            AddRoomButton(info);
        }
    }
    
    public override void OnRoomListUpdate(List<RoomInfo> roomList)
    {
        GetCurrentRoom(roomList);
        
    }

    public override void OnEnable()
    {
        base.OnEnable();
        customProperties["Survivor"] = true;
        PhotonNetwork.SetPlayerCustomProperties(customProperties);
    }
}