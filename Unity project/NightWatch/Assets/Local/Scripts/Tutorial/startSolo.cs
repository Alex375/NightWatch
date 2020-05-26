using System.Collections;
using System.Collections.Generic;
using Photon.Pun;
using Photon.Realtime;
using UnityEngine;
using UnityEngine.SceneManagement;

public class startSolo : MonoBehaviourPunCallbacks
{
    // Start is called before the first frame update
    public override void OnEnable()
    {
        base.OnEnable();
        PhotonNetwork.Disconnect();
    }

    public override void OnDisconnected(DisconnectCause cause)
    {
        base.OnDisconnected(cause);
        if (cause == DisconnectCause.DisconnectByClientLogic)
        {
            SceneManager.LoadScene("Global/Resources/Scenes/NewSolo/NewSolo");
        }
    }
    // Update is called once per frame
    
}
