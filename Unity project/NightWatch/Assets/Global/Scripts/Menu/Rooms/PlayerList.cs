using System.Collections;
using System.Collections.Generic;
using Photon.Pun;
using Photon.Realtime;
using UnityEngine;

public class PlayerList : MonoBehaviourPunCallbacks
{
    public Transform content;

    public PlayerButton playerButton;
    
    private List<PlayerButton> listings = new List<PlayerButton>();
    
    
    
    private void AddPlayerListing(Player player)
    {
        int index = listings.FindIndex(x => x.player == player);
        if (index != -1)
        {
            listings[index].SetPlayerInfo(player);
        }
        else
        {
            PlayerButton button = Instantiate(playerButton, content);
            if (button != null)
            {
                button.SetPlayerInfo(player);
                listings.Add(button);
            }
        }
    }
    
    private void GetCurrentRoomPlayers()
    {
        if (!PhotonNetwork.IsConnected)
            return;
        if (PhotonNetwork.CurrentRoom == null || PhotonNetwork.CurrentRoom.Players == null)
            return;
        
        foreach (KeyValuePair<int, Player> playerInfo in PhotonNetwork.CurrentRoom.Players)
        {
            AddPlayerListing(playerInfo.Value);
        }
    }

    public override void OnEnable()
    {
        base.OnEnable();
        GetCurrentRoomPlayers();
    }

    public override void OnDisable()
    {
        base.OnDisable();
        foreach (PlayerButton player in listings)
        {
            Destroy(player.gameObject);
        }
        listings.Clear();
    }
    
    public override void OnPlayerEnteredRoom(Player newPlayer)
    {
        AddPlayerListing(newPlayer);
    }

    public override void OnPlayerLeftRoom(Player otherPlayer)
    {
        int index = listings.FindIndex(x => x.player == otherPlayer);
        if (index != -1)
        {
            Destroy(listings[index].gameObject);
            listings.RemoveAt(index);
        }
    }
    
}