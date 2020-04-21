using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class animationbeginning : MonoBehaviour
{
    public GameObject fppCamera;

    public GameObject cinematicCamera;

    public GameObject textNigtWatch;
    
    public GameObject musicIntro;

    public Animation animation;

    public Animation fadeWind;

    public Animation fadeBird;

    public AudioSource wind;

    public AudioSource bird;

    public doorController DoorController;
    
    
    
    // Start is called before the first frame update
    void Awake()
    {
        fppCamera.SetActive(false);
        PlayerManagerLo.instance.AudioListenerSetActive(false);
        cinematicCamera.SetActive(true);
        musicIntro.SetActive(true);
        fadeBird.enabled = true;
        fadeWind.enabled = true;
        DoorController.CloseDoor();

    }

    // Update is called once per frame
    void Update()
    {
        if (!animation.isPlaying)
        {
            textNigtWatch.SetActive(true);
            wind.loop = false;
            bird.loop = false;
            MissionManager.instance.NextMission();
        }
    }
}
