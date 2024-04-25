using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class ObjectLifecycle : MonoBehaviour
{
    public float delayBeforeStart = 2f; // Time in seconds before the object lifecycle begins
    public float disappearTime = 3f; // Time in seconds before the object disappears
    public float reappearTime = 5f; // Time in seconds before the object reappears


    private GameObject objToManipulate;

    void Start()
    {
        objToManipulate = gameObject;
        objToManipulate.SetActive(false); // wizard not seen on start
        Invoke("StartLifecycle", delayBeforeStart);
    }

    void StartLifecycle()
    {
        Invoke("ReappearObject", reappearTime); 
        // Invoke("DisappearObject", disappearTime); 
    }

    void DisappearObject()
    {
        objToManipulate.SetActive(false); // wizard dissapears after delay
        // Invoke("ReappearObject", reappearTime); 
    }

    void ReappearObject()
    {
        objToManipulate.SetActive(true); // wizard appears after delay
        Invoke("DisappearObject", disappearTime);
    }
}

