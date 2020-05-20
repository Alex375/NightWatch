using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PhoneMission : MonoBehaviour
{
    public PhoneController Phone;
    public HandLettreController HandeLetter;

    private void Awake()
    {
        HandeLetter.isUsable = false;
        Phone.isUsable = true;
        Phone.CompletionHanlder = () =>
        {
            this.Phone.isUsable = false;
            this.Phone.Message = "The phone is broken";
            NotificationShowing.instance.Show("The phone is broken");
            HandeLetter.isUsable = true;
        };
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
