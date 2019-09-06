using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class CharacterSelect : MonoBehaviour
{
    public List<GameObject> KnightMeshes;
    List<string> joystickCharInputs = new List<string>();
    int ReadyplayerCount = 0;
    int[] ControllerOrder = new int[4];
    bool[] ConSelected =  new bool[4] { false, false, false, false };
    bool[] playersReady = new bool[4] { false, false, false, false };
    bool[] RBAxisUsed = new bool[4] { false, false, false, false };
    bool[] LBAxisUsed = new bool[4] { false, false, false, false };

    int[] MeshSelected = new int[4] { 0, 0, 0, 0 };
    void Start()
    {

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

        if (joystickCharInputs.Count > 0)
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
                    playersReady[i] = true;
                }

                if (joystickCharInputs.Count > 0)
                {
                    if (playersReady[i] == true)
                    {
                        ReadyplayerCount++;
                    }

                    if (ReadyplayerCount == joystickCharInputs.Count)
                    {
                        Debug.Log("Playing the game");
                        levelLoadInfo levelData = (Instantiate(Resources.Load("Prefabs/leveldata")) as GameObject).GetComponent<levelLoadInfo>();

                        levelData.joystickCharInputs = joystickCharInputs;
                        for (int j = 0; j < joystickCharInputs.Count; j++)
                        {
                            levelData.knightMeshes.Add(KnightMeshes[i].GetComponent<MeshSelector>().myMeshes);
                        }

                        DontDestroyOnLoad(levelData);

                        SceneManager.LoadScene(1);
                    }
                }

                if (Input.GetKeyDown(KeyCode.Space))
                {
                    Debug.Log("Playing the game");
                    //levelLoadInfo levelData = (levelLoadInfo)levelLoadInfo.CreateInstance("levelLoadInfo");
                    GameObject levelData = (Instantiate(Resources.Load("Prefabs/levelData")) as GameObject);
                    levelData.GetComponent<levelLoadInfo>().joystickCharInputs = joystickCharInputs;
                    levelData.GetComponent<levelLoadInfo>().MeshSelected = MeshSelected[i];
                    for (int j = 0; j < joystickCharInputs.Count; j++)
                    {
                        levelData.GetComponent<levelLoadInfo>().knightMeshes.Add(KnightMeshes[i].GetComponent<MeshSelector>().myMeshes);
                    }

                    DontDestroyOnLoad(levelData);

                    SceneManager.LoadScene(1);
                }
            }            
        }
    }
}
