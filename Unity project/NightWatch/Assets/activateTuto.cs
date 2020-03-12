using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Animations;
public class activateTuto : MonoBehaviour
{

    public Animation animation;

    public GameObject tuto;
    // Update is called once per frame
    void Update()
    {
        if (!animation.isPlaying)
        {
            tuto.SetActive(true);
            enabled = false;
        }
    }
}
