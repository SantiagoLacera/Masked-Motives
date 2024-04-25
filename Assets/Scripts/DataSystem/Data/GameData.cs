using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[System.Serializable]
public class GameData 
{
    public int itemCount; // get rid of
    public Vector3 playerPosition;
    public string savedSceneName;
    public List<string> collectedItems; /// new


    public GameData()
    {
        this.itemCount = 0;
        playerPosition = Vector3.zero;
        collectedItems = new List<string>(); // new
    }
    
}
