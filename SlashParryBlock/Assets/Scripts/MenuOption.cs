using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.EventSystems;

[ExecuteInEditMode]
public class MenuOption : MonoBehaviour
{
    //[HideInInspector]
    public MenuOption leftMenuItem, rightMenuItem, aboveMenuItem, belowMenuItem;
    public UnityEvent A_Button, B_Button, D_PadLeft, D_PadRight, D_PadUp, D_PadDown;
    public int CurPlayerControl = 0;

    private MenuControllerNavigation navigator;
    public static bool[] D_PadXUsed = { true, true, true, true };
    public static bool[] D_PadYUsed = { true, true, true, true };

    void Start()
    {
        navigator = GetComponentInParent<MenuControllerNavigation>();
    }

    public void ControllerUpdate()
    {
        for (int i = 0; i < 4; i++)
        {
            CurPlayerControl = i;
            if (Input.GetButtonDown("A_ButtonP" + (i + 1)))
            {
                Debug.Log("A_Button Event run");

                A_Button.Invoke();
            }

            if (Input.GetAxis("D-PadXP" + (i + 1)) > 0.0f && !D_PadXUsed[i])
            {
                D_PadLeft.Invoke();
                D_PadXUsed[i] = true;
            }
            if (Input.GetAxis("D-PadXP" + (i + 1)) < 0.0f && !D_PadXUsed[i])
            {
                D_PadRight.Invoke();
                D_PadXUsed[i] = true;
            }

            if (Input.GetAxis("D-PadYP" + (i + 1)) > 0.0f && !D_PadYUsed[i])
            {
                D_PadDown.Invoke();
                D_PadYUsed[i] = true;
            }
            if (Input.GetAxis("D-PadYP" + (i + 1)) < 0.0f && !D_PadYUsed[i])
            {
                D_PadUp.Invoke();
                D_PadYUsed[i] = true;
            }

            if (Input.GetAxis("D-PadXP" + (i + 1)) == 0.0f)
            {
                D_PadXUsed[i] = false;
            }
            if (Input.GetAxis("D-PadYP" + (i + 1)) == 0.0f)
            {
                D_PadYUsed[i] = false;
            }
        }
    }
}
