using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.EventSystems;

[ExecuteInEditMode]
public class MenuOption : MonoBehaviour
{
    //[HideInInspector]
    public UnityEvent A_Button, B_Button, D_PadLeft, D_PadRight, D_PadUp, D_PadDown;

    private MenuControllerNavigation navigator;
    public static bool[] D_PadXUsed = { true, true, true, true };
    public static bool[] D_PadYUsed = { true, true, true, true };

    void Start()
    {
        navigator = GetComponentInParent<MenuControllerNavigation>();
    }

    public void ControllerUpdate(int curPlayer, string joystickChar)
    {
        if (Input.GetButtonDown("A_Button" + joystickChar))
        {
            A_Button.Invoke();
        }
        if (Input.GetButtonDown("B_Button" + joystickChar))
        {
            B_Button.Invoke();
        }

        if (Input.GetAxis("Horizontal" + joystickChar) > 0.0f && !D_PadXUsed[curPlayer])
        {
            D_PadLeft.Invoke();
            D_PadXUsed[curPlayer] = true;
        }
        if (Input.GetAxis("Horizontal" + joystickChar) < 0.0f && !D_PadXUsed[curPlayer])
        {
            D_PadRight.Invoke();
            D_PadXUsed[curPlayer] = true;
        }

        if (Input.GetAxis("Vertical" + joystickChar) < 0.0f && !D_PadYUsed[curPlayer])
        {
            D_PadDown.Invoke();
            D_PadYUsed[curPlayer] = true;
        }
        if (Input.GetAxis("Vertical" + joystickChar) > 0.0f && !D_PadYUsed[curPlayer])
        {
            D_PadUp.Invoke();
            D_PadYUsed[curPlayer] = true;
        }

        if (Input.GetAxis("Horizontal" + joystickChar) == 0.0f)
        {
            D_PadXUsed[curPlayer] = false;
        }
        if (Input.GetAxis("Vertical" + joystickChar) == 0.0f)
        {
            D_PadYUsed[curPlayer] = false;
        }
    }
}
