using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class Console : MonoBehaviour
{
    private ConsoleCommandGUI console;
    private CharacterMovmentScript charMovScript;
    
    void Start()
    {
        console = gameObject.GetComponent<ConsoleCommandGUI>();
        charMovScript = gameObject.GetComponent<CharacterMovmentScript>();
    }

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.BackQuote))
        {
            Debug.Log("backquote pressed");
            console.enabled = true;
            console.FocusConsoleToggle(true);
        }

        if (console.enabled)
        {
            if (console.EnterPressed)
            {
                console.EnterPressed = false;
                console.FocusConsoleToggle(false);
                switch (console.CommandInput)
                {
                    case "Restart":
                        SceneManager.LoadScene(0);
                        break;
                    case "AddTime":
                        gameObject.GetComponent<MatchGameplay>().AddTime(120);
                        break;
                    case "InfiniteTime":
                        if (gameObject.GetComponent<MatchGameplay>().GetTime() > 300.0f)
                        {
                            gameObject.GetComponent<MatchGameplay>().SetTime(120);
                        }
                        else
                        {
                            gameObject.GetComponent<MatchGameplay>().SetTime(99999);
                        }
                        break;
                    case "Viviane":
                        GameObject tempSwordObj = Instantiate(Resources.Load("Prefabs/p_ExcaliburIndicator"), charMovScript.players[0].transform.position, Quaternion.identity) as GameObject;
                        break;
                    default:
                        Debug.Log("InvalidCommand");
                        break;
                }
                console.CommandInput = "";
                console.enabled = false;
            }
        }

    }
}
