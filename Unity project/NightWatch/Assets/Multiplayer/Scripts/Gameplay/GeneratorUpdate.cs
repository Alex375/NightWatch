using System.Collections;
using System.Collections.Generic;
using Photon.Pun;
using UnityEngine;
using UnityEngine.UI;

public class GeneratorUpdate : MonoBehaviourPun
{
    private GameObject player;
    private PlayerMovement script;
    private AnimationCondition anim;
    private Mission scriptMission;
    private float time;
    public bool IsRepaired = false;
    
    
    public float timeToRepair = 30f;
    
    public GameObject mission;
    public GameObject PlayerReference;
    public GameObject generatorCanvas;
    public Slider generatorSlider;
    public GameObject generatorRepairedCanvas;
    public Light light;
    

    void OnEnable()
    {
        player = PlayerReference.GetComponent<PlayerSpawn>().localGameObject;
        script = player.GetComponent<PlayerMovement>();
        anim = player.GetComponentInChildren<AnimationCondition>();
        scriptMission = mission.GetComponent<Mission>();
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKey(KeyCode.E) && (bool) PhotonNetwork.LocalPlayer.CustomProperties["Survivor"])
        {
            if (!IsRepaired)
            {
                script.SetMove(false);
                anim.StayIdle = true;
                generatorCanvas.SetActive(true);
                time += Time.deltaTime;
                generatorSlider.value = time / timeToRepair;
                if (time >= timeToRepair)
                {
                    photonView.RPC("IncreaseGenerator", RpcTarget.All);
                    light.enabled = true;
                }
            }
            else
            {
                generatorCanvas.SetActive(false);
                generatorRepairedCanvas.SetActive(true);
            }
        }
        else
        {
            time = 0;
            generatorSlider.value = 0;
            script.SetMove(true);
            anim.StayIdle = false;
            generatorCanvas.SetActive(false);
            generatorRepairedCanvas.SetActive(false);
        }
    }
    
    [PunRPC]
    void IncreaseGenerator()
    {
        IsRepaired = true;
        scriptMission.IncreaseGenerator();
    }
}
