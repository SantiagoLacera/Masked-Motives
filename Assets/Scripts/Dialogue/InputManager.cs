using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.InputSystem;


[RequireComponent(typeof(PlayerInput))]
public class InputManager : MonoBehaviour
{
  
    private bool interactPressed = false;
    private bool submitPressed = false;
    private bool escapePressed = false; //

    private static InputManager instance;

    private void Awake()
    {
        if (instance != null)
        {
            Debug.LogError("Found more than one Input Manager in the scene.");
        }
        instance = this;
    }

    public static InputManager GetInstance()
    {
        return instance;
    }


    public void InteractButtonPressed(InputAction.CallbackContext context)
    {
        if (context.performed)
        {
            interactPressed = true;
        }
        else if (context.canceled)
        {
            interactPressed = false;
        }
    }

    public void SubmitPressed(InputAction.CallbackContext context)
    {
        if (context.performed)
        {
            submitPressed = true;
        }
        else if (context.canceled)
        {
            submitPressed = false;
        }
    }

    //
    public void EscapePressed(InputAction.CallbackContext context)
    {
        if (context.performed)
        {
            escapePressed = true;
        }
        else if (context.canceled)
        {
            escapePressed = false;
        }
    }

    public bool GetInteractPressed()
    {
        bool result = interactPressed;
        interactPressed = false;
        return result;
    }

    public bool GetSubmitPressed()
    {
        bool result = submitPressed;
        submitPressed = false;
        return result;
    }

    //
    public bool GetEscapePressed()
    {
        bool result = escapePressed;
        escapePressed = false;
        return result;
    }

    public void RegisterSubmitPressed()
    {
        submitPressed = false;
    }

}
