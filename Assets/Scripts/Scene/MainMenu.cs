using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using System.IO;

public class MainMenu : MonoBehaviour
{
    public void PlayGame()
    {
        if (DataSystemManager.instance != null)
        {
            DataSystemManager.instance.NewGame(); // new
        }
        else
        {
            Debug.Log("datasystem manager null");
        }
        //SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex + 1);
    }


    public void QuitGame()
    {
        Debug.Log("QUIT IN ACTION");
        Application.Quit();
    }


    // added usage for load game - being worked on
    public void LoadGame()
    {
        Debug.Log("load game clicked");
        if (DataSystemManager.instance != null)
        {
            Debug.Log("load game...");
            DataSystemManager.instance.LoadGame(); // new
            Debug.Log("loaded game successful");
        }
        else
        {
            Debug.Log("instance is null");
        }
    }
}
