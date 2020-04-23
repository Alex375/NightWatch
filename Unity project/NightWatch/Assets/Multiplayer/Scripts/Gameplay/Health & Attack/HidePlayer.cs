using System;
using System.Collections;
using System.Collections.Generic;
using Photon.Pun;
using Photon.Realtime;
using UnityEngine;

public class HidePlayer : MonoBehaviourPun
{
    public GameObject PlayerReference;

    private GameObject playerGameObject;
    private PlayerMovement playerMovement;
    private FlashLightControll flashLight;
    private CharacterController characterController;
    private HideMesh hideMesh;

    public void HideLocalPlayer()
    {
        playerGameObject = PlayerReference.GetComponent<PlayerSpawn>().localGameObject;
        playerMovement = playerGameObject.GetComponent<PlayerMovement>();
        flashLight = playerGameObject.GetComponent<FlashLightControll>();
        characterController = playerGameObject.GetComponent<CharacterController>();
        hideMesh = playerGameObject.GetComponentInChildren<HideMesh>();
        photonView.RPC("HideRpcPlayer",RpcTarget.All,PhotonNetwork.LocalPlayer);
    }

    [PunRPC]
    private void HideRpcPlayer(Player player)
    {
        if (Equals(player, PhotonNetwork.LocalPlayer))
        {
            playerMovement.enabled = false;
            flashLight.SetLightOn(false);
            flashLight.enabled = false;
            characterController.enabled = false;
            hideMesh.HideMeshPlayer();
        }
    }
}
