using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.InputSystem;
using UnityEngine.SceneManagement;

public class PauseMenu : MonoBehaviour
{

    public static bool isPaused = false;
    public GameObject PauseScreen;

    // Update is called once per frame
    void Update()
    {
        if(Keyboard.current.escapeKey.wasPressedThisFrame)
        {
            Debug.Log("Escape pressed");
            if (isPaused)
            {
                Debug.Log("ispaused");
                ResumeGame();
                Debug.Log("after ResumeGame");
            }

            else
            {
                Debug.Log("isplaying");
                PauseGame();
                Debug.Log("after pause game");
            }
        }
    }

    public void ResumeGame()
    {
        Debug.Log("inside resume");
        PauseScreen.SetActive(false);
        Time.timeScale = 1f;
        isPaused = false;
    }

    void PauseGame()
    {
        Debug.Log("inside pause");
        PauseScreen.SetActive(true);
        Time.timeScale = 0f;
        isPaused = true;
    }

    public void LoadMainMenu()
    {
        Debug.Log("Load game");
        Time.timeScale = 1f;
        SceneManager.LoadScene("MainMenu");
    }

    public void Save() // new function
    {
        Debug.Log("inside save in paused menu before saving");
        if (DataSystemManager.instance != null)
        {
            Debug.Log("Saved game in progress");
            DataSystemManager.instance.SaveGame();
            Debug.Log("save game complete!");
        }
        else
        {
            Debug.Log("DataSystemManager instance is null");
        }
    }

    public void Quit()
    {
        Debug.Log("Quit");
        Application.Quit();
    }

}
