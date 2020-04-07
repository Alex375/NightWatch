using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Rendering;
using UnityEngine.UI;

public class NotificationShowing : MonoBehaviour
{
    #region Singleton

    public static NotificationShowing instance;

    private void Awake()
    {
        instance = this;
    }

    #endregion
    
    public GameObject NotificationPanel;
    public Text Text;
    
    public bool IsShowing { get; private set; }

    public void Show(string message)
    {
        Text.text = message;
        IsShowing = true;
        NotificationPanel.SetActive(true);
    }

    public void StopShowing()
    {
        NotificationPanel.SetActive(false);
        Text.text = "";
        IsShowing = false;
    }
}
