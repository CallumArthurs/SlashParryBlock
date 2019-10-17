using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.EventSystems;

public class MenuOption : MenuControllerNavigation
{
    public enum Method
    {
        A_Button,
        B_Button
    }

    public MenuItem myUpdate;
    public MenuOption leftMenuItem, rightMenuItem, aboveMenuItem, belowMenuItem;
    public UnityEvent A_Button;

    public UnityAction methodDelegate;
    bool Eventadded = false;
    private bool[] D_PadXUsed = { true, true, true, true };
    private bool[] D_PadYUsed = { true, true, true, true };

    void Start()
    {
        myUpdate = Update;
    }

    void Update()
    {
        for (int i = 0; i < 4; i++)
        {
            if (Input.GetButtonDown("A_ButtonP" + (i + 1)))
            {
                A_Button.Invoke();
            }

            if (Input.GetAxis("D-PadXP" + (i + 1)) < 0.0f && !D_PadXUsed[i])
            {
                if (leftMenuItem != null)
                {
                    ControlsHandler = leftMenuItem.myUpdate;
                }
                D_PadXUsed[i] = true;
            }
            if (Input.GetAxis("D-PadXP" + (i + 1)) > 0.0f && !D_PadXUsed[i])
            {
                if (rightMenuItem != null)
                {
                    ControlsHandler = rightMenuItem.myUpdate;
                }
                D_PadXUsed[i] = true;
            }

            if (Input.GetAxis("D-PadYP" + (i + 1)) < 0.0f && !D_PadYUsed[i])
            {
                if (belowMenuItem != null)
                {
                    ControlsHandler = belowMenuItem.myUpdate;
                }
                D_PadYUsed[i] = true;
            }
            if (Input.GetAxis("D-PadYP" + (i + 1)) > 0.0f && !D_PadYUsed[i])
            {
                if (aboveMenuItem != null)
                {
                    ControlsHandler = aboveMenuItem.myUpdate;
                }
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

    private void OnEnable()
    {
        UpdateInspector();
    }

    void UpdateInspector()
    {
        if (!Eventadded)
        {
            A_Button = new UnityEvent();

            UnityEditor.Events.UnityEventTools.AddPersistentListener(A_Button, methodDelegate);
            Eventadded = true;
        }
    }
}
