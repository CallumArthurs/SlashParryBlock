using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CharacterSelect : MonoBehaviour
{
    List<Color> colours;
    public List<Image> CharHelmImages;
    List<string> joystickCharInputs;
    bool[] ConSelected =  new bool[4] { false, false, false, false };
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
                    Debug.Log("Controller" + (i + 1) + " Has selected");
                }
            }
        }

        if (joystickCharInputs.Count > 0)
        {
            for (int i = 0; i < joystickCharInputs.Count; i++)
            {
                if (Input.GetAxis("Horizontal" + joystickCharInputs[i]) > 0.0f)
                {
                    if (colourSelected[i] == colourSelected.Length)
                    {
                        colourSelected[i] = 0;
                    }
                    else
                    {
                        colourSelected[i]++;
                    }
                }
                if (Input.GetAxis("Horizontal" + joystickCharInputs[i]) < 0.0f)
                {
                    if (colourSelected[i] == 0)
                    {
                        colourSelected[i] = colourSelected.Length;
                    }
                    else
                    {
                        colourSelected[i]--;
                    }
                }
            }
        }
    }
}
