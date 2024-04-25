using TMPro;
using UnityEngine;

public class UseMixItem : MonoBehaviour
{
    public MixSelectItems mixSelectItems;

    public GameObject pickUpMessage;
    public TMP_Text textItem;

    public GameObject CloseSarcophagus;
    public GameObject OpenSarcophagus;
    public GameObject Weapon;
    public GameObject Tree;

    public void MixItemPickup(MixSelectItems mixSelectItems)
    {
        if(mixSelectItems.ItemPicked == 0)
        {
            Destroy(CloseSarcophagus);
            OpenSarcophagus.SetActive(true);
        }
        else if (mixSelectItems.ItemPicked == 1)
        {
            Destroy(Tree);
        }
        else if (mixSelectItems.ItemPicked == 2)
        {
            Weapon.SetActive(true);
        }
    }


}
