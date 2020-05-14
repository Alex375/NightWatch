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
    private AudioListener audio;

    public void HideLocalPlayer()
    {
        playerGameObject = PlayerReference.GetComponent<PlayerSpawn>().localGameObject;
        photonView.RPC("HideRpcPlayer",RpcTarget.All,playerGameObject);
    }

    [PunRPC]
    private void HideRpcPlayer(GameObject player)
    {
        playerGameObject = player;
        playerMovement = playerGameObject.GetComponent<PlayerMovement>();
        flashLight = playerGameObject.GetComponent<FlashLightControll>();
        characterController = playerGameObject.GetComponent<CharacterController>();
        hideMesh = playerGameObject.GetComponentInChildren<HideMesh>();
        audio = playerGameObject.GetComponent<AudioListener>();
        playerMovement.enabled = false;
        flashLight.SetLightOn(false);
        flashLight.enabled = false;
        characterController.enabled = false;
        audio.enabled = false;
        hideMesh.HideMeshPlayer();
    }
}
