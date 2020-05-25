using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class LastTextScript : MonoBehaviour
{
    public Animation anim;
    // Update is called once per frame
    void Update()
    {
        if (!anim.isPlaying)
        {
            SceneManager.LoadScene("Main Menu");
        }
    }
}
