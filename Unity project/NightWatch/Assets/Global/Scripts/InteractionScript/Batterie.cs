using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Batterie : MonoBehaviour
{
    public float battery = 100, maxBattery = 100;
    Rect batteryRect;
    Texture2D batteryTexture;
    private PlayerManagerLo _playerManager;

    // Start is called before the first frame update
    void Start()
    {
        batteryRect = new Rect(Screen.width*36/40, Screen.height/5, Screen.width/20, Screen.height/10);
    }

    private void Awake()
    {
        _playerManager = FindObjectOfType<PlayerManagerLo>();
    }
    // Update is called once per frame

    void OnGUI()
    {
        battery = _playerManager.CurrentBatteryLevel;
        float ratio = battery / maxBattery;
        float rectHeight = ratio*Screen.width/7;
        batteryRect.width = rectHeight;
        batteryRect.y = Screen.height/5f - rectHeight;
        GUI.DrawTexture(batteryRect, Texture2D.whiteTexture);
    }
}
