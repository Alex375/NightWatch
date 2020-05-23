using System;
using System.Collections;
using System.Collections.Generic;
using Photon.Pun;
using Photon.Realtime;
using UnityEngine;
using UnityEngine.UI;

public class GateScript : MonoBehaviourPun
{

   public float TimeToActivate = 15;
   public bool MissionActivated = false;
   public GameObject Panel;
   public Text TextPanel;
   public Slider SliderPanel;
   public GameObject MissionReference;

   private float time;
   

   private void OnTriggerEnter(Collider other)
   {
      if (other.tag == "Player")
      {
         NotificationShowing.instance.StopShowing();
         if (MissionActivated)
         {
            NotificationShowing.instance.Show("Press E to activate the gate");
            TextPanel.text = "Activating the gate ...";
         }
         else
            NotificationShowing.instance.Show("You need electricity !");
      }
   }

   private void OnTriggerExit(Collider other)
   {
      if (other.tag == "Player")
         NotificationShowing.instance.StopShowing();
   }

   private void OnTriggerStay(Collider other)
   {
      if (Input.GetKey(KeyCode.E) && MissionActivated)
      {
         SliderPanel.value = time / TimeToActivate;
         time += Time.deltaTime;
         Panel.SetActive(true);

         if (time >= TimeToActivate && MissionActivated)
         {
            NotificationShowing.instance.StopShowing();
            MissionReference.GetComponent<MissionManagerMultiplayer>().StartNextMission(false);
            photonView.RPC("OpenGate",RpcTarget.All);
         }
      }
      else
      {
         time = 0;
         SliderPanel.value = 0;
         Panel.SetActive(false);
      }
      
   }

   [PunRPC]
   private void OpenGate()
   {
      MissionActivated = false;
   }
}
