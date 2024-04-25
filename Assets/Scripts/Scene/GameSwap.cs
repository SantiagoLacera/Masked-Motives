using EasyTransition;
using UnityEngine;
using UnityEngine.SceneManagement;

public class GameSwap : MonoBehaviour
{

    public TransitionSettings transition;
    public float loadDelay = 1.5f;
    public GameObject gameDialog;


    public string gameScene = "";
    private string slide_Puzzle = "slide puzzle";
    private string wordle = "wordle";
    private string pong = "pong";
    private void OnTriggerEnter2D(Collider2D collision)
    {
        if (collision.gameObject.CompareTag("FirstGame"))
        {
            gameScene = slide_Puzzle;
            SceneState.gameSceneState = 1;
            SceneState.State = 1;
            gameDialog.SetActive(true);
        }
        else if (collision.gameObject.CompareTag("SecondGame"))
        {
            gameScene = wordle;
            SceneState.gameSceneState = 2;
            SceneState.State = 1;
            gameDialog.SetActive(true);
        }
        else if (collision.gameObject.CompareTag("ThirdGame"))
        {
            gameScene = pong;
            SceneState.gameSceneState = 3;
            SceneState.State = 1;
            gameDialog.SetActive(true);
        }
    }

    private void OnTriggerExit2D(Collider2D collision)
    {
        if(gameDialog != null)
        gameDialog.SetActive(false);
    }

    public void LoadGameScene()
    {
        TransitionManager.Instance().Transition(gameScene, transition, loadDelay);
    }
}
