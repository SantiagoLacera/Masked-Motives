using UnityEngine;
using TMPro;
using System.Collections;

public class PickupItemScript : MonoBehaviour
{
    public SelectedItem SelectedItem;
    
    public GameObject pickUpMessage;
    public TMP_Text textItem;

    [Header("Max Number Of Slots")]
    public int itemCount = 0;

    private void Start()
    {
        itemCount = SceneState.itemCount;
    }


    public void PickupItems(SelectedItem selectedItem)
    {
        if (selectedItem.ItemPicked !=99)
        {
            Destroy(selectedItem.CurrentItem);
            itemCount++;
            SceneState.itemCount = itemCount;
            ShowPickupMessage(selectedItem);
            return;
        }
    }

    public void ShowPickupMessage(SelectedItem selectedItem)
    {
        StartCoroutine(SetACtive());
        textItem.text = string.Format("You have collected an item {0} is now on your inventory", selectedItem.CurrentItem.name);
    }

    public IEnumerator SetACtive()
    {
        pickUpMessage.SetActive(true);
        yield return new WaitForSeconds(5);
        pickUpMessage.SetActive(false);
    }

}
