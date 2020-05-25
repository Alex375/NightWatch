using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NightShiftingScript : MonoBehaviour
{
    public List<GameObject> DayComponents;
    public List<GameObject> NihgtComponents;

    public List<GameObject> OtherDayComponents;
    public List<GameObject> OhterNightComponents;

    public static bool night = false;
    

    public void ShiftToNihgt(bool otherComponents = true)
    {
        night = true;
        foreach (var dayComponent in DayComponents)
        {
            dayComponent.SetActive(false);
        }

        foreach (var nihgtComponent in NihgtComponents)
        {
            nihgtComponent.SetActive(true);
        }

        if (!otherComponents)
            return;
        foreach (var ohterNightComponent in OhterNightComponents)
        {
            ohterNightComponent.SetActive(true);
        }

        foreach (var otherDayComponent in OtherDayComponents)
        {
            otherDayComponent.SetActive(false);
        }
        
    }
    public void ShiftToDay(bool otherComponents = true)
    {
        night = false;
        foreach (var dayComponent in DayComponents)
        {
            dayComponent.SetActive(true);
        }

        foreach (var nihgtComponent in NihgtComponents)
        {
            nihgtComponent.SetActive(false);
        }
        if (!otherComponents)
            return;
        foreach (var ohterNightComponent in OhterNightComponents)
        {
            ohterNightComponent.SetActive(false);
        }

        foreach (var otherDayComponent in OtherDayComponents)
        {
            otherDayComponent.SetActive(true);
        }

    }
    
}
