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

    public void ControllerUpdate(int curPlayer)
    {
        if (Input.GetButtonDown("A_ButtonP" + (curPlayer + 1)))
        {
            Debug.Log("A_Button Event run");

            A_Button.Invoke();
        }
        if (Input.GetButtonDown("B_ButtonP" + (curPlayer + 1)))
        {
            Debug.Log("B_Button Event run");

            B_Button.Invoke();
        }

        if (Input.GetAxis("D-PadXP" + (curPlayer + 1)) > 0.0f && !D_PadXUsed[curPlayer])
        {
            D_PadLeft.Invoke();
            D_PadXUsed[curPlayer] = true;
        }
        if (Input.GetAxis("D-PadXP" + (curPlayer + 1)) < 0.0f && !D_PadXUsed[curPlayer])
        {
            D_PadRight.Invoke();
            D_PadXUsed[curPlayer] = true;
        }

        if (Input.GetAxis("D-PadYP" + (curPlayer + 1)) > 0.0f && !D_PadYUsed[curPlayer])
        {
            D_PadDown.Invoke();
            D_PadYUsed[curPlayer] = true;
        }
        if (Input.GetAxis("D-PadYP" + (curPlayer + 1)) < 0.0f && !D_PadYUsed[curPlayer])
        {
            D_PadUp.Invoke();
            D_PadYUsed[curPlayer] = true;
        }

        if (Input.GetAxis("D-PadXP" + (curPlayer + 1)) == 0.0f)
        {
            D_PadXUsed[curPlayer] = false;
        }
        if (Input.GetAxis("D-PadYP" + (curPlayer + 1)) == 0.0f)
        {
            D_PadYUsed[curPlayer] = false;
        }
    }
}
