using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.Linq;
using UnityEngine.SceneManagement;

public class DataSystemManager : MonoBehaviour
{
    [Header("File Storage Config")]
    [SerializeField] private string fileName;


    private GameData gameData; 
    private List<IDataSystem> dataSystemObjects;
    private DataFile dataFile;

    public static DataSystemManager instance{ get; private set; }

    private void Awake()
    {
        //Debug.Log("datamanager instance is called");
        if (instance != null)
        {
            Debug.LogError("There is multiple Managers in the scene");
            //Debug.Log("destorying...");
            //Destroy(gameObject); //
            //Debug.Log("destoryed");
        }
        instance = this;
    }


    private void Start()
    {
        this.dataFile = new DataFile(Application.persistentDataPath, fileName);
        Debug.Log("data path: " + Application.persistentDataPath);
        this.dataSystemObjects = FindAllDataSystemObjects();
        this.gameData  = new GameData(); // test
        //LoadGame(); //
    }


    public void NewGame()
    {
        this.gameData = new GameData();
        //SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex + 1);
        Debug.Log("before scene load");
        SceneManager.LoadScene("Main Dining");
        Debug.Log("after scene load");
    }

    public void LoadGame()
    {
        Debug.Log("Loading game....");
        this.gameData = dataFile.Load();

        Debug.Log("Loaded scene name: " + gameData.savedSceneName);

        if (this.gameData == null)
        {
            Debug.Log("Data not found.");
            NewGame();
            //SceneManager.LoadScene(gameData.savedSceneName);
        }
        else
        {
            SceneManager.LoadScene(gameData.savedSceneName);
            // foreach (IDataSystem dataSystemObj in dataSystemObjects)
            // {
            //    dataSystemObj.LoadData(gameData);
            //}


            //    Debug.Log("Data not found.");
            //    NewGame();

        }






        //foreach (IDataSystem dataSystemObj in dataSystemObjects)
        //{
        //    dataSystemObj.LoadData(gameData);
        //}


        // Debug.Log("loaded item count = " + gameData.itemCount);

       // GameObject player = GameObject.FindGameObjectWithTag("Player");
        //if (player != null)
        //{
        //    player.transform.position = gameData.playerPosition;
        //}
        Debug.Log("loaded item count = " + gameData.itemCount); ///
    }

    public void SaveGame()
    {
        Debug.Log("Saving scene");
        if (gameData != null) {
            gameData.savedSceneName = SceneManager.GetActiveScene().name;
        }
        else
        {
            Debug.Log("gameData null");
            return;
        }
        Debug.Log("scene saved");
        if(SceneManager.GetActiveScene() == null)
        {
            Debug.Log("cannot get active scene");
        }

         foreach(IDataSystem dataSystemObj in dataSystemObjects)
        {
            dataSystemObj.SaveData(ref gameData);
        }
        //Debug.Log("Saved item count = " + gameData.itemCount);
        // below is new
        //GameObject player = GameObject.FindGameObjectWithTag("Player");
        //if(player != null)
        //{
        //    gameData.playerPosition = player.transform.position;
        //}
        dataFile.Save(gameData); // old
    }


    private void OnApplicationQuit()
    {
        SaveGame();
    }



    private List<IDataSystem> FindAllDataSystemObjects()
    {
        IEnumerable<IDataSystem> dataSystemObjects = FindObjectsOfType<MonoBehaviour>().OfType<IDataSystem>();
        return new List<IDataSystem>(dataSystemObjects);
    }
}
