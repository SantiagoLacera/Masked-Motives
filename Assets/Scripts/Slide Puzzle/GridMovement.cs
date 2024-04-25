using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Tilemaps;

public class GridMovement : MonoBehaviour
{
    [SerializeField] private Tilemap groundTilemap;
    [SerializeField] private Tilemap collisionTilemap;
    [SerializeField] private Tilemap stairsTilemap;
    [SerializeField] private Tilemap endTilemap;

    private bool isMoving = false;
    private Vector2 origPos, targetPos;
    private float timeToMove = 0.7f;

    System.Func<KeyCode, bool> inputFunction;

    // Update is called once per frame
    void Update()
    {
        if (!isMoving) {
            
            inputFunction = Input.GetKeyDown;

            int numSpaces = 0;

            if (inputFunction(KeyCode.W) || inputFunction(KeyCode.UpArrow)) {

                while (CanMove(Vector2.up)) {
                    isMoving = true;
                    numSpaces++;
                }
                timeToMove *= numSpaces;
                if (numSpaces > 0) {
                    StartCoroutine(MovePlayer(Vector2.up * numSpaces));
                }
            }

            // if (inputFunction(KeyCode.A) || inputFunction(KeyCode.LeftArrow)) {

            //     while (CanMove(Vector2.left)) {
            //         isMoving = true;
            //         StartCoroutine(MovePlayer(Vector2.left));
            //     }
            // }

            // if (inputFunction(KeyCode.S) || inputFunction(KeyCode.DownArrow)) {

            //     while (CanMove(Vector2.down)) {
            //         isMoving = true;
            //         StartCoroutine(MovePlayer(Vector2.down));
            //     }
            // }

            // if (inputFunction(KeyCode.D) || inputFunction(KeyCode.RightArrow)) {

            //     while (CanMove(Vector2.right)) {
            //         isMoving = true;
            //         StartCoroutine(MovePlayer(Vector2.right));
            //     }
            // }







            // if (inputFunction(KeyCode.A) || inputFunction(KeyCode.LeftArrow)) {
            //     StartCoroutine(MovePlayer(Vector2.left));
            // }

            // if (inputFunction(KeyCode.S) || inputFunction(KeyCode.DownArrow)) {
            //     StartCoroutine(MovePlayer(Vector2.down));
            // }

            // if (inputFunction(KeyCode.D) || inputFunction(KeyCode.RightArrow)) {
            //     StartCoroutine(MovePlayer(Vector2.right));
            // }
        }
    }

    private IEnumerator MovePlayer(Vector2 direction)
    {
        isMoving = true;

        float elapsedTime = 0;

        origPos = transform.position;
        targetPos = origPos + direction;

        while(elapsedTime < timeToMove)
        {
            elapsedTime += Time.deltaTime;
            transform.position = Vector3.Lerp(origPos, targetPos, (elapsedTime / timeToMove));
            yield return null;
        }

        transform.position = targetPos;

        isMoving = false;
    }

    private bool CanMove(Vector2 direction) {
        // Calculate the position we need to go to (this will need to be changed since we could possibly move many spots when we hit a direction)
        Vector3Int gridPosition = groundTilemap.WorldToCell(transform.position + (Vector3)direction);

        // Maybe we should have this somewhere else (like in the move function) as a while loop to keep moving until you hit a collision
        if (!groundTilemap.HasTile(gridPosition) || collisionTilemap.HasTile(gridPosition)) {
            return false;
        }
        return true;
    }
}
