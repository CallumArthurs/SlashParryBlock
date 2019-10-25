using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class CharacterSelect : MonoBehaviour
{
    public enum levels
    {
        JoustingField = 1,
        CrystalCrevasse,
        RiskyRings,
        Camelot,
        //Holeyheavens,
        //PricklyPit,
        //ProtoScene = 1,
        //CrystalCrevasse,
        //BattleMents,
        //LousyLogs,
    }

    public List<GameObject> KnightMeshes;
    List<string> joystickCharInputs = new List<string>();
    private int ReadyplayerCount = 0;
    private int gameplayChoice = 0;
    private int[] ControllerOrder = new int[4];
    private bool[] ConSelected = new bool[4] { false, false, false, false };
    private bool[] playersReady = new bool[4] { false, false, false, false };
    private bool[] DPadAxisUsed = new bool[4] { false, false, false, false };
    private bool[] DPadXAxisUsed = new bool[4] { false, false, false, false };
    private bool[] ReservedMeshes = new bool[4] { false, false, false, false };
    int levelSelected = 1;

    int[] MeshSelected = new int[4] { 0, 0, 0, 0 };
    bool[] PlayerSelectedMesh = new bool[4] { false, false, false, false };

    public GameObject mainMenu, characterSelect, levelSelect, gameplaySelect;
    public GameObject PlayerLivesLabels;
    public Image Arrow;
    public List<RawImage> PlayerStamps;
    public Image levelStamp;
    public Text GamemodeSelect, RoundsSelect, RoundLengthSelect, PlayerLivesSelect;
    public Text RoundLengthLabel;
    public List<Image> menuOptions;
    public Animator bookanimator;
    public Text levelText;
    public MenuControllerNavigation CharSelectNavigator, LevelSelectNavigator;
    public List<Sprite> SelectedImage;
    public List<Sprite> DeSelectedImage;
    public List<Image> PlayerSelectImages;

    public List<MenuOption> CharSelectMenuOptions;

    private levelLoadInfo levelData;
    private SceneSelector Scenechanger;
    private int MenuOption = 0;
    private bool LoadingScene = false, setupPlayerData = false, gameSetup = false;
    private bool BookOpen = false;
    private delegate void pageStartFunctions();
    private delegate void MenuControls();

    pageStartFunctions startFunctions;
    MenuControls ControlHandler;
    void Start()
    {
        levelData = (Instantiate(Resources.Load("Prefabs/levelData")) as GameObject).GetComponent<levelLoadInfo>();
        Scenechanger = SceneSelector.CreateInstance("SceneSelector") as SceneSelector;
        mainMenu.SetActive(true);
        //characterSelect.SetActive(true);
        ControlHandler = CharacterSelectControls;
        levelText.text = ((levels)1).ToString();
        menuOptions[MenuOption].sprite = SelectedImage[MenuOption];
        mainMenu.SetActive(false);
        for (int i = 0; i < 4; i++)
        {
            PlayerStamps[i].transform.position = CharSelectNavigator.startingOption.transform.position + new Vector3(-4.0f, 5.0f + -4.0f * i);
        }
    }

    void Update()
    {
        if (gameSetup)
        {
            for (int i = 0; i < 4; i++)
            {
                if (!ConSelected[i])
                {
                    if (Input.GetButtonDown("StartButtonP" + (i + 1))/* || Input.GetButtonDown("A_ButtonP" + (i + 1))*/)
                    {
                        ConSelected[i] = true;
                        joystickCharInputs.Add("P" + (i + 1));
                        KnightMeshes[joystickCharInputs.Count - 1].gameObject.SetActive(true);
                        PlayerStamps[joystickCharInputs.Count - 1].gameObject.SetActive(true);
                        PlayerStamps[CharSelectNavigator.iterI].color = new Color(1.0f, 1.0f, 1.0f, 0.75f);
                        CharSelectNavigator.joystickCharInputs = joystickCharInputs;
                    }

                    if (joystickCharInputs.Count == 0 && Input.GetButtonDown("B_ButtonP" + (i + 1)))
                    {
                        MoveToMainMenu();
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
                    BookOpen = true;
                    //Arrow.gameObject.SetActive(true);
                    Arrow.transform.position = new Vector3(menuOptions[MenuOption].transform.position.x + 10.0f, menuOptions[MenuOption].transform.position.y, menuOptions[MenuOption].transform.position.z);
                    mainMenu.SetActive(true);
                }
                #region OldMainMenu
                /*
                if (Input.GetAxis("D-PadYP" + (i + 1)) > 0.0f && !DPadAxisUsed[i])
                {
                    menuOptions[MenuOption].sprite = DeSelectedImage[MenuOption];
                    MenuOption++;
                    if (MenuOption > 2)
                    {
                        MenuOption = 2;
                    }
                    DPadAxisUsed[i] = true;
                    Arrow.transform.position = new Vector3(menuOptions[MenuOption].transform.position.x + 10.0f, menuOptions[MenuOption].transform.position.y, menuOptions[MenuOption].transform.position.z);
                    menuOptions[MenuOption].sprite = SelectedImage[MenuOption];
                }
                else if (Input.GetAxis("D-PadYP" + (i + 1)) < 0.0f && !DPadAxisUsed[i])
                {
                    menuOptions[MenuOption].sprite = DeSelectedImage[MenuOption];
                    MenuOption--;
                    if (MenuOption < 0)
                    {
                        MenuOption = 0;
                    }
                    DPadAxisUsed[i] = true;
                    Arrow.transform.position = new Vector3(menuOptions[MenuOption].transform.position.x + 10.0f, menuOptions[MenuOption].transform.position.y, menuOptions[MenuOption].transform.position.z);
                    menuOptions[MenuOption].sprite = SelectedImage[MenuOption];
                }

                if (Input.GetAxis("D-PadYP" + (i + 1)) == 0.0f)
                {
                    DPadAxisUsed[i] = false;
                }

                if (Input.GetButtonDown("A_ButtonP" + (i + 1)) && BookOpen)
                {
                    switch (MenuOption)
                    {
                        case 0:
                            //wait to run function here
                            break;
                        case 1:
                            break;
                        case 2:
                            break;
                        default:
                            break;
                    }
                }
                */
                #endregion
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
                #region Old CharSelect
                //Cycles through the connected controllers
                /*if (Input.GetButtonDown("R_Bumper" + joystickCharInputs[i]) && !playersReady[i])
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
                        levelData.joystickCharInputs = joystickCharInputs;
                        for (int j = 0; j < joystickCharInputs.Count; j++)
                        {
                            levelData.meshSelected.Insert(levelData.meshSelected.Count, MeshSelected[j]);
                        }
                        startFunctions = OpenLevelSelect;
                        StartCoroutine(WaitAndRunMethod(0.5f, startFunctions));
                        bookanimator.SetTrigger("PageTurnRight");
                    }
                }
                */
                #endregion

                //Dev controls
                if (Input.GetKeyDown(KeyCode.Space) && !setupPlayerData)
                {
                    setupPlayerData = true;
                    levelData.joystickCharInputs = joystickCharInputs;
                    for (int j = 0; j < joystickCharInputs.Count; j++)
                    {
                        levelData.meshSelected.Insert(levelData.meshSelected.Count, MeshSelected[j]);
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
        for (int i = 0; i < 4; i++)
        {
            MeshSelected[i] = KnightMeshes[i].GetComponent<MeshSelector>().LoadMesh(0);
            PlayerStamps[i].color = new Color(1.0f, 1.0f, 1.0f, 0.75f);
            PlayerStamps[i].gameObject.SetActive(false);
        }

        ControlHandler = CharacterSelectControls;
        levelData.meshSelected.Clear();
        setupPlayerData = false;

        levelSelect.SetActive(false);
        mainMenu.SetActive(false);
        characterSelect.SetActive(true);
        Arrow.gameObject.SetActive(false);
        CharSelectNavigator.gameObject.SetActive(true);
    }

    void OpenLevelSelect()
    {
        characterSelect.SetActive(false);
        gameplaySelect.SetActive(false);
        levelSelect.SetActive(true);
        Arrow.gameObject.SetActive(false);
        CharSelectNavigator.gameObject.SetActive(false);
        levelStamp.gameObject.SetActive(true);
        MoveLevelStamp(LevelSelectNavigator.startingOption);
    }

    void GameplaySelectControls()
    {
        for (int i = 0; i < joystickCharInputs.Count; i++)
        {
            if (Input.GetAxis("D-PadY" + joystickCharInputs[i]) < 0.0f && !DPadAxisUsed[i])
            {
                gameplayChoice--;

                if (gameplayChoice == 2 && levelData.gamemode == MatchGameplay.Gamemode.Stock)
                {
                    gameplayChoice = 1;
                }

                if (gameplayChoice < 0)
                {
                    gameplayChoice = 0;
                }
                DPadAxisUsed[i] = true;
            }
            
            if (Input.GetAxis("D-PadY" + joystickCharInputs[i]) > 0.0f && !DPadAxisUsed[i])
            {
                gameplayChoice++;

                if (gameplayChoice == 2 && levelData.gamemode == MatchGameplay.Gamemode.Stock)
                {
                    gameplayChoice = 3;
                }

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
                    if (Input.GetAxis("D-PadX" + joystickCharInputs[i]) < 0.0f && !DPadXAxisUsed[i])
                    {
                        levelData.gamemode++;
                        if ((int)levelData.gamemode > 2)
                        {
                            levelData.gamemode = (MatchGameplay.Gamemode)2;
                        }
                        DPadXAxisUsed[i] = true;
                    }
                    else if(Input.GetAxis("D-PadX" + joystickCharInputs[i]) > 0.0f && !DPadXAxisUsed[i])
                    {
                        levelData.gamemode--;
                        if ((int)levelData.gamemode < 1)
                        {
                            levelData.gamemode = (MatchGameplay.Gamemode)1;
                        }
                        DPadXAxisUsed[i] = true;
                    }

                    if (levelData.gamemode == MatchGameplay.Gamemode.Stock)
                    {
                        RoundLengthSelect.gameObject.SetActive(false);
                        RoundLengthLabel.gameObject.SetActive(false);
                        PlayerLivesLabels.SetActive(true);
                    }
                    else
                    {
                        RoundLengthSelect.gameObject.SetActive(true);
                        RoundLengthLabel.gameObject.SetActive(true);
                        PlayerLivesLabels.SetActive(false);
                    }
                    Arrow.transform.position = new Vector3(menuOptions[MenuOption].transform.position.x + 10.0f, GamemodeSelect.transform.position.y, GamemodeSelect.transform.position.z);
                    break;
                #endregion

                #region NumOfRounds
                case 1:
                    if (Input.GetAxis("D-PadX" + joystickCharInputs[i]) < 0.0f && !DPadXAxisUsed[i])
                    {
                        levelData.rounds++;
                        DPadXAxisUsed[i] = true;
                    }
                    else if (Input.GetAxis("D-PadX" + joystickCharInputs[i]) > 0.0f && !DPadXAxisUsed[i])
                    {
                        levelData.rounds--;
                        if (levelData.rounds < 1)
                        {
                            levelData.rounds = 1;
                        }
                        DPadXAxisUsed[i] = true;
                    }
                    Arrow.transform.position = new Vector3(menuOptions[MenuOption].transform.position.x + 10.0f, RoundsSelect.transform.position.y, RoundsSelect.transform.position.z);
                    break;
                #endregion

                #region RoundLength
                case 2:
                    if (Input.GetAxis("D-PadX" + joystickCharInputs[i]) < 0.0f && !DPadXAxisUsed[i])
                    {
                        levelData.RoundLength += 15.0f;
                        DPadXAxisUsed[i] = true;
                    }
                    else if (Input.GetAxis("D-PadX" + joystickCharInputs[i]) > 0.0f && !DPadXAxisUsed[i])
                    {
                        levelData.RoundLength -= 15.0f;
                        if (levelData.RoundLength < 15)
                        {
                            levelData.RoundLength = 15;
                        }
                        DPadXAxisUsed[i] = true;
                    }
                    Arrow.transform.position = new Vector3(menuOptions[MenuOption].transform.position.x + 10.0f, RoundLengthSelect.transform.position.y, RoundLengthSelect.transform.position.z);
                    break;
                #endregion

                #region PlayerLives
                case 3:
                    if (levelData.gamemode == MatchGameplay.Gamemode.Stock)
                    {
                        if (Input.GetAxis("D-PadX" + joystickCharInputs[i]) < 0.0f && !DPadXAxisUsed[i])
                        {
                            levelData.playerLives++;
                            DPadXAxisUsed[i] = true;
                        }
                        else if (Input.GetAxis("D-PadX" + joystickCharInputs[i]) > 0.0f && !DPadXAxisUsed[i])
                        {
                            levelData.playerLives--;
                            if (levelData.playerLives < 3)
                            {
                                levelData.playerLives = 3;
                            }
                            DPadXAxisUsed[i] = true;
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

            if (Input.GetAxis("D-PadX" + joystickCharInputs[i]) == 0.0f)
            {
                DPadXAxisUsed[i] = false;
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

            GamemodeSelect.text = levelData.gamemode.ToString();
            RoundsSelect.text = levelData.rounds.ToString();
            RoundLengthSelect.text = levelData.RoundLength.ToString();
            PlayerLivesSelect.text = levelData.playerLives.ToString();
        }
    }

    IEnumerator WaitAndRunMethod(float time, pageStartFunctions function)
    {
        yield return new WaitForSeconds(time);
        function();
    }

    public void MoveStamp(MenuOption pos)
    {
        if (!PlayerSelectedMesh[CharSelectNavigator.iterI])
        {
            PlayerStamps[CharSelectNavigator.iterI].transform.position = pos.transform.position + new Vector3(-4.0f, 5.0f + -4.0f * CharSelectNavigator.iterI);
        }
    }
    public void ChangeCharMesh(int character)
    {
        MeshSelected[CharSelectNavigator.iterI] = KnightMeshes[CharSelectNavigator.iterI].GetComponent<MeshSelector>().LoadMesh(character);
    }

    public void MoveToMainMenu()
    {
        for (int i = 0; i < 4; i++)
        {
            PlayerStamps[i].transform.position = CharSelectNavigator.startingOption.transform.position + new Vector3(-4.0f, 5.0f + -4.0f * i);
            KnightMeshes[i].SetActive(false);
            ConSelected[i] = false;
            PlayerStamps[i].gameObject.SetActive(false);
            PlayerSelectImages[i].color = new Color(1.0f, 1.0f, 1.0f, 1.0f);

        }
        startFunctions = null;
        joystickCharInputs.Clear();
        CharSelectNavigator.joystickCharInputs = joystickCharInputs;
        gameSetup = false;
        mainMenu.SetActive(true);
        CharSelectNavigator.gameObject.SetActive(false);
        //Arrow.gameObject.SetActive(true);
        characterSelect.SetActive(false);
        bookanimator.SetTrigger("PageTurnLeft");
    }
    public void highLightMenuOption(int MenuItem)
    {
        menuOptions[MenuOption].sprite = DeSelectedImage[MenuOption];
        MenuOption = MenuItem;
        menuOptions[MenuItem].sprite = SelectedImage[MenuItem];
    }
    public void StartGame()
    {
        startFunctions = OpenCharacterSelect;
        StartCoroutine(WaitAndRunMethod(0.55f, startFunctions));
        gameSetup = true;
        bookanimator.SetTrigger("PageTurnRight");
    }
    public void OptionsMenu()
    {
        Debug.Log("Options");
    }
    public void QuitGame()
    {
        Application.Quit();
    }

    public void SelectCharacter(int Character)
    {
        if (PlayerSelectedMesh[CharSelectNavigator.iterI] || ReservedMeshes[Character])
        {
            return;
        }
        else
        {
            MeshSelected[CharSelectNavigator.iterI] = Character;
            PlayerSelectedMesh[CharSelectNavigator.iterI] = true;
            ReservedMeshes[Character] = true;
            PlayerStamps[CharSelectNavigator.iterI].color = new Color(1.0f, 1.0f, 1.0f, 1.0f);
            //PlayerSelectImages[Character].color = new Color(0.3f, 0.3f, 0.3f, 1.0f);
            CharSelectNavigator.MoveToMenuOption(CharSelectMenuOptions[Character]);
            ReadyplayerCount++;
            MeshSelected[CharSelectNavigator.iterI] = KnightMeshes[CharSelectNavigator.iterI].GetComponent<MeshSelector>().LoadMesh(MeshSelected[CharSelectNavigator.iterI]);
        }
    }
    public void UnSelectCharacter(int Character)
    {
        if (MeshSelected[CharSelectNavigator.iterI] != Character || !PlayerSelectedMesh[CharSelectNavigator.iterI])
        {
            return;
        }
        Debug.Log("Unreserving Mesh");
        MeshSelected[CharSelectNavigator.iterI] = Character;
        PlayerSelectedMesh[CharSelectNavigator.iterI] = false;
        ReservedMeshes[Character] = false;
        PlayerStamps[CharSelectNavigator.iterI].color = new Color(1.0f, 1.0f, 1.0f, 0.75f);
        //PlayerSelectImages[Character].color = new Color(1.0f, 1.0f, 1.0f, 1.0f);
        ReadyplayerCount--;
    }
    public void CheckPlayersAreReady()
    {
        if (ReadyplayerCount >= 2 && ReadyplayerCount == joystickCharInputs.Count && !setupPlayerData )
        {
            setupPlayerData = true;
            //GameObject levelData = (Instantiate(Resources.Load("Prefabs/levelData")) as GameObject);
            levelData.joystickCharInputs = joystickCharInputs;
            for (int j = 0; j < joystickCharInputs.Count; j++)
            {
                levelData.meshSelected.Insert(levelData.meshSelected.Count, MeshSelected[j]);
            }
            startFunctions = OpenLevelSelect;
            StartCoroutine(WaitAndRunMethod(0.5f, startFunctions));
            bookanimator.SetTrigger("PageTurnRight");
            LevelSelectNavigator.joystickCharInputs = joystickCharInputs;
        }
    }

    public void SelectLevel(int level)
    {
        levelSelected = level;
        levelSelect.SetActive(false);
        gameplaySelect.SetActive(true);
        levelStamp.gameObject.SetActive(false);
        bookanimator.SetTrigger("PageTurnRight");
        //Arrow.gameObject.SetActive(true);
        ControlHandler = GameplaySelectControls;
    }
    public void SelectRandomLevel()
    {
        levelSelected = Random.Range(1,5);
        levelSelect.SetActive(false);
        gameplaySelect.SetActive(true);
        bookanimator.SetTrigger("PageTurnRight");
        Arrow.gameObject.SetActive(true);
    }
    public void MoveLevelStamp(MenuOption pos)
    {
        levelStamp.transform.position = pos.transform.position + new Vector3(-2.0f, -1.0f, 0.0f);
    }
    public void MoveToCharacterSelect()
    {
        startFunctions = OpenCharacterSelect;
        StartCoroutine(WaitAndRunMethod(0.5f, startFunctions));
        bookanimator.SetTrigger("PageTurnLeft");
    }
}
