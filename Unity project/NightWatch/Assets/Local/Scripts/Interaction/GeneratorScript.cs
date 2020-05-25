using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GeneratorScript : MonoBehaviour
{
    public enum GeneratorState
    {
        NotUsable,
        Usable,
        Repaired
    }

    public GeneratorState State;
    public Light light;
    public ProgressBarCanvasScript ProgressBar;
    private bool isReparing = false;
    
    // Start is called before the first frame update
    void Start()
    {
        ProgressBar.completion = () =>
        {
            isReparing = false;
            ProgressBar.progressShowing = false;
            State = GeneratorState.Repaired;
        };
        ProgressBar.message = "Reapairing generator...";
    }

    // Update is called once per frame
    void Update()
    {
        if (isReparing)
            ProgressBar.progressValue += 0.1f * Time.deltaTime;
        String message = "";
        switch (State)
        {
            case GeneratorState.NotUsable:
                message = "You can't reapaire the generator now";
                break;
            case GeneratorState.Usable:
                message = "E to repair the generator";
                if (Input.GetKeyDown(KeyCode.E))
                {
                    isReparing = true;
                    ProgressBar.progressShowing = true;
                }

                if (Input.GetKeyUp(KeyCode.E))
                {
                    isReparing = false;
                    ProgressBar.progressValue = 0f;
                    ProgressBar.progressShowing = false;
                }
                break;
            case GeneratorState.Repaired:
                message = "Generator already repaired";
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
        switch (State)
        {
            case GeneratorState.NotUsable:
                message = "You can't reapaire the generator now";
                break;
            case GeneratorState.Usable:
                message = "E to repair the generator";
                break;
            case GeneratorState.Repaired:
                message = "Generator already repaired";
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
