using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ConsoleCommandGUI : MonoBehaviour
{
    public string CommandInput;
    private bool Focused = false;
    public bool EnterPressed = false;

    void OnGUI()
    {
        Event e = Event.current;
        if (e.keyCode == KeyCode.Return)
        {
            EnterPressed = true;
        }
        else
        {
            GUI.SetNextControlName("Console");
            CommandInput = GUI.TextField(new Rect(25, 25, 100, 25), CommandInput);
            Debug.Log("OnGui");
        }

        FocusSetup();
    }

    private void FocusSetup()
    {
        if (Focused)
        {
            GUI.FocusControl("Console");
        }
        Debug.Log(Focused);
    }

    public void FocusConsoleToggle(bool value)
    {
        Focused = value;
    }
}
