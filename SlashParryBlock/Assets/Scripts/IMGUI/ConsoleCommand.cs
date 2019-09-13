using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ConsoleCommand : MonoBehaviour
{
    public string CommandInput;
    private bool Focused = false;

    void OnGUI()
    {

        GUI.SetNextControlName("Console");
        CommandInput = GUI.TextField(new Rect(25, 25, 100, 25), CommandInput);

        FocusSetup();
    }

    private void FocusSetup()
    {
        if (!Focused)
        {
            Focused = true;
            GUI.FocusControl("Console");
        }
    }

    public void FocusConsoleToggle(bool value)
    {
        
    }
}
