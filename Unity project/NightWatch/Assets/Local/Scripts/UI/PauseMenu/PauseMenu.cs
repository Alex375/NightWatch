using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class PauseMenu : MonoBehaviour
{
    public GameObject PausePanel;
    private bool paused = false;
    public void Resume()
    {
        PausePanel.SetActive(false);
        Cursor.lockState = CursorLockMode.Locked;
        paused = false;
        Time.timeScale = 1;
    }

    public void RestartMission()
    {
        
    }

    public void BackToMenu()
    {
        SceneManager.LoadScene("Main Menu");
    }

    public void Quit()
    {
        Application.Quit();
    }

    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.Escape))
        {
            if (!paused)
            {
                paused = true;
                Time.timeScale = 0;
                PausePanel.SetActive(true);
                Cursor.lockState = CursorLockMode.None;
            }
            else
            {
                Resume();
            }
        }
    }
}
