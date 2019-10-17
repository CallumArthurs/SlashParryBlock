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
        Debug.Log(gameObject.name);
        ControlsHandler = value;
    }
}
