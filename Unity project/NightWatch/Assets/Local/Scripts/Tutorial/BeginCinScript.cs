using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BeginCinScript : MonoBehaviour
{

    public GameObject CanvaMission;
    public GameObject BoxObject;

    public GameObject Cinematic;
    
    private void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Player")
        {
            CanvaMission.SetActive(false);
            Cinematic.SetActive(true);
            BoxObject.SetActive(false);
        }
    }
}
