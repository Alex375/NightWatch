using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TutoScript : MonoBehaviour
{

    public GameObject CurrentMission;
    public GameObject NextMission;

    public GameObject ZButtton;
    public GameObject QButtton;
    public GameObject SButtton;
    public GameObject DButtton;

    public bool ZPressed;
    public bool QPressed;
    public bool SPressed;
    public bool DPressed;
    
    

    // Update is called once per frame
    void Update()
    {
        if (!ZPressed && Input.GetKeyDown(KeyCode.Z))
        {
            ZPressed = true;
            ZButtton.SetActive(false);
        }
        if (!QPressed && Input.GetKeyDown(KeyCode.Q))
        {
            QPressed = true;
            QButtton.SetActive(false);
        }
        if (!SPressed && Input.GetKeyDown(KeyCode.S))
        {
            SPressed = true;
            SButtton.SetActive(false);
        }
        if (!DPressed && Input.GetKeyDown(KeyCode.D))
        {
            DPressed = true;
            DButtton.SetActive(false);
        }

        if (ZPressed && QPressed && SPressed && DPressed)
        {
            CurrentMission.SetActive(false);
            NextMission.SetActive(true);
        }
    }
}
