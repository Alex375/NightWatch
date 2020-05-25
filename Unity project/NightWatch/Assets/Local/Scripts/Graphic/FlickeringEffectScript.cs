using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Random = System.Random;

public class FlickeringEffectScript : MonoBehaviour
{
    public Light FlashLight;
    private int timer = 0;
    private Random rand = new Random();
    
    private void FixedUpdate()
    {
        if (timer <= 0)
        {
            FlashLight.enabled ^= true;
            timer = rand.Next(5, 30);
        }

        timer -= 5;
    }
}
