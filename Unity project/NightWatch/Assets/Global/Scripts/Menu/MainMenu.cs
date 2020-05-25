using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;


public class MainMenu : MonoBehaviour
{
    public void PlaySolo()
    {
        //SceneManager.LoadScene("solo");
    }

    public void PlayMulti()
    {
        //SceneManager.LoadScene("multi");
    }

    public void QuitGame()
    {
        print("Game quit");
        Application.Quit();
    }

    public void Test(string test)
    {
        print(test);
    }
}