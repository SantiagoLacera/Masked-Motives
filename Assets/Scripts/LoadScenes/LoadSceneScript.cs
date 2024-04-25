using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LoadSceneScript : MonoBehaviour
{

    public bool LoadSceneCheck = false;
    // Start is called before the first frame update
    void Start()
    {
        LoadSceneCheck = SceneState.LoadScene;
    }

    // Update is called once per frame
    void Update()
    {
        if (!LoadSceneCheck)
        {

        }
        
    }
}
