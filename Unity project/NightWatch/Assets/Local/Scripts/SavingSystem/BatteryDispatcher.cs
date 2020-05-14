using System.Collections;
using System.Collections.Generic;
using System.Security;
using UnityEngine;

public class BatteryDispatcher : MonoBehaviour
{
    public List<GameObject> elements;

    public bool[] GetActiveComponets()
    {
        bool[] res = new bool[elements.Count];
        for (int i = 0; i < elements.Count; i++)
        {
            res[i] = elements[i].activeSelf;
        }

        return res;
    }

    public void ActivateComponents(bool[] activeComponents)
    {
        if (activeComponents.Length != elements.Count)
        {
            throw new VerificationException("ActivateComponents: activeComponents array and elements array must have the same size");
        }

        for (int i = 0; i < elements.Count; i++)
        {
            elements[i].SetActive(activeComponents[i]);
        }
        
    }
    
}
