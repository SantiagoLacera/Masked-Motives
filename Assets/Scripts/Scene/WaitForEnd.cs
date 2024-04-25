using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class WaitForEnd : MonoBehaviour
{
    // GoodEnding plays out then returns to main menu
    void Start()
    {
        float delay = 35f;
        Invoke("ActionDelayed", delay);
    }
    void ActionDelayed()
    { 
        SceneManager.LoadScene("MainMenu");
    }
}