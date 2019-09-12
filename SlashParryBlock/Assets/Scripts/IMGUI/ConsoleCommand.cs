using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ConsoleCommand : MonoBehaviour
{
    public string CommandInput;
    void OnGUI()
    {
        CommandInput = GUI.TextField(new Rect(25, 25, 100, 25), CommandInput);
    }
}
