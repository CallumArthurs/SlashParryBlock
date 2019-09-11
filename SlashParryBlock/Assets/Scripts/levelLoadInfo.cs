using System.Collections;
using System.Collections.Generic;
using UnityEngine;

//[CreateAssetMenu(fileName = "Data", menuName = "ScriptableObjects/levelLoadInfoScriptableObject", order = 1)]
public class levelLoadInfo : MonoBehaviour
{
    public List<List<SkinnedMeshRenderer>> knightMeshes = new List<List<SkinnedMeshRenderer>>();
    public List<int> meshSelected;
    public List<string> joystickCharInputs;
}
