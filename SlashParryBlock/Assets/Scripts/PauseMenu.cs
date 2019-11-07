using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PauseMenu : MonoBehaviour
{
    private CharacterMovmentScript charMovScript;

    void Start()
    {
        charMovScript = gameObject.GetComponent<CharacterMovmentScript>();
    }

    void Update()
    {
        for (int i = 0; i < charMovScript.joystickCharInputs.Count; i++)
        {
            if (Input.GetButtonDown("StartButton" + charMovScript.joystickCharInputs[i]) && charMovScript.PlayGame)
            {
                charMovScript.gameUIContainer.PauseMenu.SetActive(!charMovScript.gameUIContainer.PauseMenu.activeInHierarchy);
                charMovScript.PauseGame();
            }
        }

    }


}
