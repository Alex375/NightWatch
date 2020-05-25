using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HandLettreController : MonoBehaviour
{
    public bool isUsable = false;
    public GameObject LetterCanvas;
    private bool readingLetter = false;
    public AudioSource paperNoise;
    public Action completion;
    public GameObject LetterObject;

    // Update is called once per frame
    void Update()
    {
        if (!isUsable)
            return;
        if (Input.GetKeyDown(KeyCode.E))
        {
            paperNoise.Play();
            readingLetter ^= true;
            LetterCanvas.SetActive(readingLetter);
            LetterObject.SetActive(!readingLetter);
            NotificationShowing.instance.Show(readingLetter ? "E to put back the letter":"E to read the letter");
            if (!readingLetter)
                completion?.Invoke();
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if (!other.CompareTag("Player"))
            return;
        if (isUsable)
        {
            enabled = true;
            NotificationShowing.instance.Show("E to read the letter");
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (!other.CompareTag("Player"))
            return;
        enabled = false;
        if (isUsable)
        {
            NotificationShowing.instance.StopShowing();
            if (readingLetter)
            {
                readingLetter = false;
                LetterCanvas.SetActive(false);
                paperNoise.Play();
                completion?.Invoke();
            }
        }
    }
}
