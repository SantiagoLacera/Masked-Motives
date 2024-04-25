using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Ink.Runtime;
using TMPro;
using System.Linq;

public class InteractableVariables : MonoBehaviour
{
    public TextAsset inkJSON;
    private Story myStory;
    public TMP_Text trustText;

    private void Start()
    {
        myStory = new Story(inkJSON.text);
    }

    public void Update()
    {
        if (myStory.canContinue)
        {
            myStory.Continue();
        }


        if (myStory.variablesState.Contains("vampire_trustLevel"))
        {
            
            var VampireTrustLevel = myStory.variablesState["vampire_trustLevel"];
            Debug.Log("Vampire Trust Level: " + VampireTrustLevel);
            trustText.text = "Vampire Trust Level: " + VampireTrustLevel.ToString();
        }

        else 
        {
           
            trustText.text = "variable not found";
        }

    }


}


// not working rn, only printing '0' despite the trust changing. needs to update accordingly