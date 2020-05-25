using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class NewStamina : MonoBehaviour
{
    public Slider Bar;
    public GameObject BarPanel;

    private float stamina = 100;

    private float maxStamina = 100;

    public PlayerMovement Movement;
    private float _runSpeed;
    private float _walkSpeed;
    private bool runAvaible = true;
    private bool isRuning = false;
    
    // Serialized fields
    public float StaminaDeacraseByFrames = 5f;
    public float StaminaIncreaseByframe = 2.5f;
    public float StaminaValueToRunAvaibleInPercentage = 0.2f;
    private float _staminaLimitForRunAvaible;

    private void Awake()
    {
        _runSpeed = Movement.speedRunning;
        _walkSpeed = Movement.speed;
        _staminaLimitForRunAvaible = StaminaValueToRunAvaibleInPercentage * maxStamina;
    }

    // Update is called once per frame
    void Update()
    {
        Bar.value = stamina / maxStamina;
        BarPanel.SetActive(stamina < maxStamina);
        if (Input.GetKeyDown(KeyCode.LeftShift) && runAvaible)
        {
            isRuning = true;
        }

        if (Input.GetKeyUp(KeyCode.LeftShift))
        {
            isRuning = false;
        }

        if (isRuning)
        {
            stamina -= StaminaDeacraseByFrames * Time.deltaTime;
            if (stamina <= 0)
            {
                stamina = 0;
                Movement.speedRunning = _walkSpeed;
                runAvaible = false;
            }
        }
        else if (stamina < maxStamina)
        {
            stamina += StaminaIncreaseByframe * Time.deltaTime;
        }

        if (!runAvaible && stamina > _staminaLimitForRunAvaible)
        {
            Movement.speedRunning = _runSpeed;
            runAvaible = true;
        }
        
    }
}
