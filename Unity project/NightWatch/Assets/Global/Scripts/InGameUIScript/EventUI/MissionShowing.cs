using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class MissionShowing : MonoBehaviour
{
    
    #region Singleton

    public static MissionShowing instance;
    public GameObject MissionPanel;
    public Text text;
    private void Awake()
    {
        instance = this;
    }

    #endregion
    
    

    public bool IsShowing { get; private set; }
    
    public void Show(string message)
    {
        text.text = message;
        IsShowing = true;
        MissionPanel.SetActive(true);
    }

    public void StopShowing()
    {
        MissionPanel.SetActive(false);
        text.text = "";
        IsShowing = false;
    }
}
