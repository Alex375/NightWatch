using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class DeadMenu : MonoBehaviour
{
    private void OnEnable()
    {
        Time.timeScale = 0;
    }

    private void OnDisable()
    {
        Time.timeScale = 1;
    }


    public void BackToMenu()
    {
        SceneManager.LoadScene("Main Menu");
    }


    public void Restart()
    {
        SceneManager.LoadScene("NewSolo");
    }
    
}
