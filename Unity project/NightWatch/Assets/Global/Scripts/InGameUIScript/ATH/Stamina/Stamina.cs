using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Stamina : MonoBehaviour
{
    float stamina = 100, maxStamina = 100;
    Rect staminaRect;
    Texture2D staminaTexture;
    private PlayerMovement movementController;
    private bool RunAvaible = true;
    private bool _isRunning = false;
    private float _staminaLimitForRunAvaible;
    private float _runSpeed;
    
    // Serialized fields
    public float StaminaDeacraseByFrames = 5f;
    public float StaminaIncreaseByframe = 2.5f;
    public float StaminaValueToRunAvaibleInPercentage = 0.2f;

    private void Awake()
    {
        movementController = FindObjectOfType<PlayerMovement>();
        _staminaLimitForRunAvaible = StaminaValueToRunAvaibleInPercentage * maxStamina;
        _runSpeed = movementController.speedRunning;
    }

    // Start is called before the first frame update
    void Start()
    {
        staminaRect = new Rect(Screen.width / 20, Screen.height / 10, Screen.width / 3, Screen.height / 50);
    }

    // Update is called once per frame
    void FixedUpdate()
    {
        if (Input.GetKeyDown(KeyCode.LeftShift) && RunAvaible)
            _isRunning = true;
        if (Input.GetKeyUp(KeyCode.LeftShift))
            _isRunning = false;
        if (_isRunning)
        {
            stamina -= StaminaDeacraseByFrames * Time.deltaTime;
            if (stamina < 0)
            {
                stamina = 0;
                movementController.speedRunning = movementController.speed;
                RunAvaible = false;
            }
        }
        else if (stamina < maxStamina)
        {
            stamina += StaminaIncreaseByframe * Time.deltaTime;
        }

        if (!RunAvaible && stamina > _staminaLimitForRunAvaible)
        {
            movementController.speedRunning = _runSpeed;
            RunAvaible = true;
        }
    }

    void OnGUI()
    {
        float ratio = stamina / maxStamina;
        float rectWidth = ratio*Screen.width / 3;
        staminaRect.width = rectWidth;
        if (stamina < maxStamina)
            GUI.DrawTexture(staminaRect, Texture2D.whiteTexture);
    }
}
