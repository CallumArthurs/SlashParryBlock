using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MenuControllerNavigation : MonoBehaviour
{
    public delegate void MenuItem(int iter, string charInput);
    public List<string> joystickCharInputs;
    public List<MenuItem> ControlsHandler = new List<MenuItem>();
    public MenuOption startingOption;

    public int iterI;
    public bool individualControls;
    protected virtual void Start()
    {
        ControlsHandler.Add(startingOption.ControllerUpdate);

        if (individualControls)
        {
            ControlsHandler.Add(startingOption.ControllerUpdate);
            ControlsHandler.Add(startingOption.ControllerUpdate);
            ControlsHandler.Add(startingOption.ControllerUpdate);
        }
    }

    void Update()
    {
        if (individualControls)
        {
            for (iterI = 0; iterI < joystickCharInputs.Count; iterI++)
            {
                ControlsHandler[iterI](iterI, joystickCharInputs[iterI]);
            }
        }
        else
        {
            ControlsHandler[0](0,"P1");
        }
    }

    public void SetDelegate(MenuItem value)
    {
        ControlsHandler[iterI] = value;
    }

    public void ResetAllControllers()
    {
        for (int i = 0; i < ControlsHandler.Count; i++)
        {
            ControlsHandler[i] = startingOption.ControllerUpdate;
        }
    }
    public void MoveToMenuOption(MenuOption curMenuOption)
    {
        SetDelegate(curMenuOption.ControllerUpdate);
    }
}
