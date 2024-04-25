using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameManager : MonoBehaviour
{
    public Ball ball;
    public Ball ballPrefab;

    public Pad paddle;

    public static Boolean startGame;
    public static Boolean gameStarted;

    // Start is called before the first frame update
    void Start()
    {
        InitializeBall();
    }

    // Update is called once per frame
    void Update()
    {
        Vector3 padPosition = paddle.gameObject.transform.position;
        Vector3 ballPosition = new Vector3(padPosition.x, padPosition.y + 0.5f, 0);

        if(Input.GetKeyDown(KeyCode.W) || Input.GetKeyDown(KeyCode.UpArrow) || Input.GetKeyDown(KeyCode.Space)) {
            startGame = true;
        }

        if(!startGame) {
            ball.transform.position = ballPosition;
        }
    }

    void InitializeBall()
    {
        Vector3 padPosition = paddle.gameObject.transform.position;
        Vector3 ballPosition = new Vector3(padPosition.x, padPosition.y + 0.5f, 0);

        ball = Instantiate(ballPrefab, ballPosition, Quaternion.identity);
    }
}
