using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class AnimationAfterIntroScript : MonoBehaviour
{
    public GameObject MusicSource;
    public GameObject AnimationCamera;
    public GameObject FPPCamera;
    public Animation TitleAnimation;
    public RawImage RImage;
    public GameObject ATH;
    public GameObject ScreamSource;
    public GameObject NightSound;
    public NightShiftingScript nightShiftingScript;
    private bool changedDay = false;
    void Update()
    {
        if (!TitleAnimation.isPlaying)
        {
            MissionManager.instance.NextMission();
        }
        else
        {
            if (!changedDay && RImage.color.a == 1)
            {
                ScreamSource.SetActive(true);
                FPPCamera.SetActive(true);
                PlayerManagerLo.instance.AudioListenerSetActive(true);
                AnimationCamera.SetActive(false);
                
                nightShiftingScript.ShiftToNihgt(false);
                changedDay = true;
            }
        }
    }

    private void OnDisable()
    {
        NightSound.SetActive(true);
        MusicSource.SetActive(false);
        ATH.SetActive(true);
    }
}
