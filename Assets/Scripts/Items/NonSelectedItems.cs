using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NonSelectedItems : MonoBehaviour
{
    public int ItemPicked = 99;
    //NonUsableItems
    private int Barrel = 0;
    private int Jar = 1;
    private int MainRock = 2;
    private void OnTriggerEnter2D(Collider2D collision)
    {
        if (collision.gameObject.CompareTag("Barrel"))
        {
            ItemPicked = Barrel;
        }
        else if (collision.gameObject.CompareTag("Jar"))
        {
            ItemPicked = Jar;
        }
        else if (collision.gameObject.CompareTag("MainRock"))
        {
            ItemPicked = MainRock;
        }


    }
}
