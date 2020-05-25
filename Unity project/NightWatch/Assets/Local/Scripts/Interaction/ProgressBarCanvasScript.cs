using System;
using System.Collections;
using System.Collections.Generic;
using System.Security;
using UnityEngine;
using UnityEngine.UI;

public class ProgressBarCanvasScript : MonoBehaviour
{
    public Text textLabel;
    public Slider slider;
    public GameObject panel;
    public Action completion;
    public float progressValue
    {
        get { return slider.value; }
        set
        {
            if (value < 0f)
            {
                slider.value = 0;
                Debug.LogWarning("Slider value under 0 has been set to 0");
                return;
            }

            if (value > 1f)
            {
                slider.value = 1f;
                Debug.LogWarning("Slider value over 1 has benn set to 1");
                completion.Invoke();
                return;
            }
            slider.value = value;
        }
    }

    public string message
    {
        get { return textLabel.text; }
        set
        {
            textLabel.text = value;
        }
    }

    public bool progressShowing
    {
        get { return panel.activeSelf; }
        set
        {
            panel.SetActive(value);
        }
    } 
    
}
