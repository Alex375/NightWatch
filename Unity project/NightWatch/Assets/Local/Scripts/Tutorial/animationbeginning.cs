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

    public GameObject Player;
    // Start is called before the first frame update
    void Awake()
    {
        fppCamera.SetActive(false);
        cinematicCamera.SetActive(true);
        musicIntro.SetActive(true);
        fadeBird.enabled = true;
        fadeWind.enabled = true;
        Player.GetComponent<FirstPersonAIO>().playerCanMove = false;
        Player.GetComponent<FirstPersonAIO>().enableCameraMovement = false;
        
    }

    // Update is called once per frame
    void Update()
    {
        if (!animation.isPlaying)
        {
            textNigtWatch.SetActive(true);
            wind.loop = false;
            bird.loop = false;
            enabled = false;
        }
    }
}
