using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AntenaMission : MonoBehaviour
{
    public enum State
    {
        disabled,
        usabled,
        repaired
    };

    public State state;
    public ProgressBarCanvasScript bar;
    private bool isReaparing = false;
    public EnemyController enemy;


    private void Start()
    {
        bar.message = "Raplacing antena...";
        bar.completion = () =>
        {
            isReaparing = false;
            bar.progressShowing = false;
            state = State.repaired;
        };
    }

    // Update is called once per frame
    void Update()
    {
        if (isReaparing)
            bar.progressValue += 0.1f * Time.deltaTime;
        String message = "";
        switch (state)
        {
            case State.disabled:
                message = "You can't replace the antena now";
                break;
            case State.usabled:
                message = "E to replace the antena";
                if (Input.GetKeyDown(KeyCode.E))
                {
                    isReaparing = true;
                    bar.progressShowing = true;
                    enemy.AbleToTrack = false;
                }

                if (Input.GetKeyUp(KeyCode.E))
                {
                    isReaparing = false;
                    bar.progressValue = 0f;
                    bar.progressShowing = false;
                }
                break;
            case State.repaired:
                message = "Antena repaired";
                break;
        }
        NotificationShowing.instance.Show(message);
    }
    
    
    private void OnTriggerEnter(Collider other)
    {
        if (!other.CompareTag("Player"))
            return;
        enabled = true;
        String message = "";
        switch (state)
        {
            case State.disabled:
                message = "You can't replace the antena now";
                break;
            case State.usabled:
                message = "E to replace the antena";
                break;
            case State.repaired:
                message = "Antena repaired";
                break;
        }
        NotificationShowing.instance.Show(message);
    }

    private void OnTriggerExit(Collider other)
    {
        if (!other.CompareTag("Player"))
            return;
        enabled = false;
        NotificationShowing.instance.StopShowing();
    }
}
