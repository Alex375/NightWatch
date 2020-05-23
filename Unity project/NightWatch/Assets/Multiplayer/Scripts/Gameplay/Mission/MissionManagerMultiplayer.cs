using System.Collections;
using System.Collections.Generic;
using Photon.Pun;
using Photon.Realtime;
using UnityEngine;

public class MissionManagerMultiplayer : MonoBehaviourPun
{
    public List<GameObject> Mission;
    
    private int index;
    private void Start()
    {
        index = 0;
        foreach (GameObject m in Mission)
        {
            m.SetActive(false);
        }

        StartFirstMission();
    }

    public void StartFirstMission()
    {
        if (Mission.Count > 0)
        {
            Mission[index].SetActive(true);
        }
    }

    public void StartNextMission(bool master = true)
    {
        if (master)
        {
            if (PhotonNetwork.IsMasterClient)
            {
                photonView.RPC("StartNextMissionRPC",RpcTarget.All);
            }
        }
        else
        {
            photonView.RPC("StartNextMissionRPC",RpcTarget.All);
        }
        
    }

    public void StartSpecificMission(int id)
    {
        if (id < Mission.Count)
        {
            Mission[index].SetActive(false);
            index = id;
            Mission[index].SetActive(true);
        }
    }

    [PunRPC]
    private void StartNextMissionRPC()
    {
        MissionShowing.instance.StopShowing();
        Mission[index].SetActive(false);
        if (index + 1 < Mission.Count)
        {
            index += 1;
            Mission[index].SetActive(true);
        }
    }
    
}
