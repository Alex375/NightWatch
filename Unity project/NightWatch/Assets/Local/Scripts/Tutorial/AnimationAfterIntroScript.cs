using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class AnimationAfterIntroScript : MonoBehaviour
{
    public GameObject AnimationCamera;
    public GameObject FPPCamera;
    public Animation TitleAnimation;
    public RawImage RImage;
    public GameObject ATH;
    public GameObject ScreamSource;
    public GameObject[] DaysObjects;
    public GameObject[] NightObject;
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
                AnimationCamera.SetActive(false);
                foreach (var d in DaysObjects)
                {
                    d.SetActive(false);
                }

                foreach (var n in NightObject)
                {
                    n.SetActive(true);
                }
                
                changedDay = true;
            }
        }
    }

    private void OnDisable()
    {
        ATH.SetActive(true);
    }
}
