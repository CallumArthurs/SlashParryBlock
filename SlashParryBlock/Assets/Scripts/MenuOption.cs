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
    public CharacterSelect eventClass;
    public UnityEvent events;
    public UnityAction methodDelegate;
    public Method method;
    bool Eventadded = false;

    void Start()
    {
        myUpdate = Update;
    }

    void Update()
    {

    }

    private void OnEnable()
    {
        UpdateInspector();
    }

    void UpdateInspector()
    {
        if (!Eventadded)
        {
            eventClass = gameObject.GetComponent<CharacterSelect>();
            events = new UnityEvent();

            methodDelegate += System.Delegate.CreateDelegate(typeof(UnityAction), eventClass, "OpenCharacterSelect") as UnityAction;
            UnityEditor.Events.UnityEventTools.AddPersistentListener(events, methodDelegate);
            Eventadded = true;
        }
    }
}
