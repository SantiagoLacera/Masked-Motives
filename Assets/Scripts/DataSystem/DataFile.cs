using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;
using System.IO;

public class DataFile 
{
    private string dataDirectoryPath = "";
    private string dataFileName = "";


    public DataFile(string dataDirectoryPath, string dataFileName)
    {
        this.dataDirectoryPath = dataDirectoryPath;
        this.dataFileName = dataFileName;
    }


    public GameData Load()
    {
        string fullPath = Path.Combine(dataDirectoryPath, dataFileName);
        Debug.Log("Data file path: " + fullPath);
        GameData dataLoaded = null;
        if (File.Exists(fullPath))
        {
            try
            {
                string loadData = "";
                using (FileStream stream = new FileStream(fullPath, FileMode.Open))
                {
                    using (StreamReader reader = new StreamReader(stream))
                    {
                        loadData = reader.ReadToEnd();
                    }
                }

                dataLoaded = JsonUtility.FromJson<GameData>(loadData);

            }
            catch (Exception e)
            {
                Debug.LogError("Error when trying to load data from a file: " + fullPath + "\n" + e);
            }
        }
        else{
            Debug.Log("GameData file not found at: " + fullPath); // 
        }
        return dataLoaded;
    }


    public void Save(GameData data)
    { 
        
        string fullPath = Path.Combine(dataDirectoryPath, dataFileName);
        try
        {
            Directory.CreateDirectory(Path.GetDirectoryName(fullPath));

            string storeData = JsonUtility.ToJson(data, true);
            Debug.Log("saving game data " + storeData);

            using (FileStream stream = new FileStream(fullPath, FileMode.Create))
            {
                using(StreamWriter writer = new StreamWriter(stream))
                {
                    writer.Write(storeData);
                }
            }
        }
        catch(Exception e)
        {
            Debug.LogError("Error when trying to save data to a file: " + fullPath + "\n" + e);
        }
    }
}
