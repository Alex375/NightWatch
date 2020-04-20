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
    public GameObject[] DaysObjects;
    public GameObject[] NightObject;
    void Update()
    {
        if (!TitleAnimation.isPlaying)
        {
            MissionManager.instance.NextMission();
        }
        else
        {
            if (RImage.color.a > 0.90)
            {
                foreach (var d in DaysObjects)
                {
                    d.SetActive(false);
                }

                foreach (var n in NightObject)
                {
                    n.SetActive(true);
                }
            }
        }
    }

    private void OnDisable()
    {
        FPPCamera.SetActive(true);
        AnimationCamera.SetActive(false);
    }
}
