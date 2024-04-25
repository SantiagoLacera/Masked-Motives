using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ItemCollision : MonoBehaviour
{

    [SerializeField] public GameObject itemMessage;
    [SerializeField] public GameObject nonItemMessage;
    [SerializeField] public GameObject semiItemMessage;
    [SerializeField] public GameObject MixItemMessage;

    public string TypedPicked = "Default";

    private void OnTriggerEnter2D(Collider2D collision)
    {
        if (collision.gameObject.CompareTag("Item"))
        {
            itemMessage.gameObject.SetActive(true);
            TypedPicked = "Items";
        }
        else if (collision.gameObject.CompareTag("NonItem"))
        {
            nonItemMessage.gameObject.SetActive(true);
            TypedPicked = "NonItem";
        }
        else if (collision.gameObject.CompareTag("SemiItem"))
        {
            semiItemMessage.gameObject.SetActive(true);
            TypedPicked = "SemiItem";
        }
        else if (collision.gameObject.CompareTag("MixUsable"))
        {
            MixItemMessage.gameObject.SetActive(true);
            TypedPicked = "MixUsable";
        }
    }

    private void OnTriggerExit2D(Collider2D collision)
    {
        if (itemMessage.gameObject)
        {
            TypedPicked = "";
            itemMessage.gameObject.SetActive(false);
            nonItemMessage.gameObject.SetActive(false);
            semiItemMessage.gameObject.SetActive(false);
            MixItemMessage.gameObject.SetActive(false);
        }
        
        
    }
}
