using System.Collections;
using System.Collections.Generic;
using ExitGames.Client.Photon;
using Photon.Pun;
using Photon.Realtime;
using UnityEngine;

public class EventScriptTest : MonoBehaviourPun
{
    public SpriteRenderer spritetest;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if (photonView.IsMine && Input.GetKey(KeyCode.Space))
        {
            ChangeColor();
        }
        
        if (Input.GetKeyDown(KeyCode.Space))
        {
            PhotonNetwork.Instantiate("Capsule", new Vector3(0, 0, 2), new Quaternion(0,0,0,0));
        }

        
    }

    private void OnEnable()
    {
             PhotonNetwork.NetworkingClient.EventReceived += NetworkingClientOnEventReceived; 
    }
    
    private void OnDisable()
    {
        PhotonNetwork.NetworkingClient.EventReceived -= NetworkingClientOnEventReceived; 
    }

    private void NetworkingClientOnEventReceived(EventData obj)
    {
        if (obj.Code == 0)
        {
            object[] datas = (object[]) obj.CustomData;
            float r = (float) datas[0];
            float g = (float) datas[1];
            float b = (float) datas[2];
            spritetest.color = new Color(r, g, b, 1f);
        }
    }
    
    private void ChangeColor()
    {
        float r = Random.Range(0f, 1f);
        float g = Random.Range(0f, 1f);
        float b = Random.Range(0f, 1f);
        spritetest.color = new Color(r,g,b,1f);
        
        object[] datas = new object[] {r, g, b};
        PhotonNetwork.RaiseEvent(0, datas, RaiseEventOptions.Default, SendOptions.SendUnreliable);
    }
}
