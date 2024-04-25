using UnityEngine;

public class Row : MonoBehaviour
{
    public Tile[] tiles { get; private set; }

    // Method to convert word from a bunch of separate letters (in tiles) to a string
    public string word
    {
        get
        {
            string word = "";

            for (int i = 0; i < tiles.Length; i++)
            {
                word += tiles[i].letter;
            }

            return word;
        }
    }

    private void Awake()
    {
        tiles = GetComponentsInChildren<Tile>();
    }
}
