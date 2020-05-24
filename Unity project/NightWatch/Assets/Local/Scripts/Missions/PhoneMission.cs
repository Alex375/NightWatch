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
            MissionShowing.instance.Show("The phone is broken");
            HandeLetter.isUsable = true;
            HandeLetter.enabled = true;
            NotificationShowing.instance.Show("E to read the letter");
        };
        MissionShowing.instance.Show("Call for backup with the phone!");
        HandeLetter.completion = () =>
        {
            MissionManager.instance.NextMission();
        };
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
