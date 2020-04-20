using System.Collections;
using System.Collections.Generic;
using Photon.Pun;
using UnityEditor;
using UnityEngine;
using UnityEngine.UI;

public class BatteryIconScrpit : MonoBehaviourPun
{
    private int[] _batteryLimit = new int[] {-10, 0, 37, 67, 90, 110};
    public Image image;
    public Sprite l0;
    public Sprite l25;
    public Sprite l50;
    public Sprite l75;
    public Sprite l100;
    private Sprite[] _sprites;

    private int currentI;
    // Start is called before the first frame update
    void Start()
    {
        object survivor = PhotonNetwork.LocalPlayer.CustomProperties["Survivor"];
        
        if (survivor == null)
        {
            gameObject.SetActive(false);
        }
        else if (!(bool) survivor)
        {
            gameObject.SetActive(false);
        }
        
        currentI = 5;
        _sprites = new Sprite[]{l0, l25, l50, l75, l100};
    }

    // Update is called once per frame
    void Update()
    {
        if (PlayerManagerLo.instance.CurrentBatteryLevel < _batteryLimit[currentI])
        {
            currentI--;
            image.sprite = _sprites[currentI];
        }
        else if (PlayerManagerLo.instance.CurrentBatteryLevel > _batteryLimit[currentI + 1])
        {
            currentI++;
            image.sprite = _sprites[currentI];
        }
    }
}
