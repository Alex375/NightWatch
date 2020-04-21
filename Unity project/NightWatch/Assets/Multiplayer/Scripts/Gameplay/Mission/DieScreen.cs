﻿using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DieScreen : MonoBehaviour
{
    public List<GameObject> toDesactivate;
    public GameObject PlayerReference;
    private void OnEnable()
    {
        PlayerReference.GetComponent<PlayerSpawn>().localGameObject.GetComponent<PlayerMovement>().SetMove(false);
        foreach (GameObject g in toDesactivate)
        {
            g.SetActive(false);
        }
    }
}