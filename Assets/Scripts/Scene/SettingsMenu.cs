using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;
using UnityEngine.UI;

public class SettingsMenu : MonoBehaviour
{

    public AudioMixer audioMixer;
    public TMPro.TMP_Dropdown resolutionOptionsDropdown;
   
    Resolution[] resolutionOptions;
    int currentRes = 0;

    private void Awake()
    {

    }


    private void Start()
    {
        float defaultVolume = 0.5f;
        audioMixer.SetFloat("Volume", Mathf.Log10(defaultVolume) * 20);
       resolutionOptions = Screen.resolutions;
        
       resolutionOptionsDropdown.ClearOptions();

       List<string> options = new List<string>();


        for(int x = 0; x < resolutionOptions.Length; x++)
        {
            string resolutionOption = resolutionOptions[x].width + " x " + resolutionOptions[x].height;
            options.Add(resolutionOption);

            if(resolutionOptions[x].width == Screen.currentResolution.width &&
                resolutionOptions[x].height == Screen.currentResolution.height)
            {
                currentRes = x;
            }
        }

        resolutionOptionsDropdown.AddOptions(options);
        resolutionOptionsDropdown.value = currentRes;
        resolutionOptionsDropdown.RefreshShownValue();
    }


    public void changeResolution(int resIndex)
    {
        Resolution resolution = resolutionOptions[resIndex];
        Screen.SetResolution(resolution.width, resolution.height,Screen.fullScreen);
    }

    public void changeVolume(float volume)
    {
        audioMixer.SetFloat("Volume", Mathf.Log10(volume)*20);
    }

    public void changeGraphics(int qualityIndex)
    {
        QualitySettings.SetQualityLevel(qualityIndex);
    }

    public void fullScreenMode(bool fullScreenEnabled)
    {
        Screen.fullScreen = fullScreenEnabled;
    }

}

