using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;
using UnityEngine.Events;
using UnityEditor.Events;
using UnityEngine.EventSystems;

//[CustomEditor(typeof(MenuOption))]
public class MenuItemCustomInspector : Editor
{
    SerializedProperty leftMenuItem, rightMenuItem, aboveMenuItem, belowMenuItem;
    //SerializedProperty events;
    SerializedProperty eventClass;
    SerializedProperty methodChosen;

    SerializedProperty methodDelegate;
    UnityEvent events;

    void OnEnable()
    {
        leftMenuItem = serializedObject.FindProperty("leftMenuItem");
        rightMenuItem = serializedObject.FindProperty("rightMenuItem");
        aboveMenuItem = serializedObject.FindProperty("aboveMenuItem");
        belowMenuItem = serializedObject.FindProperty("belowMenuItem");

        methodChosen = serializedObject.FindProperty("method");
        methodDelegate = serializedObject.FindProperty("methodDelegate");
        
        //events = serializedObject.FindProperty("events");
    }

    public override void OnInspectorGUI()
    {
        serializedObject.Update();
        //MenuItems
        EditorGUILayout.PropertyField(leftMenuItem, new GUIContent("LeftMenuItem"));
        EditorGUILayout.PropertyField(aboveMenuItem, new GUIContent("AboveMenuItem"));
        EditorGUILayout.PropertyField(rightMenuItem, new GUIContent("RightMenuItem"));
        EditorGUILayout.PropertyField(belowMenuItem, new GUIContent("BelowMenuItem"));
        EditorGUILayout.Space();
        EditorGUILayout.PropertyField(methodChosen, new GUIContent("methodChosen"));
        //EditorGUILayout.PropertyField(methodDelegate, new GUIContent("methodDelegate"));
        //EventSystem
        //EditorGUILayout.PropertyField(events, new GUIContent("events"));
        serializedObject.ApplyModifiedProperties();
    }
}
