using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AnimationAfterIntroScript : MonoBehaviour
{
    public GameObject AnimationCamera;
    public GameObject FPPCamera;
    public Animation TitleAnimation;
    void Update()
    {
        if (!TitleAnimation.isPlaying)
        {
            MissionManager.instance.NextMission();
        }
    }

    private void OnDisable()
    {
        FPPCamera.SetActive(true);
        AnimationCamera.SetActive(false);
    }
}
