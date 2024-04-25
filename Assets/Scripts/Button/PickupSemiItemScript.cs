using TMPro;
using System.Collections;
using UnityEngine;

public class PickupSemiItemScript : MonoBehaviour
{
    public SemiSelectedItem semiSelectedItem;

    public GameObject pickUpMessage;
    public TMP_Text textItem;

    public GameObject MixItem;

    Collider2D m_collider2D;


    public void PickupItems(SemiSelectedItem semiSelectedItem)
    {
        if (semiSelectedItem.ItemPicked >= 0 && semiSelectedItem.ItemPicked < 4)
        {
            Destroy(semiSelectedItem.CurrentItem);
            ShowPickupPotionMessage(semiSelectedItem);
            StatChange(semiSelectedItem);
        }
        else if(semiSelectedItem.ItemPicked == 4)
        {
            Destroy(semiSelectedItem.CurrentItem);
            ShowPickupAxeMessage(semiSelectedItem);
            CheckMixItem(semiSelectedItem);
        }
        else if (semiSelectedItem.ItemPicked >= 5 && semiSelectedItem.ItemPicked < 10)
        {
            Destroy(semiSelectedItem.CurrentItem);
            ShowPickupGemMessage(semiSelectedItem);
            StatChange(semiSelectedItem);
        }
        else if (semiSelectedItem.ItemPicked == 10)
        {
            Destroy(semiSelectedItem.CurrentItem);
            ShowPickupPickAxeMessage(semiSelectedItem);
            CheckMixItem(semiSelectedItem);
        }
        else if (semiSelectedItem.ItemPicked >= 11 && semiSelectedItem.ItemPicked < 16)
        {
            Destroy(semiSelectedItem.CurrentItem);
            ShowPickupKeyMessage(semiSelectedItem);
            CheckMixItem(semiSelectedItem);
        }
    }

    //Function shows each dialog after the items has been picked 
    public void ShowPickupPotionMessage(SemiSelectedItem semiSelectedItem)
    {
        StartCoroutine(SetACtive());
        textItem.text = string.Format("Your speed has changed, the {0} has changed you", semiSelectedItem.CurrentItem.name);
    }
    public void ShowPickupAxeMessage(SemiSelectedItem semiSelectedItem)
    {
        StartCoroutine(SetACtive());
        textItem.text = string.Format("You can now use the {0}", semiSelectedItem.CurrentItem.name);
    }
    public void ShowPickupGemMessage(SemiSelectedItem semiSelectedItem)
    {
        StartCoroutine(SetACtive());
        textItem.text = string.Format("Time has been changed, the {0} created a rupture in time", semiSelectedItem.CurrentItem.name);
    }
    public void ShowPickupPickAxeMessage(SemiSelectedItem semiSelectedItem)
    {
        StartCoroutine(SetACtive());
        textItem.text = string.Format("You can now use the {0}", semiSelectedItem.CurrentItem.name);
    }
    public void ShowPickupKeyMessage(SemiSelectedItem semiSelectedItem)
    {
        StartCoroutine(SetACtive());
        textItem.text = string.Format("You can now use the {0}", semiSelectedItem.CurrentItem.name);
    }


    //Changes the Players stats

    public void StatChange(SemiSelectedItem semiSelectedItem)
    {
        if(semiSelectedItem.CurrentItem.name == "PotionRed" || semiSelectedItem.CurrentItem.name == "PotionBlue")
        {
            SceneState.movementChange = 2.0f;
        }
        else if (semiSelectedItem.CurrentItem.name == "PotionPurple" || semiSelectedItem.CurrentItem.name == "PotionPink")
        {
            SceneState.movementChange = 1.0f;
        }

        else if (semiSelectedItem.CurrentItem.name == "GemBlue" || semiSelectedItem.CurrentItem.name == "GemRed")
        {
            SceneState.timerState -= 50.0f;
        }
        else if (semiSelectedItem.CurrentItem.name == "GemGold" || semiSelectedItem.CurrentItem.name == "GemCluster")
        {
            SceneState.timerState -= 50.0f;
        }
        else if (semiSelectedItem.CurrentItem.name == "GemLilac")
        {
            SceneState.timerState -= 50.0f;
        }
    }
    


    //Checks if the items is the working one

    public void CheckMixItem(SemiSelectedItem semiSelectedItem)
    {
       
       if( semiSelectedItem.CurrentItem.name == "Pickaxes" || semiSelectedItem.CurrentItem.name == "Axes" || semiSelectedItem.CurrentItem.name == "KeyBronze")
        {
            MixItem = GameObject.FindGameObjectWithTag("MixUsable");

            MixItem.AddComponent<BoxCollider2D>();

            m_collider2D = MixItem.GetComponent<Collider2D>();

            m_collider2D.isTrigger = true;
        }
        return;
    }
  


    public IEnumerator SetACtive()
    {
        pickUpMessage.SetActive(true);
        yield return new WaitForSeconds(5);
        pickUpMessage.SetActive(false);
    }
}

