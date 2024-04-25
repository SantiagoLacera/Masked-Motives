using System.Collections;
using EasyTransition;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.Tilemaps;
using UnityEngine.UI;

public class PlayerController : MonoBehaviour
{

    public TransitionSettings transition;

    [SerializeField] private Tilemap groundTilemap;
    [SerializeField] private Tilemap collisionTilemap;
    [SerializeField] private Tilemap stairsTilemap;
    [SerializeField] private Tilemap endTilemap;


    public Button levelTwoButton;
    public Button levelThreeButton;
    public Button giveUpButton;
    public Button finishGameButton;

    private PlayerMovement controls;
    public float loadDelay = 1.5f;

    private int levelsCompleted;
    public float smoothTime = 0.3f;
    private Vector3 velocity = Vector3.zero;

    private void Awake() {
        controls = new PlayerMovement();
    }

    private void OnEnable() {
        controls.Enable();
        levelTwoButton.gameObject.SetActive(false);
        levelThreeButton.gameObject.SetActive(false);
        finishGameButton.gameObject.SetActive(false);
    }

    private void OnDisable() {
        controls.Disable();
    }

    // Start is called before the first frame update
    void Start()
    {
        controls.Main.Movement.performed += ctx => Move(ctx.ReadValue<Vector2>());
    }

    private void Move(Vector2 direction) {

        //controls.Disable();

        Vector2 targetPosition = transform.position;
        int numSpaces = 0;

        while (CanMove(direction, targetPosition)) {
            
            targetPosition += direction;
            numSpaces++;

            //Vector3 targetPosition = transform.position + (Vector3)direction;
            //transform.position = Vector3.SmoothDamp(transform.position, targetPosition, ref velocity, smoothTime);
        }

        //controls.Disable();
        float time = numSpaces * .2f;

        StartCoroutine(pauseMovement(time));
        StartCoroutine(SmoothLerp(time, targetPosition));

        Vector3Int gridPosition = groundTilemap.WorldToCell(transform.position);
        if (stairsTilemap.HasTile(gridPosition)) {

            if (levelsCompleted == 0) {
                levelsCompleted++;
                
                enabled = false;
                levelTwoButton.gameObject.SetActive(true);
                
                
            }
            else if (levelsCompleted == 1) {

                levelsCompleted++;
                enabled = false;

                levelThreeButton.gameObject.SetActive(true);
                

            }
        }

        if (endTilemap.HasTile(gridPosition)) {

            // TODO: give credit for level
            if (SceneState.iceGameWon == false) {
                SceneState.iceGameWon = true;
                SceneState.gamesWon++;

                Debug.Log(SceneState.iceGameWon);
                Debug.Log(SceneState.gamesWon);
            }

            // Disable controls
            enabled = false;

            // Enable button to close game
            giveUpButton.gameObject.SetActive(false);
            finishGameButton.gameObject.SetActive(true);
        }

        //controls.Enable();
    }

    private bool CanMove(Vector2 direction, Vector3 targetPosition) {
        // Calculate the position we need to go to (this will need to be changed since we could possibly move many spots when we hit a direction)
        Vector3Int gridPosition = groundTilemap.WorldToCell(targetPosition + (Vector3)direction);

        // Maybe we should have this somewhere else (like in the move function) as a while loop to keep moving until you hit a collision
        if (!groundTilemap.HasTile(gridPosition) || collisionTilemap.HasTile(gridPosition)) {
            return false;
        }
        return true;
    }

    private IEnumerator SmoothLerp(float time, Vector2 targetPosition) {
        Vector2 start = transform.position;
        Vector2 end = targetPosition;

        float elapsedTime = 0;

        while (elapsedTime < time) {
            transform.position = Vector2.Lerp(start, end, (elapsedTime / time));
            elapsedTime += Time.deltaTime;
            yield return null;
        }

        controls.Enable();
    }

    private IEnumerator pauseMovement(float time) {
        controls.Disable();

        float elapsedTime = 0;

        while (elapsedTime < time) {
            elapsedTime += Time.deltaTime;
            yield return null;
        }

        controls.Enable();
    }

    public void MoveToLevelTwo() {
        // Move player to level 2
        transform.position += new Vector3(14.0f, 0.0f ,0.0f);

        // Move and rescale camera for level 2
        Camera.main.transform.position = new Vector3(17.0f, 9.0f, -10.0f);
        Camera.main.orthographicSize = 6.0f;

        enabled = true;
    }

    public void MoveToLevelThree() {
        // Move player to level 3
        transform.position += new Vector3(14.0f, 0.0f ,0.0f);

        // Move and rescale camera for level 3
        Camera.main.transform.position = new Vector3(42.0f, 6.0f, -10.0f);
        Camera.main.orthographicSize = 7.0f;

        enabled = true;
    }

    public void LoadGameScene() {
        SceneState.State = 1;
        SceneManager.LoadScene("Frozen Mountains");
    }
}
