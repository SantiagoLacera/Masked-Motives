using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MixSelectItems : MonoBehaviour
{

    public int ItemPicked = 99;
    //MixUsableItems
    private int Sarcophagus = 0;
    private int Tree = 1;
    private int WoodenChest = 2;


    private void OnTriggerEnter2D(Collider2D collision)
    {
        if (collision.gameObject.CompareTag("Sarcophagus"))
        {
            ItemPicked = Sarcophagus;
        }
        else if (collision.gameObject.CompareTag("Tree"))
        {
            ItemPicked = Tree;
        }
        else if (collision.gameObject.CompareTag("WoodenChest"))
        {
            ItemPicked = WoodenChest;
        }

    }
    /*
    public void ShowUseMessage()
    {
        StartCoroutine(SetACtive());
        textItem.text = string.Format("An Item has Dropped somewhere on the map");
    }
    */
}
