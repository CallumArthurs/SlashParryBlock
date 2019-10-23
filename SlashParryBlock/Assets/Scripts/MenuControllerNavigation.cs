using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MenuControllerNavigation : MonoBehaviour
{
    public delegate void MenuItem(int iter);

    public MenuItem ControlsHandler;
    public MenuOption startingOption;

    public int iterI;

    protected virtual void Start()
    {
        Debug.Log(gameObject.name);
        ControlsHandler = startingOption.ControllerUpdate;
    }

    void Update()
    {
        for (iterI = 0; iterI < 4; iterI++)
        {
            ControlsHandler(iterI);
        }
    }

    public void SetDelegate(MenuItem value)
    {
        ControlsHandler = value;
    }

    public void DPadLeft(MenuOption curMenuOption)
    {
        Debug.Log(curMenuOption.name);
        SetDelegate(curMenuOption.ControllerUpdate);
    }
    public void DPadRight(MenuOption curMenuOption)
    {
        Debug.Log(curMenuOption.name);
        SetDelegate(curMenuOption.ControllerUpdate);
    }
    public void DPadUp(MenuOption curMenuOption)
    {
        Debug.Log(curMenuOption.name);
        SetDelegate(curMenuOption.ControllerUpdate);
    }
    public void DPadDown(MenuOption curMenuOption)
    {
        Debug.Log(curMenuOption.name);
        SetDelegate(curMenuOption.ControllerUpdate);
    }
}
