using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Animations;
public class activateTuto : MonoBehaviour
{

    public Animation animation;
    

    public GameObject UI;
    // Update is called once per frame
    void Update()
    {
        if (!animation.isPlaying)
        {
            UI.SetActive(true);
            MissionManager.instance.QuitAllMission();
            MissionManager.instance.ActivateMission(0);
            enabled = false;
        }
    }
}
