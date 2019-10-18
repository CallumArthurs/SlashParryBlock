using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MenuControllerNavigation : MonoBehaviour
{
    public delegate void MenuItem();

    public MenuItem ControlsHandler;
    public MenuOption startingOption;

    protected virtual void Start()
    {
        Debug.Log(gameObject.name);
        ControlsHandler = startingOption.ControllerUpdate;
    }

    void Update()
    {
        ControlsHandler();
    }

    public void SetDelegate(MenuItem value)
    {
        ControlsHandler = value;
    }

    public void DPadLeft(MenuOption curMenuOption)
    {
        Debug.Log(curMenuOption.leftMenuItem.name);
        SetDelegate(curMenuOption.leftMenuItem.ControllerUpdate);
    }
    public void DPadRight(MenuOption curMenuOption)
    {
        Debug.Log(curMenuOption.rightMenuItem.name);
        SetDelegate(curMenuOption.rightMenuItem.ControllerUpdate);
    }
    public void DPadUp(MenuOption curMenuOption)
    {
        Debug.Log(curMenuOption.aboveMenuItem.name);
        SetDelegate(curMenuOption.aboveMenuItem.ControllerUpdate);
    }
    public void DPadDown(MenuOption curMenuOption)
    {
        Debug.Log(curMenuOption.belowMenuItem.name);
        SetDelegate(curMenuOption.belowMenuItem.ControllerUpdate);
    }
}
