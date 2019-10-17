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
        Camelot,
        CrystalCrevasse,
        Rings,
        JoustingField,
        BattleMents,
        Holeyheavens,
        LousyLogs,
        SpikyHill,
        CrystalCrevasse_LEVEL
    }

    public List<GameObject> KnightMeshes;
    List<string> joystickCharInputs = new List<string>();
    private int ReadyplayerCount = 0;
    private int gameplayChoice = 0;
    private int[] ControllerOrder = new int[4];
    private bool[] ConSelected = new bool[4] { false, false, false, false };
    private bool[] playersReady = new bool[4] { false, false, false, false };
    private bool[] DPadAxisUsed = new bool[4] { false, false, false, false };
    private bool[] ReservedMeshes = new bool[4] {false, false, false, false};
    int levelSelected = 1;

    int[] MeshSelected = new int[4] { 0, 0, 0, 0 };

    public GameObject mainMenu, characterSelect, levelSelect, gameplaySelect;
    public GameObject PlayerLivesLabels;
    public Image Arrow;
    public Text GamemodeSelect, RoundsSelect, RoundLengthSelect, PlayerLivesSelect;
    public List<Text> menuOptions;
    public Animator bookanimator;
    public Text levelText;

    private GameObject levelData;
    private SceneSelector Scenechanger;
    private int MenuOption = 0;
    private bool LoadingScene = false, setupPlayerData = false, gameSetup = false;
    private delegate void pageStartFunctions();
    private delegate void MenuControls();

    pageStartFunctions startFunctions;
    MenuControls ControlHandler;
    void Start()
    {
        levelData = (Instantiate(Resources.Load("Prefabs/levelData")) as GameObject);
        Scenechanger = SceneSelector.CreateInstance("SceneSelector") as SceneSelector;
        mainMenu.SetActive(true);
        //characterSelect.SetActive(true);
        ControlHandler = CharacterSelectControls;
        Arrow.gameObject.SetActive(true);
        Arrow.transform.position = new Vector3(menuOptions[0].transform.position.x + 10.0f, menuOptions[0].transform.position.y, menuOptions[0].transform.position.z);
        levelText.text = ((levels)1).ToString();
    }

    void Update()
    {
        if (gameSetup)
        {
            for (int i = 0; i < 4; i++)
            {
                if (!ConSelected[i])
                {
                    if (Input.GetButtonDown("StartButtonP" + (i + 1)))
                    {
                        ConSelected[i] = true;
                        joystickCharInputs.Add("P" + (i + 1));
                        KnightMeshes[joystickCharInputs.Count - 1].gameObject.SetActive(true);
                    }

                    if (Input.GetButtonDown("B_ButtonP" + (i + 1)))
                    {
                        gameSetup = false;
                        mainMenu.SetActive(true);
                        Arrow.gameObject.SetActive(true);
                        characterSelect.SetActive(false);
                        bookanimator.SetTrigger("PageTurnLeft");
                    }
                }

            }
            ControlHandler();
        }
        else
        {
            for (int i = 0; i < 4; i++)
            {
                if (Input.GetButtonDown("StartButtonP" + (i + 1)))
                {
                    bookanimator.SetTrigger("BookOpen");
                }

                if (Input.GetAxis("D-PadYP" + (i + 1)) > 0.0f && !DPadAxisUsed[i])
                {
                    MenuOption++;
                    if (MenuOption > 2)
                    {
                        MenuOption = 2;
                    }
                    DPadAxisUsed[i] = true;
                    Arrow.transform.position = new Vector3(menuOptions[MenuOption].transform.position.x + 10.0f, menuOptions[MenuOption].transform.position.y, menuOptions[MenuOption].transform.position.z);
                }
                else if (Input.GetAxis("D-PadYP" + (i + 1)) < 0.0f && !DPadAxisUsed[i])
                {
                    MenuOption--;
                    if (MenuOption < 0)
                    {
                        MenuOption = 0;
                    }
                    DPadAxisUsed[i] = true;
                    Arrow.transform.position = new Vector3(menuOptions[MenuOption].transform.position.x + 10.0f, menuOptions[MenuOption].transform.position.y, menuOptions[MenuOption].transform.position.z);
                }

                if (Input.GetAxis("D-PadYP" + (i + 1)) == 0.0f)
                {
                    DPadAxisUsed[i] = false;
                }

                if (Input.GetButtonDown("A_ButtonP" + (i + 1)))
                {
                    switch (MenuOption)
                    {
                        case 0:
                            //wait to run function here
                            startFunctions = OpenCharacterSelect;
                            StartCoroutine(WaitAndRunMethod(0.55f, startFunctions));
                            gameSetup = true;
                            bookanimator.SetTrigger("PageTurnRight");
                            break;
                        case 1:
                            Debug.Log("Options");
                            break;
                        case 2:
                            Application.Quit();
                            break;
                        default:
                            break;
                    }
                }
            }
        }

        if (LoadingScene)
        {
            DontDestroyOnLoad(levelData);
            Scenechanger.SceneLoader(levelSelected);
        }
    }

    void CharacterSelectControls()
    {
        if (joystickCharInputs.Count > 0)
        {
            //count = how many objects there are so if 1 connected, i will only go up to 0
            for (int i = 0; i < joystickCharInputs.Count; i++)
            {
                //Cycles through the connected controllers
                if (Input.GetButtonDown("R_Bumper" + joystickCharInputs[i]) && !playersReady[i])
                {
                    //sets true now that they have
                    MeshSelected[i]++;
                    if (MeshSelected[i] > 3)
                    {
                        MeshSelected[i] = 0;
                    }
                    if (ReservedMeshes[MeshSelected[i]])
                    {
                        bool MeshFound = false;
                        while (!MeshFound)
                        {
                            if (ReservedMeshes[MeshSelected[i]])
                            {
                                MeshSelected[i]++;
                                if (MeshSelected[i] > 3)
                                {
                                    MeshSelected[i] = 0;
                                }
                            }
                            else
                            {
                                MeshFound = true;
                            }
                        }
                    }
                    MeshSelected[i] = KnightMeshes[i].GetComponent<MeshSelector>().LoadMesh(MeshSelected[i]);
                }
                else if (Input.GetButtonDown("L_Bumper" + joystickCharInputs[i]) && !playersReady[i])
                {
                    MeshSelected[i]--;
                    if (MeshSelected[i] < 0)
                    {
                        MeshSelected[i] = 3;
                    }
                    if (ReservedMeshes[MeshSelected[i]])
                    {
                        bool MeshFound = false;
                        while (!MeshFound)
                        {
                            if (ReservedMeshes[MeshSelected[i]])
                            {
                                MeshSelected[i]--;
                                if (MeshSelected[i] < 0)
                                {
                                    MeshSelected[i] = 3;
                                }
                            }
                            else
                            {
                                MeshFound = true;
                            }
                        }
                    }
                    MeshSelected[i] = KnightMeshes[i].GetComponent<MeshSelector>().LoadMesh(MeshSelected[i]);
                }

                if (Input.GetButtonDown("A_Button" + joystickCharInputs[i]))
                {
                    if (!playersReady[i])
                    {
                        for (int j = 0; j < MeshSelected.Length; j++)
                        {
                            if (MeshSelected[j] == MeshSelected[i] && j != i)
                            {
                                MeshSelected[j]--;
                                if (MeshSelected[j] < 0)
                                {
                                    MeshSelected[j] = 3;
                                }
                                bool MeshFound = false;
                                while (!MeshFound)
                                {
                                    if (ReservedMeshes[MeshSelected[j]])
                                    {
                                        MeshSelected[j]--;
                                        if (MeshSelected[j] < 0)
                                        {
                                            MeshSelected[j] = 3;
                                        }
                                    }
                                    else
                                    {
                                        MeshFound = true;
                                    }
                                }
                                //MeshSelected[j]++;
                                MeshSelected[j] = KnightMeshes[j].GetComponent<MeshSelector>().LoadMesh(MeshSelected[j]);
                            }
                        }
                        ReservedMeshes[MeshSelected[i]] = true;
                        //KnightMeshes[i].GetComponent<MeshSelector>().ReserveMesh(MeshSelected[i]);
                        ReadyplayerCount++;
                        playersReady[i] = true;
                    }
                    else if (playersReady[i])
                    {
                        //KnightMeshes[i].GetComponent<MeshSelector>().UnReserveMesh(MeshSelected[i]);
                        ReservedMeshes[MeshSelected[i]] = false;
                        ReadyplayerCount--;
                        playersReady[i] = false;
                    }
                }

                if (Input.GetButtonDown("B_Button" + joystickCharInputs[i]))
                {
                    gameSetup = false;
                    characterSelect.SetActive(false);
                    mainMenu.SetActive(true);
                    Arrow.gameObject.SetActive(true);
                    bookanimator.SetTrigger("PageTurnLeft");
                }

                if (joystickCharInputs.Count > 1)
                {
                    if (ReadyplayerCount == joystickCharInputs.Count && !setupPlayerData)
                    {
                        setupPlayerData = true;
                        //GameObject levelData = (Instantiate(Resources.Load("Prefabs/levelData")) as GameObject);
                        levelData.GetComponent<levelLoadInfo>().joystickCharInputs = joystickCharInputs;
                        for (int j = 0; j < joystickCharInputs.Count; j++)
                        {
                            levelData.GetComponent<levelLoadInfo>().meshSelected.Insert(levelData.GetComponent<levelLoadInfo>().meshSelected.Count, MeshSelected[j]);
                        }
                        startFunctions = OpenLevelSelect;
                        StartCoroutine(WaitAndRunMethod(0.5f, startFunctions));
                        bookanimator.SetTrigger("PageTurnRight");
                    }
                }

                //Dev controls
                if (Input.GetKeyDown(KeyCode.Space) && !setupPlayerData)
                {
                    setupPlayerData = true;
                    levelData.GetComponent<levelLoadInfo>().joystickCharInputs = joystickCharInputs;
                    for (int j = 0; j < joystickCharInputs.Count; j++)
                    {
                        levelData.GetComponent<levelLoadInfo>().meshSelected.Insert(levelData.GetComponent<levelLoadInfo>().meshSelected.Count, MeshSelected[j]);
                    }
                    startFunctions = OpenLevelSelect;
                    StartCoroutine(WaitAndRunMethod(0.5f, startFunctions));
                    bookanimator.SetTrigger("PageTurnRight");
                }
            }
        }
    }

    void OpenCharacterSelect()
    {
        for (int j = 0; j < playersReady.Length; j++)
        {
            playersReady[j] = false;
            ReservedMeshes[j] = false;
        }
        ReadyplayerCount = 0;
        ControlHandler = CharacterSelectControls;
        levelData.GetComponent<levelLoadInfo>().meshSelected.Clear();
        setupPlayerData = false;

        levelSelect.SetActive(false);
        mainMenu.SetActive(false);
        characterSelect.SetActive(true);
        Arrow.gameObject.SetActive(false);
    }

    void LevelSelectControls()
    {


        for (int i = 0; i < joystickCharInputs.Count; i++)
        {
            if (Input.GetAxis("D-PadX" + joystickCharInputs[i]) < 0.0f && !DPadAxisUsed[i])
            {
                DPadAxisUsed[i] = true;
                levelSelected++;
                if (levelSelected > 10)
                {
                    levelSelected = 10;
                }

                levelText.text = ((levels)levelSelected).ToString();
            }
            else if (Input.GetAxis("D-PadX" + joystickCharInputs[i]) > 0.0f && !DPadAxisUsed[i])
            {
                DPadAxisUsed[i] = true;
                levelSelected--;
                if (levelSelected < 1)
                {
                    levelSelected = 1;
                }

                levelText.text = ((levels)levelSelected).ToString();
            }
            if (Input.GetAxis("D-PadX" + joystickCharInputs[i]) == 0.0f)
            {
                DPadAxisUsed[i] = false;
            }

            if (Input.GetButtonDown("A_Button" + joystickCharInputs[i]))
            {
                ControlHandler = GameplaySelectControls;
                levelSelect.SetActive(false);
                gameplaySelect.SetActive(true);
                bookanimator.SetTrigger("PageTurnRight");
                Arrow.gameObject.SetActive(true);
                //StartCoroutine(Scenechanger.LoadSceneAsync(levelSelected));
            }
            if (Input.GetButtonDown("B_Button" + joystickCharInputs[i]))
            {
                startFunctions = OpenCharacterSelect;
                StartCoroutine(WaitAndRunMethod(0.5f, startFunctions));
                bookanimator.SetTrigger("PageTurnLeft");
            }
        }
    }

    void OpenLevelSelect()
    {
        ControlHandler = LevelSelectControls;
        characterSelect.SetActive(false);
        gameplaySelect.SetActive(false);
        levelSelect.SetActive(true);
        Arrow.gameObject.SetActive(false);
    }

    void GameplaySelectControls()
    {
        for (int i = 0; i < joystickCharInputs.Count; i++)
        {
            if (Input.GetAxis("D-PadY" + joystickCharInputs[i]) < 0.0f && !DPadAxisUsed[i])
            {
                gameplayChoice--;

                if(gameplayChoice < 0)
                {
                    gameplayChoice = 0;
                }
                DPadAxisUsed[i] = true;
            }
            
            if (Input.GetAxis("D-PadY" + joystickCharInputs[i]) > 0.0f && !DPadAxisUsed[i])
            {
                gameplayChoice++;

                if (gameplayChoice > 3)
                {
                    gameplayChoice = 3;
                }
                DPadAxisUsed[i] = true;
            }

            if (Input.GetAxis("D-PadY" + joystickCharInputs[i]) == 0.0f)
            {
                DPadAxisUsed[i] = false;
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

                    if (levelData.GetComponent<levelLoadInfo>().gamemode == MatchGameplay.Gamemode.Stock)
                    {
                        PlayerLivesLabels.SetActive(true);
                    }
                    else
                    {
                        PlayerLivesLabels.SetActive(false);
                    }
                    Arrow.transform.position = new Vector3(menuOptions[MenuOption].transform.position.x + 10.0f, GamemodeSelect.transform.position.y, GamemodeSelect.transform.position.z);
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
                    Arrow.transform.position = new Vector3(menuOptions[MenuOption].transform.position.x + 10.0f, RoundsSelect.transform.position.y, RoundsSelect.transform.position.z);
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
                    Arrow.transform.position = new Vector3(menuOptions[MenuOption].transform.position.x + 10.0f, RoundLengthSelect.transform.position.y, RoundLengthSelect.transform.position.z);
                    break;
                #endregion

                #region PlayerLives
                case 3:
                    if (levelData.GetComponent<levelLoadInfo>().gamemode == MatchGameplay.Gamemode.Stock)
                    {
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
                        Arrow.transform.position = new Vector3(menuOptions[MenuOption].transform.position.x + 10.0f, PlayerLivesSelect.transform.position.y, PlayerLivesSelect.transform.position.z);
                    }
                    else
                    {
                        gameplayChoice = 2;
                    }
                    break;
                #endregion

                default:
                    break;
            }

            if (Input.GetButtonDown("A_Button" + joystickCharInputs[i]))
            {
                LoadingScene = true;
            }

            if (Input.GetButtonDown("B_Button" + joystickCharInputs[i]))
            {
                startFunctions = OpenLevelSelect;
                StartCoroutine(WaitAndRunMethod(0.5f, startFunctions));
                bookanimator.SetTrigger("PageTurnLeft");
            }

            GamemodeSelect.text = levelData.GetComponent<levelLoadInfo>().gamemode.ToString();
            RoundsSelect.text = levelData.GetComponent<levelLoadInfo>().rounds.ToString();
            RoundLengthSelect.text = levelData.GetComponent<levelLoadInfo>().RoundLength.ToString();
            PlayerLivesSelect.text = levelData.GetComponent<levelLoadInfo>().playerLives.ToString();
        }
    }

    IEnumerator WaitAndRunMethod(float time, pageStartFunctions function)
    {
        yield return new WaitForSeconds(time);
        function();
    }
}
