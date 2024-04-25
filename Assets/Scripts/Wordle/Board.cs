using System.Linq;
using Ink.Parsed;
using UnityEngine;
using TMPro;
using UnityEngine.UI;
using UnityEditor;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using EasyTransition;

public class Board : MonoBehaviour

{
    public TransitionSettings transition;
    public float loadDelay = 1.5f;
    // Create array for alphabet that we can iterate through
    private static readonly KeyCode[] SUPPORTED_KEYS = new KeyCode[] {
        KeyCode.A, KeyCode.B, KeyCode.C, KeyCode.D, KeyCode.E, KeyCode.F, KeyCode.G, KeyCode.H, KeyCode.I, KeyCode.J, KeyCode.K, KeyCode.L, KeyCode.M,
        KeyCode.N, KeyCode.O, KeyCode.P, KeyCode.Q, KeyCode.R, KeyCode.S, KeyCode.T, KeyCode.U, KeyCode.V, KeyCode.W, KeyCode.X, KeyCode.Y, KeyCode.Z 
    };

    // Create an array of rows that we can iterate through to fill the board
    private Row[] rows;

    // Create an array of strings to hold the list of words that can possibly be the answer
    private string[] solutions;

    // Create an array of strings to hold the list of words that can be guessed
    private string[] validGuesses;

    // Create an list of strings to hold the list of words that have already been used in the game
    List<string> usedWords = new List<string>();

    // Create string to hold the word that will be the answer (chosen randomly from possible solutions)
    private string word;

    // Create variables to store the row and column of the tile we're currently on
    private int rowIndex;
    private int columnIndex;

    // Create variable to store the number of wins we currently have
    private int numWins;

    public TextMeshProUGUI winCounter;

    // Create tile states
    public Tile.State emptyState;
    public Tile.State occupiedState;
    public Tile.State correctState;
    public Tile.State wrongSpotState;
    public Tile.State incorrectState;

    // Create game object references for UI elements
    public TextMeshProUGUI invalidGuessText;
    public Button restartButton;
    public Button continueButton;
    public Button closeGameButton;
    public Button giveUpButton;


    private void Awake()
    {
        rows = GetComponentsInChildren<Row>();
    }

    private void Start()
    {
        LoadData();
        StartGame();
    }

    public void StartGame()
    {
        ClearBoard();
        SetRandomWord();
        enabled = true;
    }

    private void LoadData()
    {
        TextAsset textFile = Resources.Load("valid_wordle_guesses") as TextAsset;
        validGuesses = textFile.text.Split('\n');

        textFile = Resources.Load("wordle_answers") as TextAsset;
        solutions = textFile.text.Split('\n');
    }

    // Function that will choose the solution word
    private void SetRandomWord()
    {
        // Set word to be a random word in the solutions array
        word = solutions[Random.Range(0, solutions.Length)];

        // Keep setting a new word until the set word is new to this game
        while (usedWords.Contains(word)) {
            word = solutions[Random.Range(0, solutions.Length)];
        }

        // Add the current word to the used words list so it won't be used again
        usedWords.Add(word);

        // Set word to be all lowercase and have no extra whitespace (just in case)
        word = word.ToLower().Trim();
    }

    private void Update()
    {
        Row currentRow = rows[rowIndex]; 

        // Handle backspacing
        if (Input.GetKeyDown(KeyCode.Backspace)) 
        {
            invalidGuessText.gameObject.SetActive(false);

            // If we're already in the first column, don't decrement the column index
            columnIndex = Mathf.Max(columnIndex - 1, 0);

            // Empty the tile by setting it to the null character
            currentRow.tiles[columnIndex].SetLetter('\0');

            currentRow.tiles[columnIndex].SetState(emptyState);
        }

        // Once the row is full of letters, check if they want to enter the word
        else if (columnIndex >= currentRow.tiles.Length) 
        {
            // submit the row
            if (Input.GetKeyDown(KeyCode.Return))
            {
                SubmitRow(currentRow);
            }
        }

        // Row isn't full of letters, so allow input
        else
        {
            for (int i = 0; i < SUPPORTED_KEYS.Length; i++)
            {
                if (Input.GetKeyDown(SUPPORTED_KEYS[i]))
                {
                    // Set the letter for the current tile
                    currentRow.tiles[columnIndex].SetLetter((char)SUPPORTED_KEYS[i]);
                    currentRow.tiles[columnIndex].SetState(occupiedState);

                    // Move to the next tile in the row
                    columnIndex++;

                    // Prevents multiple keys from being pressed in a single frame
                    break;
                }
            }
        }
    }

    private bool IsValidGuess(string word) 
    {
        for (int i = 0; i < validGuesses.Length; i++)
        {
            if (validGuesses[i] == word) return true;
        }

        return false;
    }

    private void SubmitRow(Row row)
    {
        if (!IsValidGuess(row.word))
        {
            invalidGuessText.gameObject.SetActive(true);
            return;
        }

        // Create string to hold the remaining letters left to find in the word
        string remaining = word;

        // Loop through the submitted word to find the letters that are in the correct spot, or aren't in the word at all
        for (int i = 0; i < row.tiles.Length; i++)
        {
            // tile is the current tile we're looking at as we iterate through the word
            Tile tile = row.tiles[i];

            // if a letter is in the correct position
            if (tile.letter == word[i])
            {
                // Set the tile to the correct state to show the player that the letter is in the correct position
                tile.SetState(correctState);

                // Remove this letter from the remaining word, so that 
                    // if the player uses this letter again in a different position AND in the correct position
                    // they will not be falsely told that it is a correct letter in the wrong position
                remaining = remaining.Remove(i, 1);
                remaining = remaining.Insert(i, " ");
            }
            else if (!word.Contains(tile.letter))
            {
                tile.SetState(incorrectState);
            }
        }

        // Loop through the submitted word again to find the letters that are in the word, but in the wrong spot
        for (int i = 0; i < row.tiles.Length; i++)
        {
            Tile tile = row.tiles[i];

            if (tile.state != correctState && tile.state != incorrectState)
            {
                // The letter is in the word, but in the wrong spot
                if (remaining.Contains(tile.letter))
                {
                    tile.SetState(wrongSpotState);

                    // Find the index that the letter actually occurs at
                    int index = remaining.IndexOf(tile.letter);

                    remaining = remaining.Remove(index, 1);
                    remaining = remaining.Insert(index, " ");
                }
                // The letter is in the word, but has already been found, so show as incorrect
                else
                {
                    tile.SetState(incorrectState);
                }
            }
        }

        if (CheckIfWon(row))
        {
            numWins++;

            winCounter.text = "Wins: " + numWins;

            enabled = false;

            if (numWins < 3) {
                continueButton.gameObject.SetActive(true);
            }
            else {
                // TODO: give credit for minigame
                closeGameButton.gameObject.SetActive(true);
            }
            
        }

        // Move to the next row and reset the column index
        rowIndex++;
        columnIndex = 0;

        // If the player has made 6 guesses, end the game
        if (rowIndex >= rows.Length)
        {
            enabled = false;
            restartButton.gameObject.SetActive(true);
            giveUpButton.gameObject.SetActive(true);
            
        }
    }

    private bool CheckIfWon(Row row) 
    {
        for (int i = 0; i < row.tiles.Length; i++)
        {
            if (row.tiles[i].state != correctState)
            {
                return false;
            }
        }

        return true;
    }

    private void ClearBoard()
    {
        for (int i = 0; i < rows.Length; i++)
        {
            for (int j = 0; j < rows[i].tiles.Length; j++)
            {
                rows[i].tiles[j].SetLetter('\0');
                rows[i].tiles[j].SetState(emptyState);
            }
        }

        rowIndex = 0;
        columnIndex = 0;
    }

    private void OnEnable()
    {
        restartButton.gameObject.SetActive(false);
        closeGameButton.gameObject.SetActive(false);
        continueButton.gameObject.SetActive(false);
        giveUpButton.gameObject.SetActive(false);
    }

    private void OnDisable()
    {
        //restartButton.gameObject.SetActive(true);
    }

    public void GiveUp()
    {
        SceneManager.LoadScene("Dessert");
    }

    public void CloseGame() 
    {
        if(SceneState.wordGameWon == false) {
            SceneState.wordGameWon = true;
            SceneState.gamesWon++;
        }

        SceneManager.LoadScene("Dessert");
    }


}
