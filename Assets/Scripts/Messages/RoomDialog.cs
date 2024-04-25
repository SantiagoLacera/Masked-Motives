using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RoomDialog : MonoBehaviour
{

    public GameObject DoorMessage;


    private void OnTriggerEnter2D(Collider2D collision)
    {
        if (collision.gameObject.CompareTag("Desert"))
        {
            DoorMessage.gameObject.SetActive(true);
        }
        else if (collision.gameObject.CompareTag("FrozenMountain"))
        {
            DoorMessage.gameObject.SetActive(true);
        }
        else if (collision.gameObject.CompareTag("Plain"))
        {
            DoorMessage.gameObject.SetActive(true);
        }
    }
    
}
