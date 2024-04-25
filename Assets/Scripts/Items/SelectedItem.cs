using UnityEngine;

public class SelectedItem : MonoBehaviour
{
    public GameObject CurrentItem;
    public GameObject[] Items;
    public int ItemPicked = 99;
    


    //Usable Items
    private int Crystal = 0;
    private int Bone = 1;
    private int Sword = 2;
    private int Weapon = 3;
    

    private void OnTriggerEnter2D(Collider2D collision)
    {
        if (collision.gameObject.CompareTag("Crystal"))
        {
            CurrentItem = Items[Crystal];
            ItemPicked = Crystal;
            return;
        }
        else if (collision.gameObject.CompareTag("Skeleton"))
        {
            CurrentItem = Items[Bone];
            ItemPicked = Bone;
            return;
        }
        else if (collision.gameObject.CompareTag("Sword"))
        {
            CurrentItem = Items[Sword];
            ItemPicked = Sword;
            return;
        }

        else if (collision.gameObject.CompareTag("Weapon"))
        {
            CurrentItem = Items[Weapon];
            ItemPicked = Weapon;
            return;
        }
    }
}
