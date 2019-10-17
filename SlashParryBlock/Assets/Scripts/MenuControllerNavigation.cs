using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MenuControllerNavigation : MonoBehaviour
{
    public delegate void MenuItem();

    public static MenuItem ControlsHandler;

    void Update()
    {
        ControlsHandler();
    }

    public void SetDelegate(MenuItem value)
    {
        ControlsHandler = value;
    }
}
