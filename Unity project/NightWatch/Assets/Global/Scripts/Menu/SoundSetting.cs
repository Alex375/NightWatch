using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class SoundSetting : MonoBehaviour
{
    public Slider slider;

    private void Awake()
    {
        slider.value = AudioListener.volume;
    }

    // Update is called once per frame
    void Update()
    {
        AudioListener.volume = slider.value;
    }

    private void OnDisable()
    {
        PlayerPrefs.SetFloat("volume", AudioListener.volume);
    }
}
