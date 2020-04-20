using System;
using System.Collections;
using System.Collections.Generic;
using Photon.Pun;
using UnityEngine;
using Random = System.Random;

public class PlayerSpawn : MonoBehaviourPunCallbacks
{
    public GameObject localGameObject;

    public bool TestMode = false;

    private List<GameObject> playerList;
    public override void OnJoinedRoom()
    {
        if (TestMode)
        {
            base.OnJoinedRoom();
            if (PhotonNetwork.LocalPlayer.CustomProperties["Survivor"] != null)
            {
                if ((bool) PhotonNetwork.LocalPlayer.CustomProperties["Survivor"])
                {
                    Random rnd = new Random();
                    int nb = rnd.Next(1, 5);
                    if (nb == 1)
                    {
                        localGameObject = PhotonNetwork.Instantiate("PhotonPrefabs/Player", new Vector3(221, 39, 92), new Quaternion(0, 0, 0, 0));
                    }
                    else if (nb == 2)
                    {
                        localGameObject = PhotonNetwork.Instantiate("PhotonPrefabs/Player", new Vector3(112, 35, 160), new Quaternion(0, 0, 0, 0));
                    }
                    else if (nb == 3)
                    {
                        localGameObject = PhotonNetwork.Instantiate("PhotonPrefabs/Player", new Vector3(114, 32, 131), new Quaternion(0, 0, 0, 0));
                    }
                    else if (nb == 4)
                    {
                        localGameObject = PhotonNetwork.Instantiate("PhotonPrefabs/Player", new Vector3(123, 35, 63), new Quaternion(0, 0, 0, 0));
                    }
                    else if (nb == 5)
                    {
                        localGameObject = PhotonNetwork.Instantiate("PhotonPrefabs/Player", new Vector3(172, 32, 41), new Quaternion(0, 0, 0, 0));
                    }
                    
                }
                else
                {
                    localGameObject = PhotonNetwork.Instantiate("PhotonPrefabs/Monster", new Vector3(221, 39, 92), new Quaternion(0, 0, 0, 0));
                }
                
            }
        }
    }

    private void Start()
    {
        if (!TestMode)
        {
            if (PhotonNetwork.LocalPlayer.CustomProperties["Survivor"] != null)
            {
                if ((bool) PhotonNetwork.LocalPlayer.CustomProperties["Survivor"])
                {
                    Random rnd = new Random();
                    int nb = rnd.Next(1, 5);
                    if (nb == 1)
                    {
                        localGameObject = PhotonNetwork.Instantiate("PhotonPrefabs/Player", new Vector3(221, 39, 92), new Quaternion(0, 0, 0, 0));
                    }
                    else if (nb == 2)
                    {
                        localGameObject = PhotonNetwork.Instantiate("PhotonPrefabs/Player", new Vector3(112, 35, 160), new Quaternion(0, 0, 0, 0));
                    }
                    else if (nb == 3)
                    {
                        localGameObject = PhotonNetwork.Instantiate("PhotonPrefabs/Player", new Vector3(114, 32, 131), new Quaternion(0, 0, 0, 0));
                    }
                    else if (nb == 4)
                    {
                        localGameObject = PhotonNetwork.Instantiate("PhotonPrefabs/Player", new Vector3(123, 35, 63), new Quaternion(0, 0, 0, 0));
                    }
                    else if (nb == 5)
                    {
                        localGameObject = PhotonNetwork.Instantiate("PhotonPrefabs/Player", new Vector3(172, 32, 41), new Quaternion(0, 0, 0, 0));
                    }
                    
                }
                else
                {
                    localGameObject = PhotonNetwork.Instantiate("PhotonPrefabs/Monster", new Vector3(221, 39, 92), new Quaternion(0, 0, 0, 0));
                }
                
            }
        }
    }
}
