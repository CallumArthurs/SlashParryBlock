using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CharacterSelect : MonoBehaviour
{
    public List<Image> CharHelmImages;
    List<Color> colours = new List<Color>();
    List<string> joystickCharInputs = new List<string>();
    int[] ControllerOrder = new int[4];
    bool[] ConSelected =  new bool[4] { false, false, false, false };
    bool[] playersReady = new bool[4] { false, false, false, false };
    int ReadyplayerCount = 0;
    bool[] HoriAxisUsed = new bool[4] { false, false, false, false };
    int[] colourSelected = new int[4] { 0, 0, 0, 0 };
    void Start()
    {
        colours.Add(Color.red);
        colours.Add(Color.green);
        colours.Add(Color.blue);
    }

    void Update()
    {
        for (int i = 0; i < 4; i++)
        {
            if (!ConSelected[i])
            {
                if (Input.GetAxis("StartButtonP" + (i + 1)) > 0.0f)
                {
                    ConSelected[i] = true;
                    joystickCharInputs.Add("P" + (i + 1));
                    CharHelmImages[joystickCharInputs.Count - 1].gameObject.SetActive(true);
                }
            }
        }

        if (joystickCharInputs.Count > 0)
        {
            //count = how many objects there are so if 1 connected, i will only go up to 0
            for (int i = 0; i < joystickCharInputs.Count; i++)
            {
                //Cycles through the connected controllers
                //checks if they've already used the axis !HoriAxisUsed
                if (Input.GetAxis("Horizontal" + joystickCharInputs[i]) < 0.0f && !HoriAxisUsed[i])
                {
                    //sets true now that they have
                    HoriAxisUsed[i] = true;
                    //cycles through the colours making sure not to go over the amount there are, length will equal to 
                    if (colourSelected[i] == colours.Count - 1)
                    {
                        colourSelected[i] = 0;
                    }
                    else
                    {
                        colourSelected[i]++;
                    }
                    CharHelmImages[i].color = colours[colourSelected[i]];
                }
                else if (Input.GetAxis("Horizontal" + joystickCharInputs[i]) > 0.0f && !HoriAxisUsed[i])
                {
                    HoriAxisUsed[i] = true;
                    if (colourSelected[i] == 0)
                    {
                        colourSelected[i] = colours.Count - 1;
                    }
                    else
                    {
                        colourSelected[i]--;
                    }
                    CharHelmImages[i].color = colours[colourSelected[i]];
                }
                else
                {
                    HoriAxisUsed[i] = false;
                }

                if (Input.GetAxis("A_Button" + joystickCharInputs[i]) != 0.0f)
                {
                    playersReady[i] = true;
                }

                if (joystickCharInputs.Count > 1)
                {
                    if (playersReady[i] == true)
                    {
                        ReadyplayerCount++;
                    }

                    if (ReadyplayerCount == joystickCharInputs.Count)
                    {
                        Debug.Log("StartGameHere");
                    }
                }
            }            
        }
    }
}
