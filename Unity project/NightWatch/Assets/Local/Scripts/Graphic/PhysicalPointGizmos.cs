using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PhysicalPointGizmos : MonoBehaviour
{
    public Color color = Color.blue;
    public float Radius = 1;

    private void OnDrawGizmos()
    {
        Gizmos.color = color;
        Gizmos.DrawSphere(transform.position, Radius);
    }
}
