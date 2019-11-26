using System.Collections;
using System.Collections.Generic;
using UnityEngine;

//[CreateAssetMenu(fileName = "Data", menuName = "ScriptableObjects/levelLoadInfoScriptableObject", order = 1)]
public class levelLoadInfo : MonoBehaviour
{
    public List<List<SkinnedMeshRenderer>> knightMeshes = new List<List<SkinnedMeshRenderer>>();
    public List<int> meshSelected;
    public List<string> joystickCharInputs;
    public List<GameObject> KnightSwords = new List<GameObject>();
    public List<GameObject> KnightShields = new List<GameObject>();

    public MatchGameplay.Gamemode gamemode = MatchGameplay.Gamemode.Timer;
    public int rounds = 3;
    public int playerLives = 1;
    public float RoundLength = 60;

    private bool Loaded = false;

    private void Start()
    {
        if (!Loaded)
        {
            int i = 1;

            while (true)
            {
                GameObject tmpSword;
                tmpSword = Resources.Load("Prefabs/p_Sword_" + i + "_Spawn") as GameObject;
                if (tmpSword == null)
                {
                    tmpSword = Resources.Load("Prefabs/p_Sword_" + "1" + "_Spawn") as GameObject;
                    break;
                }

                KnightSwords.Add(tmpSword);
                i++;
            }
            i = 1;
            while (true)
            {
                GameObject tmpShield;
                tmpShield = Resources.Load("Prefabs/p_Shield_" + i + "_Spawn") as GameObject;
                if (tmpShield == null)
                {
                    tmpShield = Resources.Load("Prefabs/p_Shield_" + "1" + "_Spawn") as GameObject;
                    break;
                }

                KnightShields.Add(tmpShield);
                i++;
            }
        }
    }

    public void ManualLoad()
    {
        int i = 1;
        Loaded = true;
        while (true)
        {
            GameObject tmpSword;
            tmpSword = Resources.Load("Prefabs/p_Sword_" + i + "_Spawn") as GameObject;
            if (tmpSword == null)
            {
                tmpSword = Resources.Load("Prefabs/p_Sword_" + "1" + "_Spawn") as GameObject;
                break;
            }

            KnightSwords.Add(tmpSword);
            i++;
        }
        i = 1;
        while (true)
        {
            GameObject tmpShield;
            tmpShield = Resources.Load("Prefabs/p_Shield_" + i + "_Spawn") as GameObject;
            if (tmpShield == null)
            {
                tmpShield = Resources.Load("Prefabs/p_Shield_" + "1" + "_Spawn") as GameObject;
                break;
            }

            KnightShields.Add(tmpShield);
            i++;
        }
    }
}
