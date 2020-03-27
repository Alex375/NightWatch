using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Photon.Realtime;
using Photon.Pun;

public class RoleButton : MonoBehaviourPunCallbacks
{
    public Button monsterButton;
    
    private ExitGames.Client.Photon.Hashtable customProperties = new ExitGames.Client.Photon.Hashtable();

    public void OnClick_BeMonster()
    {
        customProperties["Survivor"] = false;
        PhotonNetwork.SetPlayerCustomProperties(customProperties);
    }

    public void OnClick_BeSurvivor()
    {
        customProperties["Survivor"] = true;
        PhotonNetwork.SetPlayerCustomProperties(customProperties);
    }
   

    private void getMonster()
    {
        int nbOfMonster = 0;
        
        foreach (KeyValuePair<int, Player> playerInfo in PhotonNetwork.CurrentRoom.Players)
        {
            if (!(bool) playerInfo.Value.CustomProperties["Survivor"])
            {
                nbOfMonster += 1;
            }
        }

        if (nbOfMonster >= 1)
        {
            monsterButton.interactable = false;
        }
        else
        {
            monsterButton.interactable = true;
        }
    }
    
    public override void OnEnable()
    {
        base.OnEnable();
        getMonster();
    }

    public override void OnPlayerPropertiesUpdate(Player player, ExitGames.Client.Photon.Hashtable hash)
    {
        base.OnPlayerPropertiesUpdate(player, hash);
        getMonster();
    }


}
