using EasyTransition;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DemoLoadScene : MonoBehaviour
{
    public TransitionSettings transition;
    public float loadDelay;


    private void Start()
    {
        SceneState.currentScene = SceneSwaper.sceneName;
    }


    public void LoadScene(string _sceneName)
    {
        _sceneName = SceneSwaper.sceneName;
        TransitionManager.Instance().Transition(_sceneName, transition, loadDelay);
    }

    public void LoadDinningScene()
    {
        TransitionManager.Instance().Transition("Main Dinning", transition, loadDelay);
    }


}
