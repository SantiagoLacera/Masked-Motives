using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SemiSelectedItem : MonoBehaviour
{
    public GameObject CurrentItem;
    public GameObject[] Items;

    public int ItemPicked = 99;
    //SemiUsableItems
    private int PotionBlue = 0;
    private int PotionPurple = 1;
    private int PotionPink = 2;
    private int PotionRed = 3;
    private int Axe = 4;
    private int GemBlue = 5;
    private int GemGold = 6;
    private int GemRed = 7;
    private int GemLilac = 8;
    private int GemCluster = 9;
    private int PickAxe = 10;
    private int KeyGrey = 11;
    private int KeyBronze = 12;
    private int KeyGold = 13;
    private int KeySilver = 14;
    private int KeyMetal = 15;


    private void OnTriggerEnter2D(Collider2D collision)
    {

        if (collision.gameObject.CompareTag("PotionBlue"))
        {
            ItemPicked = PotionBlue;
            CurrentItem = Items[PotionBlue];
        }
        else if (collision.gameObject.CompareTag("PotionRed"))
        {
            ItemPicked = PotionRed;
            CurrentItem = Items[PotionRed];
        }
        else if (collision.gameObject.CompareTag("PotionPink"))
        {
            ItemPicked = PotionPink;
            CurrentItem = Items[PotionPink];
        }
        else if (collision.gameObject.CompareTag("PotionPurple"))
        {
            ItemPicked = PotionPurple;
            CurrentItem = Items[PotionPurple];
        }
        else if (collision.gameObject.CompareTag("Axe"))
        {
            ItemPicked = Axe;
            CurrentItem = Items[Axe];
        }
        else if (collision.gameObject.CompareTag("GemBlue"))
        {
            ItemPicked = GemBlue;
            CurrentItem = Items[GemBlue];
        }
        else if (collision.gameObject.CompareTag("GemGold"))
        {
            ItemPicked = GemGold;
            CurrentItem = Items[GemGold];
        }
        else if (collision.gameObject.CompareTag("GemRed"))
        {
            ItemPicked = GemRed;
            CurrentItem = Items[GemRed];
        }
        else if (collision.gameObject.CompareTag("GemLilac"))
        {
            ItemPicked = GemLilac;
            CurrentItem = Items[GemLilac];
        }
        else if (collision.gameObject.CompareTag("GemCluster"))
        {
            ItemPicked = GemCluster;
            CurrentItem = Items[GemCluster];
        }
        else if (collision.gameObject.CompareTag("PickAxe"))
        {
            ItemPicked = PickAxe;
            CurrentItem = Items[PickAxe];
        }
        else if (collision.gameObject.CompareTag("KeyGrey"))
        {
            ItemPicked = KeyGrey;
            CurrentItem = Items[KeyGrey];
        }
        else if (collision.gameObject.CompareTag("KeyBronze"))
        {
            ItemPicked = KeyBronze;
            CurrentItem = Items[KeyBronze];
        }
        else if (collision.gameObject.CompareTag("KeyGold"))
        {
            ItemPicked = KeyGold;
            CurrentItem = Items[KeyGold];
        }
        else if (collision.gameObject.CompareTag("KeySilver"))
        {
            ItemPicked = KeySilver;
            CurrentItem = Items[KeySilver];
        }
        else if (collision.gameObject.CompareTag("KeyMetal"))
        {
            ItemPicked = KeyMetal;
            CurrentItem = Items[KeyMetal];
        }

    }



}
