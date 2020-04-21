using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MonsterSound : MonoBehaviour
{
    public AudioSource AudioSource;
    public bool Test;

    private void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Monster" && !AudioSource.isPlaying)
        {
            AudioSource.Play();
            Test = true;
        }
    }
    
    private void OnTriggerStay(Collider other)
    {
        if (other.tag == "Monster" && !AudioSource.isPlaying)
        {
            AudioSource.Play();
            Test = true;
        }
    }
    
    private void OnTriggerExit(Collider other)
    {
        if (other.tag == "Monster")
        {
            AudioSource.Stop();
            Test = false;
        }
    }
    
}
