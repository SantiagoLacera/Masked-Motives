using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Wait : MonoBehaviour
{
    public GameObject WarningSign;
    public void WaitTime()
    {
        StartCoroutine(SetACtive());
    }


    public IEnumerator SetACtive()
    {
        yield return new WaitForSeconds(5);
        WarningSign.SetActive(false);
    }
}
