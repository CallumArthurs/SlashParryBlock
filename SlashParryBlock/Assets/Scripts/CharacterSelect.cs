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
    private int ReadyplayerCount = 0;
    private int gameplayChoice = 0;
    private int[] ControllerOrder = new int[4];
    private bool[] ConSelected =  new bool[4] { false, false, false, false };
    private bool[] playersReady = new bool[4] { false, false, false, false };
    private bool[] RBAxisUsed = new bool[4] { false, false, false, false };
    private bool[] LBAxisUsed = new bool[4] { false, false, false, false };

    bool selectingLevel = false;
    int levelSelected = 1;

    int[] MeshSelected = new int[4] { 0, 0, 0, 0 };

    public GameObject characterSelect, levelSelect, gameplaySelect;
    public Image Arrow;
    public Text GamemodeSelect, RoundsSelect, RoundLengthSelect, PlayerLivesSelect;
    private GameObject levelData;
    private SceneSelector Scenechanger;
    public Text levelText;
    private bool LoadingScene = false;
    private delegate void MenuControls();

    MenuControls ControlHandler;
    void Start()
    {
        levelData = (Instantiate(Resources.Load("Prefabs/levelData")) as GameObject);
        Scenechanger = SceneSelector.CreateInstance("SceneSelector") as SceneSelector;
        characterSelect.SetActive(true);
        ControlHandler = CharacterSelectControls;

        levelText.text = ((levels)1).ToString();
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

        ControlHandler();

        if (LoadingScene)
        {
            DontDestroyOnLoad(levelData);
            Scenechanger.SceneLoader(levelSelected);
        }
    }

    void CharacterSelectControls()
    {
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
                        //GameObject levelData = (Instantiate(Resources.Load("Prefabs/levelData")) as GameObject);
                        levelData.GetComponent<levelLoadInfo>().joystickCharInputs = joystickCharInputs;
                        for (int j = 0; j < joystickCharInputs.Count; j++)
                        {
                            levelData.GetComponent<levelLoadInfo>().meshSelected.Insert(levelData.GetComponent<levelLoadInfo>().meshSelected.Count, MeshSelected[j]);
                        }
                        ControlHandler = LevelSelectControls;
                        characterSelect.SetActive(false);
                        levelSelect.SetActive(true);
                        selectingLevel = true;
                    }
                }

                //Dev controls
                if (Input.GetKeyDown(KeyCode.Space))
                {
                    levelData.GetComponent<levelLoadInfo>().joystickCharInputs = joystickCharInputs;
                    for (int j = 0; j < joystickCharInputs.Count; j++)
                    {
                        levelData.GetComponent<levelLoadInfo>().meshSelected.Insert(levelData.GetComponent<levelLoadInfo>().meshSelected.Count, MeshSelected[j]);
                    }
                    ControlHandler = LevelSelectControls;
                    characterSelect.SetActive(false);
                    levelSelect.SetActive(true);
                    selectingLevel = true;
                }
            }
        }
    }
    void LevelSelectControls()
    {
        for (int i = 0; i < joystickCharInputs.Count; i++)
        {
            if (Input.GetAxis("D-PadX" + joystickCharInputs[i]) < 0.0f && !RBAxisUsed[i])
            {
                RBAxisUsed[i] = true;
                levelSelected++;
                if (levelSelected > 8)
                {
                    levelSelected = 8;
                }

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

            if (Input.GetKeyDown(KeyCode.Space) && !LoadingScene)
            {
                ControlHandler = GameplaySelectControls;
                levelSelect.SetActive(false);
                gameplaySelect.SetActive(true);
                //StartCoroutine(Scenechanger.LoadSceneAsync(levelSelected));
            }
        }
    }
    void GameplaySelectControls()
    {
        for (int i = 0; i < joystickCharInputs.Count; i++)
        {
            if (Input.GetAxis("D-PadY" + joystickCharInputs[i]) < 0.0f && !RBAxisUsed[i])
            {
                gameplayChoice--;

                if(gameplayChoice < 0)
                {
                    gameplayChoice = 0;
                }
                RBAxisUsed[i] = true;
            }
            
            if (Input.GetAxis("D-PadY" + joystickCharInputs[i]) > 0.0f && !RBAxisUsed[i])
            {
                gameplayChoice++;

                if (gameplayChoice > 3)
                {
                    gameplayChoice = 3;
                }
                RBAxisUsed[i] = true;
            }

            if (Input.GetAxis("D-PadY" + joystickCharInputs[i]) == 0.0f)
            {
                RBAxisUsed[i] = false;
            }

            switch (gameplayChoice)
                {
                #region GameMode
                case 0:
                    if (Input.GetAxis("D-PadX" + joystickCharInputs[i]) < 0.0f)
                    {
                        levelData.GetComponent<levelLoadInfo>().gamemode++;
                        if ((int)levelData.GetComponent<levelLoadInfo>().gamemode > 2)
                        {
                            levelData.GetComponent<levelLoadInfo>().gamemode = (MatchGameplay.Gamemode)2;
                        }
                    }
                    else if(Input.GetAxis("D-PadX" + joystickCharInputs[i]) > 0.0f)
                    {
                        levelData.GetComponent<levelLoadInfo>().gamemode--;
                        if ((int)levelData.GetComponent<levelLoadInfo>().gamemode < 1)
                        {
                            levelData.GetComponent<levelLoadInfo>().gamemode = (MatchGameplay.Gamemode)1;
                        }
                    }
                    Arrow.transform.position = new Vector3(Arrow.transform.position.x, GamemodeSelect.transform.position.y, Arrow.transform.position.z);
                    break;
                #endregion

                #region NumOfRounds
                case 1:
                    if (Input.GetAxis("D-PadX" + joystickCharInputs[i]) < 0.0f)
                    {
                        levelData.GetComponent<levelLoadInfo>().rounds++;
                    }
                    else if (Input.GetAxis("D-PadX" + joystickCharInputs[i]) > 0.0f)
                    {
                        levelData.GetComponent<levelLoadInfo>().rounds--;
                        if (levelData.GetComponent<levelLoadInfo>().rounds < 1)
                        {
                            levelData.GetComponent<levelLoadInfo>().rounds = 1;
                        }
                    }
                    Arrow.transform.position = new Vector3(Arrow.transform.position.x, RoundsSelect.transform.position.y, Arrow.transform.position.z);
                    break;
                #endregion

                #region RoundLength
                case 2:
                    if (Input.GetAxis("D-PadX" + joystickCharInputs[i]) < 0.0f)
                    {
                        levelData.GetComponent<levelLoadInfo>().RoundLength++;
                    }
                    else if (Input.GetAxis("D-PadX" + joystickCharInputs[i]) > 0.0f)
                    {
                        levelData.GetComponent<levelLoadInfo>().RoundLength--;
                        if (levelData.GetComponent<levelLoadInfo>().RoundLength < 15)
                        {
                            levelData.GetComponent<levelLoadInfo>().RoundLength = 15;
                        }
                    }
                    Arrow.transform.position = new Vector3(Arrow.transform.position.x, RoundLengthSelect.transform.position.y, Arrow.transform.position.z);
                    break;
                #endregion

                #region PlayerLives
                case 3:
                    if (Input.GetAxis("D-PadX" + joystickCharInputs[i]) < 0.0f)
                    {
                        levelData.GetComponent<levelLoadInfo>().playerLives++;
                    }
                    else if (Input.GetAxis("D-PadX" + joystickCharInputs[i]) > 0.0f)
                    {
                        levelData.GetComponent<levelLoadInfo>().playerLives--;
                        if (levelData.GetComponent<levelLoadInfo>().playerLives < 3)
                        {
                            levelData.GetComponent<levelLoadInfo>().playerLives = 3;
                        }
                    }
                    Arrow.transform.position = new Vector3(Arrow.transform.position.x, PlayerLivesSelect.transform.position.y, Arrow.transform.position.z);
                    break;
                #endregion

                default:
                    break;
            }

            if (Input.GetKeyDown(KeyCode.Space))
            {
                LoadingScene = true;
            }

            GamemodeSelect.text = levelData.GetComponent<levelLoadInfo>().gamemode.ToString();
            RoundsSelect.text = levelData.GetComponent<levelLoadInfo>().rounds.ToString();
            RoundLengthSelect.text = levelData.GetComponent<levelLoadInfo>().RoundLength.ToString();
            PlayerLivesSelect.text = levelData.GetComponent<levelLoadInfo>().playerLives.ToString();
        }
    }
}
