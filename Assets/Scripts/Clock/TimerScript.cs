using UnityEngine;
using TMPro;
using static System.TimeZoneInfo;
using UnityEngine.UIElements;
using UnityEngine.SceneManagement;

public class TimerScript : MonoBehaviour
{

    public TMP_Text textTimer;

    public float timer = 420.0f;

    public bool TimeAM = true;
    public bool TimePM = false;


    void Start()
    {
        timer = SceneState.timerState;
    }

    // Start is called before the first frame update
    void Update()
    {
        if (TimeAM)
        {
            timer += Time.deltaTime;
            DisplayTimeAM();
            CheckTime();
            SceneState.timerState = timer;
        }
        else if(TimePM)
        {
            timer += Time.deltaTime;
            DisplayTimePM();
            SceneState.timerState = timer;
        }
        else if(TimePM && timer == 300.0f)
        {
            CheckForCutScenes();
        }
    }

    public void CheckTime()
    {
        
        if (timer >= 720.0f)
        {
           timer = 0.0f;
           TimeAM = false;
           TimePM = true;
        }
    }
    public void CheckForCutScenes()
    {
        if(SceneState.gamesWon < 1 && SceneState.itemCount < 2)
        {
            SceneManager.LoadScene("CutsceneL");
        }
        else if(SceneState.gamesWon > 2 && SceneState.itemCount > 3)
        {
            SceneManager.LoadScene("CutsceneW");
        }
    }

    // Update is called once per frame
    void DisplayTimeAM()
    {
        int minutes = Mathf.FloorToInt(timer / 60.0f);
        int seconds = Mathf.FloorToInt(timer - minutes * 60);
        textTimer.text = string.Format("{0:00}:{1:00}pM", minutes, seconds);
    }
    void DisplayTimePM()
    {
        int minutes = Mathf.FloorToInt(timer / 60.0f);
        int seconds = Mathf.FloorToInt(timer - minutes * 60);
        textTimer.text = string.Format("{0:00}:{1:00}aM", minutes, seconds);
    }


}
