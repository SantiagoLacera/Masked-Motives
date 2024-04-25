using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class SceneSwapper : MonoBehaviour
{
    public void SwitchScene()
    {
        SceneState.State = 1;
        SceneManager.LoadScene("Dessert");
    }
}


