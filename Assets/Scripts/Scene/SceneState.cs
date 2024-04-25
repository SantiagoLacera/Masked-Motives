using System.Collections;
using System.Collections.Generic;
using System.Dynamic;
using UnityEngine;
//using static UnityEditor.Progress; cause of compiling error - not used in script

public class SceneState : MonoBehaviour

{

    //Character variables
    public static int State = 0;
    public static float movementChange = 1.5f;

    //Clock Variable 
    public static float timerState = 0.0f;

    //Inventory
    public static int itemCount = 0;
    public static int staticItemPicked;

    //MiniGames
    public static bool iceGameWon = false;
    public static bool wordGameWon = false;
    public static bool pongGameWon = false;
    public static int gamesWon = 0;

    //Scenes
    public static string currentScene = "";
    public static bool ItemSceneCheck = true;
    public static int gameSceneState = 0;

    //LoadScene
    public static bool LoadScene = false;

    private void Update()
    {
        //Debug.Log(State);
    }



    

}
