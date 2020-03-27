using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;


public class fadeStartSolo : MonoBehaviour
{
    public RawImage image;
    public Text text;

    // Start is called before the first frame update
    void Start()
    {
        text.canvasRenderer.SetAlpha(0f);
        text.CrossFadeAlpha(1,40,false);
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
