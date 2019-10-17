using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.EventSystems;

[ExecuteInEditMode]
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
    private MenuControllerNavigation navigator;
    private bool Eventadded = false;
    public static bool[] D_PadXUsed = { true, true, true, true };
    public static bool[] D_PadYUsed = { true, true, true, true };

    protected override void Start()
    {
        myUpdate = ControllerUpdate;
        //UnityEditor.Events.UnityEventTools.AddPersistentListener(A_Button, methodDelegate);
        navigator = GetComponentsInParent<MenuControllerNavigation>()[1];
    }

    public void ControllerUpdate()
    {
        for (int i = 0; i < 4; i++)
        {
            if (Input.GetButtonDown("A_ButtonP" + (i + 1)))
            {
                Debug.Log("Event run");

                A_Button.Invoke();
            }

            if (Input.GetAxis("D-PadXP" + (i + 1)) < 0.0f && !D_PadXUsed[i])
            {
                if (leftMenuItem != null)
                {
                    Debug.Log(leftMenuItem.name);
                    navigator.SetDelegate(leftMenuItem.myUpdate);
                }
                D_PadXUsed[i] = true;
            }
            if (Input.GetAxis("D-PadXP" + (i + 1)) > 0.0f && !D_PadXUsed[i])
            {
                if (rightMenuItem != null)
                {
                    Debug.Log(rightMenuItem.name);
                    navigator.SetDelegate(rightMenuItem.myUpdate);
                }
                D_PadXUsed[i] = true;
            }

            if (Input.GetAxis("D-PadYP" + (i + 1)) > 0.0f && !D_PadYUsed[i])
            {
                if (belowMenuItem != null)
                {
                    Debug.Log(belowMenuItem.name);
                    navigator.SetDelegate(belowMenuItem.myUpdate);
                }
                D_PadYUsed[i] = true;
            }
            if (Input.GetAxis("D-PadYP" + (i + 1)) < 0.0f && !D_PadYUsed[i])
            {
                if (aboveMenuItem != null)
                {
                    Debug.Log(aboveMenuItem.name);
                    navigator.SetDelegate(aboveMenuItem.myUpdate);
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

    private void OnGUI()
    {
        //UpdateInspector();
    }

    private void OnEnable()
    {
        
    }

    void UpdateInspector()
    {
        if (!Eventadded)
        {
            A_Button = new UnityEvent();

            
            Eventadded = true;
        }
    }
}
