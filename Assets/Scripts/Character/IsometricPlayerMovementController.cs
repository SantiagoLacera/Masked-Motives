using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class IsometricPlayerMovementController : MonoBehaviour, IDataSystem
{

    public float movementSpeed = 1.5f;
    IsometricCharacterRenderer isoRenderer;

    public int gameState = 0;
    public int currentScene;

    Rigidbody2D rbody;

    void Start()
    {
        
        gameState = SceneState.State;
        if (gameState == 0)
        {
            rbody.transform.position = new Vector3(-4.11f, -4.57f);
        }
        else if(gameState == 1)
        {
            rbody.transform.position = new Vector3(-2.11f, -0.75f);
        }
        else  if(gameState == 2)
        {
            rbody.transform.position = new Vector3 (5.00f, 0.60f);
        }

    }

    private void Update()
    {
        if (movementSpeed != SceneState.movementChange)
        {
            movementSpeed = SceneState.movementChange;
        }
    }

    private void Awake()
    {
        rbody = GetComponent<Rigidbody2D>();
        isoRenderer = GetComponentInChildren<IsometricCharacterRenderer>();
    }

    public void LoadData(GameData data) // new
    {
        this.transform.position = data.playerPosition;
    }

    public void SaveData(ref GameData data) // new
    {
        data.playerPosition = this.transform.position;
    }

    // Update is called once per frame
    void FixedUpdate()
    {
        // Freezes character if dialogue is active
        if (DialogueManager.GetInstance().dialogueIsPlaying) //
        {
            return;
        }
        
        Vector2 currentPos = rbody.position;
        float horizontalInput = Input.GetAxis("Horizontal");
        float verticalInput = Input.GetAxis("Vertical");
        Vector2 inputVector = new Vector2(horizontalInput, verticalInput);
        inputVector = Vector2.ClampMagnitude(inputVector, 1);
        Vector2 movement = inputVector * movementSpeed;
        Vector2 newPos = currentPos + movement * Time.fixedDeltaTime;
        isoRenderer.SetDirection(movement);
        rbody.MovePosition(newPos);
    }
}
