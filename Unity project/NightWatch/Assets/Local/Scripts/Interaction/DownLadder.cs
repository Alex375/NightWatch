using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DownLadder : MonoBehaviour
{
    public LadderController ladder;

    private void OnTriggerEnter(Collider other)
    {
        if (!other.CompareTag("Player"))
            return;
        ladder.enabled = true;
        ladder.Up = false;
    }

    private void OnTriggerExit(Collider other)
    {
        if (!other.CompareTag("Player"))
            return;
        ladder.enabled = false;
    }
}
