using System.Collections;
using System.Collections.Generic;
using Photon.Pun;
using Photon.Realtime;
using UnityEngine;
using UnityEngine.UI;


/// <summary>
/// Ready system gestion
///     - Check all player ready
///     - Start game
///     - Ready action
///     - Ready button
/// </summary>

public class CreateGame : MonoBehaviourPunCallbacks
{
    public Text readyText;
    private bool ready = false;
    public Button readyButton;
    public Button startButton;
    private ExitGames.Client.Photon.Hashtable customProperties = new ExitGames.Client.Photon.Hashtable();
    private bool everyoneIsReady;
    
    public override void OnPlayerPropertiesUpdate(Player player, ExitGames.Client.Photon.Hashtable hash)
    {
        bool playerAllReady = true;
        foreach (KeyValuePair<int, Player> playerInfo in PhotonNetwork.CurrentRoom.Players)
        {
            if (!(bool) playerInfo.Value.CustomProperties["Ready"])
            {
                playerAllReady = false;
                
            }
        }

        if (PhotonNetwork.LocalPlayer.IsMasterClient)
        {
            startButton.interactable = playerAllReady;
        }
        
        everyoneIsReady = playerAllReady;
    }

    public void OnClick_StartGame()
    {

        if (PhotonNetwork.IsMasterClient && everyoneIsReady)
        {
            PhotonNetwork.CurrentRoom.IsOpen = false;
            PhotonNetwork.CurrentRoom.IsVisible = false;
            PhotonNetwork.LoadLevel(1);
            foreach (KeyValuePair<int, Player> playerInfo in PhotonNetwork.CurrentRoom.Players)
            {
                playerInfo.Value.CustomProperties.Remove("Ready");
            }
        }
    }

    public void OnClick_ReadyUp()
    {

            SetReady(!ready);
        
    }
    
    private void SetReady(bool state)
    {
        if (!state)
        {
            ready = false;
            readyText.text = "Not ready";
            customProperties["Ready"] = false;
            PhotonNetwork.SetPlayerCustomProperties(customProperties);
        }
        else
        {
            ready = true;
            readyText.text = "Ready";
            customProperties["Ready"] = true;
            PhotonNetwork.SetPlayerCustomProperties(customProperties);
        }
    }
    
    public override void OnEnable()
    {
        base.OnEnable();
        if (PhotonNetwork.IsMasterClient)
        {
            readyButton.interactable = false;
            SetReady(true);
        }
        else
        {
            readyButton.interactable = true;
            startButton.interactable = false;
            SetReady(false); 
        }
    }
}
