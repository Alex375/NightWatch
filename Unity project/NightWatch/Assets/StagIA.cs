using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class StagIA : MonoBehaviour
{
    private bool zone1;

    private bool zone2;
    // Start is called before the first frame update
    void Start()
    {
        zone1 = false;
        zone2 = false;
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Player")
        {
            if (!zone1)
                zone1 = true;
            else if (!zone2)
                zone2 = true;

            if (zone1 && zone2)
            {
                print("J'ai vraiment peur !");
            }
            else if (zone1)
            {
                print("J'ai un peu peur !");
            }
        }
    }
    
    private void OnTriggerExit(Collider other)
    {
        if (other.tag == "Player")
        {
            if (zone1 && zone2)
                zone2 = false;
            else if (zone1)
                zone1 = false;
        }
    }
}
