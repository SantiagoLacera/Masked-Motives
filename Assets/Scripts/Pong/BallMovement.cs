using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
using EasyTransition;

public class BallMovement : MonoBehaviour
{

    public TransitionSettings transition;
    public float loadDelay = 1.5f;
    [SerializeField] private float initialSpeed = 10;
    [SerializeField] private float speedIncrease = 0.25f;
    [SerializeField] private Text playerScore;
    [SerializeField] private Text AIScore;

    private int hitCounter;
    private Rigidbody2D rb;

    public Button finishButton;
    public Button giveUpButton;
    public Button restartButton;

    // Start is called before the first frame update
    void Start()
    {
        rb = GetComponent<Rigidbody2D>();
        Invoke("StartBall", 2f);
    }

    private void FixedUpdate()
    {
        rb.velocity = Vector2.ClampMagnitude(rb.velocity, initialSpeed + (speedIncrease * hitCounter));
    }

    private void StartBall()
    {
        rb.velocity = new Vector2(-1, 0) * (initialSpeed + (speedIncrease * hitCounter));
    }

    private void BallReset()
    {
        rb.velocity = new Vector2(0, 0);
        transform.position = new Vector2(0, 0);
        hitCounter = 0;
        Invoke("StartBall", 2f);
    }

    private void PlayerBounce(Transform myObject)
    {
        hitCounter++;

        Vector2 ballPosition = transform.position;
        Vector2 playerPosition = myObject.position;

        float xDirection, yDirection;

        if (transform.position.x > 0) {
            xDirection = -1;
        }
        else {
            xDirection = 1;
        }

        yDirection = (ballPosition.y - playerPosition.y) / myObject.GetComponent<Collider2D>().bounds.size.y;
        if (yDirection == 0) {
            yDirection = 0.25f;
        }

        rb.velocity = new Vector2(xDirection, yDirection) * (initialSpeed + (speedIncrease * hitCounter));
    }

    private void OnCollisionEnter2D(Collision2D collision)
    {
        if (collision.gameObject.name == "Player" || collision.gameObject.name == "AI Paddle") {
            PlayerBounce(collision.transform);
        }
    }

    private void OnTriggerEnter2D(Collider2D collision)
    {
        if(transform.position.x > 0) {
            playerScore.text = (int.Parse(playerScore.text) + 1).ToString();

            if(int.Parse(playerScore.text) == 3) {
                enabled = false;
                finishButton.gameObject.SetActive(true);
                giveUpButton.gameObject.SetActive(false);
            }
            else {
                BallReset();
            }
        }
        else if (transform.position.x < 0) {
            AIScore.text = (int.Parse(AIScore.text) + 1).ToString();

            if(int.Parse(AIScore.text) == 3) {
                // Disable script, enable restart button
                enabled = false;
                restartButton.gameObject.SetActive(true);
            }
            else {
                BallReset();
            }
        }   
    }

    public void FinishGame()
    {
        // Give credit
        if (SceneState.pongGameWon == false) {
            SceneState.pongGameWon = true;
            SceneState.gamesWon++;
        }
        SceneState.State = 1;
        SceneManager.LoadScene("Plains");
    }

    public void QuitGame()
    {
        SceneState.State = 1;
        SceneManager.LoadScene("Plains");
    }

    public void RestartGame()
    {
        playerScore.text = "0";
        AIScore.text = "0";

        enabled = true;

        BallReset();
    }

    private void OnEnable()
    {
        restartButton.gameObject.SetActive(false);
        finishButton.gameObject.SetActive(false);
    }
}
