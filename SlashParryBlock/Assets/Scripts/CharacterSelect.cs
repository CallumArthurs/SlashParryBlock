using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class CharacterSelect : MonoBehaviour
{
    enum levels
    {
        ProtoScene = 1,
        BattleMents,
        Camelot,
        CrystalCrevasse,
        Holeyheavens,
        LousyLogs,
        Rings,
        SpikyHill
    }

    public List<GameObject> KnightMeshes;
    List<string> joystickCharInputs = new List<string>();
    int ReadyplayerCount = 0;
    int[] ControllerOrder = new int[4];
    bool[] ConSelected =  new bool[4] { false, false, false, false };
    bool[] playersReady = new bool[4] { false, false, false, false };
    bool[] RBAxisUsed = new bool[4] { false, false, false, false };
    bool[] LBAxisUsed = new bool[4] { false, false, false, false };

    bool selectingLevel = false;
    int levelSelected = 0;

    int[] MeshSelected = new int[4] { 0, 0, 0, 0 };

    public GameObject characterSelect;
    public GameObject levelSelect;

    public Text levelText;
    void Start()
    {
        characterSelect.SetActive(true);
    }

    void Update()
    {
        for (int i = 0; i < 4; i++)
        {
            if (!ConSelected[i])
            {
                if (Input.GetAxis("StartButtonP" + (i + 1)) > 0.0f)
                {
                    ConSelected[i] = true;
                    joystickCharInputs.Add("P" + (i + 1));

                    KnightMeshes[joystickCharInputs.Count - 1].gameObject.SetActive(true);
                }
            }
        }

        if (joystickCharInputs.Count > 0 && !selectingLevel)
        {
            //count = how many objects there are so if 1 connected, i will only go up to 0
            for (int i = 0; i < joystickCharInputs.Count; i++)
            {
                //Cycles through the connected controllers
                if (Input.GetAxis("R_Bumper" + joystickCharInputs[i]) > 0.0f && !RBAxisUsed[i])
                {
                    //sets true now that they have
                    RBAxisUsed[i] = true;
                    MeshSelected[i]++;
                    MeshSelected[i] = KnightMeshes[i].GetComponent<MeshSelector>().LoadMesh(MeshSelected[i]);

                }
                else if (Input.GetAxis("L_Bumper" + joystickCharInputs[i]) > 0.0f && !LBAxisUsed[i])
                {
                    LBAxisUsed[i] = true;
                    MeshSelected[i]--;
                    MeshSelected[i] = KnightMeshes[i].GetComponent<MeshSelector>().LoadMesh(MeshSelected[i]);
                }

                if (Input.GetAxis("R_Bumper" + joystickCharInputs[i]) == 0.0f)
                {
                    RBAxisUsed[i] = false;
                }
                if (Input.GetAxis("L_Bumper" + joystickCharInputs[i]) == 0.0f)
                {
                    LBAxisUsed[i] = false;
                }

                if (Input.GetAxis("A_Button" + joystickCharInputs[i]) != 0.0f)
                {
                    if (!playersReady[i])
                    {
                        ReadyplayerCount++;
                        playersReady[i] = true;
                    }
                }

                if (joystickCharInputs.Count > 1)
                {
                    if (ReadyplayerCount == joystickCharInputs.Count)
                    {
                        GameObject levelData = (Instantiate(Resources.Load("Prefabs/levelData")) as GameObject);
                        levelData.GetComponent<levelLoadInfo>().joystickCharInputs = joystickCharInputs;
                        for (int j = 0; j < joystickCharInputs.Count; j++)
                        {
                            levelData.GetComponent<levelLoadInfo>().meshSelected.Insert(levelData.GetComponent<levelLoadInfo>().meshSelected.Count, MeshSelected[j]);
                        }

                        DontDestroyOnLoad(levelData);
                        characterSelect.SetActive(false);
                        levelSelect.SetActive(true);
                        selectingLevel = true;
                    }
                }

                //Dev controls
                if (Input.GetKeyDown(KeyCode.Space))
                {
                    GameObject levelData = (Instantiate(Resources.Load("Prefabs/levelData")) as GameObject);
                    levelData.GetComponent<levelLoadInfo>().joystickCharInputs = joystickCharInputs;
                    for (int j = 0; j < joystickCharInputs.Count; j++)
                    {
                        levelData.GetComponent<levelLoadInfo>().meshSelected.Insert(levelData.GetComponent<levelLoadInfo>().meshSelected.Count, MeshSelected[j]);
                    }

                    DontDestroyOnLoad(levelData);
                    characterSelect.SetActive(false);
                    levelSelect.SetActive(true);
                    selectingLevel = true;
                }
            }            
        }
        else if (joystickCharInputs.Count > 0 && selectingLevel)
        {
            for (int i = 0; i < joystickCharInputs.Count; i++)
            {
                if (Input.GetAxis("D-PadX" + joystickCharInputs[i]) < 0.0f && !RBAxisUsed[i])
                {
                    RBAxisUsed[i] = true;
                    levelSelected++;
                    levelText.text = ((levels)levelSelected).ToString();
                }
                else if (Input.GetAxis("D-PadX" + joystickCharInputs[i]) > 0.0f && !RBAxisUsed[i])
                {
                    RBAxisUsed[i] = true;
                    levelSelected--;
                    if (levelSelected < 1)
                    {
                        levelSelected = 1;
                    }
                    levelText.text = ((levels)levelSelected).ToString();
                }
                if (Input.GetAxis("D-PadX" + joystickCharInputs[i]) == 0.0f)
                {
                    RBAxisUsed[i] = false;
                }

                if (Input.GetKeyDown(KeyCode.Space))
                {
                    SceneManager.LoadScene(levelSelected);
                }
            }
        }
    }
}
