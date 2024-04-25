using EasyTransition;
using System.Collections;
using TMPro;
using UnityEngine;
using UnityEngine.SceneManagement;

public class SceneSwaper : MonoBehaviour
{
    //Scene Names
    private string Menu = "MainMenu";
    private string Dinner = "Main Dining";
    private string FrozenMountain = "Frozen Mountains";
    private string Desert = "Dessert";
    private string Plains = "Plains";

    public static string sceneName = "None";

    public GameObject DoorMessage;
    public TMP_Text DoorName;

    private void OnTriggerEnter2D(Collider2D collision)
    {

        if (collision.gameObject.CompareTag("Entry"))
        {
            SceneState.State = 0;
            sceneName = FrozenMountain;
            DoorMessage.gameObject.SetActive(true);
            DoorName.text = ("Would you like to enter to ") + sceneName + (" Room?");
        }
        else if (collision.gameObject.CompareTag("FrozenMountains"))
        {
            SceneState.State = 0;
            sceneName = FrozenMountain;
            DoorMessage.gameObject.SetActive(true);
            DoorName.text = ("Would you like to enter to ") + sceneName + (" Room?");

        }
        else if (collision.gameObject.CompareTag("Desert"))
        {
            SceneState.State = 0;
            sceneName = Desert;
            DoorMessage.gameObject.SetActive(true);
            DoorName.text = ("Would you like to enter to ") + sceneName + (" Room?");
        }
        else if (collision.gameObject.CompareTag("Plains"))
        {
            SceneState.State = 0;
            sceneName = Plains;
            DoorMessage.gameObject.SetActive(true);
            DoorName.text = ("Would you like to enter to ") + sceneName + (" Room?");

        }

        else if (collision.gameObject.CompareTag("Dinner"))
        {
            SceneState.State = 2;
            sceneName = Dinner;
            DoorMessage.gameObject.SetActive(true);
            DoorName.text = ("Would you like to enter to ") + sceneName + (" Room?");

        }

        else if (collision.gameObject.CompareTag("Exit"))
        {
            SceneState.State = 2;
            sceneName = Menu;
            DoorMessage.gameObject.SetActive(true);
            DoorName.text = ("Would you like to enter to ") + sceneName + (" Room?");
        }

    }
    private void OnTriggerExit2D(Collider2D collision)
    {
        if(DoorMessage != null)
        DoorMessage.gameObject.SetActive(false);
    }

}
