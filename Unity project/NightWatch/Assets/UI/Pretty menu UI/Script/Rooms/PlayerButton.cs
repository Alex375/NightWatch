using System.Collections;
using System.Collections.Generic;
using Photon.Pun;
using Photon.Realtime;
using UnityEngine;
using UnityEngine.UI;
public class PlayerButton : MonoBehaviourPunCallbacks
{
    public Text textButton;

    public Player player { get; private set; }
    
    public override void OnPlayerPropertiesUpdate(Player player, ExitGames.Client.Photon.Hashtable hash)
    {
        if (player == this.player)
            SetPlayerInfo(player);
    }
    
    public void SetPlayerInfo(Player player)
    {

        this.player = player;
        bool survivor = (bool) player.CustomProperties["Survivor"];
        bool ready = (bool) player.CustomProperties["Ready"];
        string roleString;
        string hostString;
        string readyString;
        
        if (survivor)
        {
            roleString = "Survivor, ";
        }
        else
        {
            roleString = "Monster, ";
        }

        if (player.IsMasterClient)
        {
            hostString = ", host";
        }
        else
        {
            hostString = "";
        }

        if (ready)
        {
            readyString = ", ready";
        }
        else
        {
            readyString = ", not ready";
        }
        
        textButton.text = roleString + player.NickName + hostString + readyString;
        
    }
}
