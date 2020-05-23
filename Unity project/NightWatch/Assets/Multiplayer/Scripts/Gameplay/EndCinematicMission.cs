using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Experimental.Rendering;
using UnityEngine.Experimental.Rendering.HDPipeline;
using UnityEngine.UI;

public class EndCinematicMission : MonoBehaviour
{
    public Animation AnimCar;
    public Animation AnimPanel;
    public Animator AnimGate;
    public GameObject Mission;
    public GameObject Camera;
    public GameObject PlayerReference;
    public Image Panel;
    public AudioSource motorSound;
    public float test = 0;

    private float time = 0;
    private float time2 = 0;
    private bool stopCounter = false;
    private bool stopSwitch = false;
    
    private void Update()
    {
        time2 += Time.deltaTime;
        test = Panel.color.a;
        if (time2 >= 5f && !stopSwitch) 
        {
            Camera.SetActive(true);
            PlayerReference.GetComponent<PlayerSpawn>().localGameObject.SetActive(false);
            stopSwitch = true;
        }
        
        if (!AnimPanel.isPlaying && !stopCounter)
        {
            AnimCar.Play();
            motorSound.Play();
            stopCounter = true; 
        }

        if (AnimCar.isPlaying)
        {
            time += Time.deltaTime;
        }
        
        if (time >= 8f)
        {
            AnimGate.SetFloat("open",1);
        }


        if (time >= 11.30f)
        {
            Mission.GetComponent<MissionManagerMultiplayer>().StartNextMission();
        }
        
    }
}
