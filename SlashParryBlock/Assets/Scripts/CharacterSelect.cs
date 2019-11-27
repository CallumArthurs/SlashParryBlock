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
    private bool[] ReservedMeshes = new bool[6] { false, false, false, false, false, false };
    int levelSelected = 1;

    int[] MeshSelected = new int[4] { 0, 0, 0, 0 };
    bool[] PlayerSelectedMesh = new bool[4] { false, false, false, false };

    public int MaxRounds, MaxRoundLength, MaxPlayerLives;

    public GameObject mainMenu, characterSelect, levelSelect, levelSelectFlavourGroup, gameplaySelect;
    public GameObject PlayerLivesLabels;
    public GameObject CanvasRightPagePos, CanvasLeftPagePos;
    public GameObject MainCanvasRightPagePos, MainCanvasLeftPagePos;
    public GameObject CreditsLeft, CreditsRight;
    public Text levelSelectflavourtext;
    public Image levelSelectPreview;
    public List<string> levelDescriptions;
    public Image Arrow;
    public List<RawImage> PlayerStamps;
    public List<Sprite> levelPreviews;
    public Image levelStamp;
    public Text GamemodeSelect, RoundsSelect, RoundLengthSelect, PlayerLivesSelect;
    public Text RoundLengthLabel;
    public List<Image> menuOptions;
    public Animator bookanimator;
    public Text levelText;
    public MenuControllerNavigation CharSelectNavigator, LevelSelectNavigator, GameplaySelectNavigator;
    public List<Sprite> SelectedImage;
    public List<Sprite> DeSelectedImage;
    public List<Image> PlayerSelectImages;
    public List<GameObject> playerJoinInstructions;
    public AudioClip PageTurn;

    public List<MenuOption> CharSelectMenuOptions;
    public MenuOption RoundLength, PlayerLives;
    public SceneTransitonerScript SceneTransScript;

    private levelLoadInfo levelData;
    private SceneSelector Scenechanger;
    private int MenuOption = 0;
    private bool setupPlayerData = false, gameSetup = false;
    private bool BookOpen = false;
    private delegate void pageStartFunctions();
    private delegate void MenuControls();
    private Vector3 RightPageOriginalPos, LeftPageOriginalPos;

    pageStartFunctions startFunctions;
    MenuControls ControlHandler;
    void Start()
    {
        if (GameObject.FindGameObjectWithTag("SceneTransitioner") != null)
        {
            SceneTransScript = GameObject.FindGameObjectWithTag("SceneTransitioner").GetComponent<SceneTransitonerScript>();
            SceneTransScript.OpenTransition();
        }
        else
        {
            SceneTransScript = (Instantiate(Resources.Load("Prefabs/SceneTransitioner")) as GameObject).GetComponent<SceneTransitonerScript>();
        }
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

        #if UNITY_EDITOR
        Debug.Log("Mouse is free from the screen");
        #else
        Cursor.visible = false;
        Cursor.lockState = CursorLockMode.Locked;
        #endif
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
                        ResetCharStamp(i);
                        ConSelected[i] = true;
                        joystickCharInputs.Add("P" + (i + 1));
                        KnightMeshes[joystickCharInputs.Count - 1].gameObject.SetActive(true);
                        PlayerStamps[joystickCharInputs.Count - 1].gameObject.SetActive(true);
                        playerJoinInstructions[i].SetActive(false);
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
                if (Input.GetButtonDown("StartButtonP" + (i + 1)) && !BookOpen)
                {
                    StartCoroutine(flipOntoRightPage(mainMenu,0.75f));
                    Camera.main.GetComponent<Animator>().SetBool("ZoomIntoBook", true);
                    bookanimator.SetTrigger("BookOpen");
                    BookOpen = true;
                    //Arrow.gameObject.SetActive(true);
                    Arrow.transform.position = new Vector3(menuOptions[MenuOption].transform.position.x + 10.0f, menuOptions[MenuOption].transform.position.y, menuOptions[MenuOption].transform.position.z);
                    mainMenu.SetActive(true);

                    for (int j = 0; j < 4; j++)
                    {
                        KnightMeshes[j].SetActive(true);
                        KnightMeshes[j].GetComponent<MeshSelector>().LoadMesh(0);
                        KnightMeshes[j].SetActive(false);
                    }
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
                    StartCoroutine(WaitAndRunMethod(0.2f, TurnOnLevelSelect));
                    startFunctions = OpenLevelSelect;
                    StartCoroutine(WaitAndRunMethod(0.4f, startFunctions));
                    StartCoroutine(flipOntoRightPage(characterSelect,0.5f));
                    StartCoroutine(flipOntoLeftPage(levelSelect,0.56f));
                    bookanimator.SetTrigger("PageTurnRight");
                }
            }
        }
    }

    void OpenCharacterSelect()
    {
        for (int i = 0; i < 4; i++)
        {
            if (!PlayerSelectedMesh[i])
            {
                MeshSelected[i] = KnightMeshes[i].GetComponent<MeshSelector>().LoadMesh(0);
            }

            PlayerStamps[i].color = new Color(1.0f, 1.0f, 1.0f, 0.75f);
            PlayerStamps[i].gameObject.SetActive(false);
            playerJoinInstructions[i].SetActive(true);
        }

        for (int i = 0; i < joystickCharInputs.Count; i++)
        {
            PlayerStamps[i].gameObject.SetActive(true);
            PlayerStamps[i].color = new Color(1.0f, 1.0f, 1.0f, 1.0f);
            playerJoinInstructions[i].SetActive(false);
        }

        ControlHandler = CharacterSelectControls;
        levelData.meshSelected.Clear();
        setupPlayerData = false;
        levelSelect.SetActive(false);
        levelSelectFlavourGroup.SetActive(false);
        gameplaySelect.SetActive(false);
        mainMenu.SetActive(false);
        Arrow.gameObject.SetActive(false);
    }

    void OpenLevelSelect()
    {
        characterSelect.SetActive(false);
        
        Arrow.gameObject.SetActive(false);
        CharSelectNavigator.gameObject.SetActive(false);
        levelStamp.gameObject.SetActive(true);
        LevelSelectNavigator.enabled = true;
        GameplaySelectNavigator.enabled = false;
        MoveLevelStamp(LevelSelectNavigator.startingOption);

        GamemodeSelect.text = levelData.gamemode.ToString();
        RoundsSelect.text = levelData.rounds.ToString();
        RoundLengthSelect.text = levelData.RoundLength.ToString();
        PlayerLivesSelect.text = levelData.playerLives.ToString();
    }

    void GameplaySelectControls()
    {
        for (int i = 0; i < joystickCharInputs.Count; i++)
        {
#region OldGameplaySelectControls
            //if (Input.GetAxis("D-PadY" + joystickCharInputs[i]) < 0.0f && !DPadAxisUsed[i])
            //{
            //    gameplayChoice--;
            //
            //    if (gameplayChoice == 2 && levelData.gamemode == MatchGameplay.Gamemode.Stock)
            //    {
            //        gameplayChoice = 1;
            //    }
            //
            //    if (gameplayChoice < 0)
            //    {
            //        gameplayChoice = 0;
            //    }
            //    DPadAxisUsed[i] = true;
            //}
            //
            //if (Input.GetAxis("D-PadY" + joystickCharInputs[i]) > 0.0f && !DPadAxisUsed[i])
            //{
            //    gameplayChoice++;
            //
            //    if (gameplayChoice == 2 && levelData.gamemode == MatchGameplay.Gamemode.Stock)
            //    {
            //        gameplayChoice = 3;
            //    }
            //
            //    if (gameplayChoice > 3)
            //    {
            //        gameplayChoice = 3;
            //    }
            //    DPadAxisUsed[i] = true;
            //}
            //
            //if (Input.GetAxis("D-PadY" + joystickCharInputs[i]) == 0.0f)
            //{
            //    DPadAxisUsed[i] = false;
            //}
            //
            //switch (gameplayChoice)
            //{
            //    #region GameMode
            //    case 0:
            //        if (Input.GetAxis("D-PadX" + joystickCharInputs[i]) < 0.0f && !DPadXAxisUsed[i])
            //        {
            //            levelData.gamemode++;
            //            if ((int)levelData.gamemode > 2)
            //            {
            //                levelData.gamemode = (MatchGameplay.Gamemode)2;
            //            }
            //            DPadXAxisUsed[i] = true;
            //        }
            //        else if (Input.GetAxis("D-PadX" + joystickCharInputs[i]) > 0.0f && !DPadXAxisUsed[i])
            //        {
            //            levelData.gamemode--;
            //            if ((int)levelData.gamemode < 1)
            //            {
            //                levelData.gamemode = (MatchGameplay.Gamemode)1;
            //            }
            //            DPadXAxisUsed[i] = true;
            //        }
            //
            //        if (levelData.gamemode == MatchGameplay.Gamemode.Stock)
            //        {
            //            RoundLengthSelect.gameObject.SetActive(false);
            //            RoundLengthLabel.gameObject.SetActive(false);
            //            PlayerLivesLabels.SetActive(true);
            //        }
            //        else
            //        {
            //            RoundLengthSelect.gameObject.SetActive(true);
            //            RoundLengthLabel.gameObject.SetActive(true);
            //            PlayerLivesLabels.SetActive(false);
            //        }
            //        Arrow.transform.position = new Vector3(menuOptions[MenuOption].transform.position.x + 10.0f, GamemodeSelect.transform.position.y, GamemodeSelect.transform.position.z);
            //        break;
            //    #endregion
            //
            //    #region NumOfRounds
            //    case 1:
            //        if (Input.GetAxis("D-PadX" + joystickCharInputs[i]) < 0.0f && !DPadXAxisUsed[i])
            //        {
            //            levelData.rounds++;
            //            DPadXAxisUsed[i] = true;
            //        }
            //        else if (Input.GetAxis("D-PadX" + joystickCharInputs[i]) > 0.0f && !DPadXAxisUsed[i])
            //        {
            //            levelData.rounds--;
            //            if (levelData.rounds < 1)
            //            {
            //                levelData.rounds = 1;
            //            }
            //            DPadXAxisUsed[i] = true;
            //        }
            //        Arrow.transform.position = new Vector3(menuOptions[MenuOption].transform.position.x + 10.0f, RoundsSelect.transform.position.y, RoundsSelect.transform.position.z);
            //        break;
            //    #endregion
            //
            //    #region RoundLength
            //    case 2:
            //        if (Input.GetAxis("D-PadX" + joystickCharInputs[i]) < 0.0f && !DPadXAxisUsed[i])
            //        {
            //            levelData.RoundLength += 15.0f;
            //            DPadXAxisUsed[i] = true;
            //        }
            //        else if (Input.GetAxis("D-PadX" + joystickCharInputs[i]) > 0.0f && !DPadXAxisUsed[i])
            //        {
            //            levelData.RoundLength -= 15.0f;
            //            if (levelData.RoundLength < 15)
            //            {
            //                levelData.RoundLength = 15;
            //            }
            //            DPadXAxisUsed[i] = true;
            //        }
            //        Arrow.transform.position = new Vector3(menuOptions[MenuOption].transform.position.x + 10.0f, RoundLengthSelect.transform.position.y, RoundLengthSelect.transform.position.z);
            //        break;
            //    #endregion
            //
            //    #region PlayerLives
            //    case 3:
            //        if (levelData.gamemode == MatchGameplay.Gamemode.Stock)
            //        {
            //            if (Input.GetAxis("D-PadX" + joystickCharInputs[i]) < 0.0f && !DPadXAxisUsed[i])
            //            {
            //                levelData.playerLives++;
            //                DPadXAxisUsed[i] = true;
            //            }
            //            else if (Input.GetAxis("D-PadX" + joystickCharInputs[i]) > 0.0f && !DPadXAxisUsed[i])
            //            {
            //                levelData.playerLives--;
            //                if (levelData.playerLives < 3)
            //                {
            //                    levelData.playerLives = 3;
            //                }
            //                DPadXAxisUsed[i] = true;
            //            }
            //            Arrow.transform.position = new Vector3(menuOptions[MenuOption].transform.position.x + 10.0f, PlayerLivesSelect.transform.position.y, PlayerLivesSelect.transform.position.z);
            //        }
            //        else
            //        {
            //            gameplayChoice = 2;
            //        }
            //        break;
            //    #endregion
            //
            //    default:
            //        break;
            //}
            //
            //if (Input.GetAxis("D-PadX" + joystickCharInputs[i]) == 0.0f)
            //{
            //    DPadXAxisUsed[i] = false;
            //}
            //
            //if (Input.GetButtonDown("A_Button" + joystickCharInputs[i]))
            //{
            //    LoadingScene = true;
            //}
            //
            //if (Input.GetButtonDown("B_Button" + joystickCharInputs[i]))
            //{
            //    startFunctions = OpenLevelSelect;
            //    StartCoroutine(WaitAndRunMethod(0.5f, startFunctions));
            //    bookanimator.SetTrigger("PageTurnLeft");
            //}
#endregion
        }

        GamemodeSelect.text = levelData.gamemode.ToString();
        RoundsSelect.text = levelData.rounds.ToString();
        RoundLengthSelect.text = levelData.RoundLength.ToString();
        PlayerLivesSelect.text = levelData.playerLives.ToString();

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
            PlayerStamps[CharSelectNavigator.iterI].transform.position = pos.transform.position + new Vector3(-4.0f, 0.0f ,-5.0f + 4.0f * CharSelectNavigator.iterI);
        }
    }

    private void ResetCharStamp(int i)
    {
        if (!PlayerSelectedMesh[i])
        {
            PlayerStamps[i].transform.position = CharSelectNavigator.startingOption.transform.position + new Vector3(-4.0f, 0.0f, -5.0f + 4.0f * i);
        }
    }
    public void ChangeCharMesh(int character)
    {
        MeshSelected[CharSelectNavigator.iterI] = KnightMeshes[CharSelectNavigator.iterI].GetComponent<MeshSelector>().LoadMesh(character);
    }

    public void MoveToMainMenu()
    {
        StartCoroutine(flipOntoRightPage(mainMenu,0.53f));
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
    public void StartSelection()
    {
        startFunctions = OpenCharacterSelect;
        StartCoroutine(WaitAndRunMethod(0.4f, startFunctions));

        StartCoroutine(WaitAndRunMethod(0.1f, ShowCharacterSelection));
        StartCoroutine(flipOntoRightPage(mainMenu,0.44f));

        gameSetup = true;
        bookanimator.SetTrigger("PageTurnRight");
    }
    private void ShowCharacterSelection()
    {
        characterSelect.SetActive(true);
        CharSelectNavigator.gameObject.SetActive(true);
        StartCoroutine(flipOntoLeftPage(CharSelectNavigator.gameObject,0.44f));
    }
    public void Credits()
    {
        bookanimator.SetTrigger("PageTurnRight");
        mainMenu.SetActive(false);
        CreditsLeft.SetActive(true);
        CreditsRight.SetActive(true);
        Debug.Log("Credits open");
    }
    public void CloseCredits()
    {
        bookanimator.SetTrigger("PageTurnLeft");
        CreditsLeft.SetActive(false);
        CreditsRight.SetActive(false);
        MoveToMainMenu();
        Debug.Log("Credits close");
    }
    public void QuitGame()
    {
        Camera.main.GetComponent<Animator>().SetBool("ZoomIntoBook", false);
        StartCoroutine(WaitAndRunMethod(2.5f, Application.Quit));
        StartCoroutine(WaitAndRunMethod(0.5f, SceneTransScript.CloseTransition));
        bookanimator.SetTrigger("BookClose");
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
        ReadyplayerCount--;
    }
    public void ResetAllPlayerMeshes()
    {
        for (int i = 0; i < PlayerSelectedMesh.Length; i++)
        {
            PlayerSelectedMesh[i] = false;
        }
    }
    public void CheckPlayersAreReady()
    {
        if (ReadyplayerCount >= 2 && ReadyplayerCount == joystickCharInputs.Count && !setupPlayerData)
        {
            setupPlayerData = true;
            //GameObject levelData = (Instantiate(Resources.Load("Prefabs/levelData")) as GameObject);
            levelData.joystickCharInputs = joystickCharInputs;
            for (int j = 0; j < joystickCharInputs.Count; j++)
            {
                levelData.meshSelected.Insert(levelData.meshSelected.Count, MeshSelected[j]);
            }
            StartCoroutine(WaitAndRunMethod(0.4f, TurnOnLevelSelect));
            startFunctions = OpenLevelSelect;
            StartCoroutine(WaitAndRunMethod(0.4f, startFunctions));
            StartCoroutine(flipOntoRightPage(characterSelect,0.55f));
            StartCoroutine(flipOntoLeftPage(levelSelect,0.55f));
            bookanimator.SetTrigger("PageTurnRight");
            LevelSelectNavigator.joystickCharInputs = joystickCharInputs;
        }
    }
     private void TurnOnLevelSelect()
     {
        gameplaySelect.SetActive(true);
        levelSelectFlavourGroup.SetActive(true);
        levelSelect.SetActive(true);
     }

    public void SelectLevel(int level)
    {
        levelStamp.color = new Color(1, 1, 1, 1);
        levelSelected = level;
        LevelSelectNavigator.enabled = false;
        GameplaySelectNavigator.enabled = true;
        Arrow.gameObject.SetActive(true);
        ResetGameplayStamp();
        ControlHandler = GameplaySelectControls;
    }
    public void SelectRandomLevel()
    {
        levelSelected = Random.Range(1, 5);
        SelectLevel(levelSelected);
    }
    public void MoveLevelStamp(MenuOption pos)
    {
        levelStamp.color = new Color(1, 1, 1, 0.75f);
        levelStamp.transform.position = pos.transform.position + new Vector3(-2.0f, -1.0f, 0.0f);
    }
    public void ChangeLevelDescription(int level)
    {
        levelSelectflavourtext.text = levelDescriptions[level];
        levelSelectPreview.sprite = levelPreviews[level];
    }
    public void MoveToCharacterSelect()
    {
        startFunctions = OpenCharacterSelect;
        StartCoroutine(WaitAndRunMethod(0.1f,TurnOnCharacterSelect));
        StartCoroutine(flipOntoRightPage(characterSelect, 0.56f));
        StartCoroutine(flipOntoLeftPage(levelSelect, 0.56f));
        StartCoroutine(WaitAndRunMethod(0.4f, startFunctions));
        bookanimator.SetTrigger("PageTurnLeft");
    }

    private void TurnOnCharacterSelect()
    {
        CharSelectNavigator.gameObject.SetActive(true);
        characterSelect.SetActive(true);
    }
    public void MoveToLevelSelect()
    {
        LevelSelectNavigator.enabled = true;
        GameplaySelectNavigator.enabled = false;
        startFunctions = OpenLevelSelect;
        StartCoroutine(WaitAndRunMethod(0.4f, startFunctions));
    }

    private void ResetGameplayStamp()
    {
        Arrow.transform.position = new Vector3(GameplaySelectNavigator.startingOption.gameObject.transform.position.x + 0.1f, GameplaySelectNavigator.startingOption.gameObject.transform.position.y, GameplaySelectNavigator.startingOption.gameObject.transform.position.z);
    }
    public void changeGamemode(int value)
    {
        levelData.gamemode = (MatchGameplay.Gamemode)value;
        GamemodeSelect.text = levelData.gamemode.ToString();

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
    }
    public void AddRound()
    {
        levelData.rounds++;
        if (levelData.rounds > MaxRounds)
        {
            levelData.rounds = MaxRounds;
        }
        RoundsSelect.text = levelData.rounds.ToString();
    }
    public void RemoveRound()
    {
        levelData.rounds--;
        if (levelData.rounds < 1)
        {
            levelData.rounds = 1;
        }
        RoundsSelect.text = levelData.rounds.ToString();
    }
    public void AddRoundLength()
    {
        levelData.RoundLength += 15.0f;
        if (levelData.RoundLength > MaxRoundLength)
        {
            levelData.RoundLength = MaxRoundLength;
        }
        RoundLengthSelect.text = levelData.RoundLength.ToString();
    }
    public void RemoveRoundLength()
    {
        levelData.RoundLength -= 15.0f;
        if (levelData.RoundLength < 15)
        {
            levelData.RoundLength = 15;
        }
        RoundLengthSelect.text = levelData.RoundLength.ToString();
    }
    public void AddPlayerLives()
    {
        levelData.playerLives++;
        if (levelData.playerLives > MaxPlayerLives)
        {
            levelData.playerLives = MaxPlayerLives;
        }
        PlayerLivesSelect.text = levelData.playerLives.ToString();
    }
    public void RemovePlayerLives()
    {
        levelData.playerLives--;
        if (levelData.playerLives < 1)
        {
            levelData.playerLives = 1;
        }
        PlayerLivesSelect.text = levelData.playerLives.ToString();
    }
    public void CheckGamemode()
    {
        if (levelData.gamemode == MatchGameplay.Gamemode.Stock)
        {
            GameplaySelectNavigator.MoveToMenuOption(PlayerLives);
        }
        else
        {
            GameplaySelectNavigator.MoveToMenuOption(RoundLength);
        }
    }
    public void MoveArrow(MenuOption option)
    {
        Arrow.transform.position = new Vector3(option.gameObject.transform.position.x + 0.1f, option.gameObject.transform.position.y, option.gameObject.transform.position.z);
    }

    public void StartGame()
    {
        SceneTransScript.CloseTransition();
        StartCoroutine(WaitAndRunMethod(2.0f, LoadScene));
    }

    private void LoadScene()
    {
        DontDestroyOnLoad(SceneTransScript.gameObject);
        DontDestroyOnLoad(levelData);
        Scenechanger.SceneLoader(levelSelected);
    }

    public void PlaySound(AudioClip clip)
    {
        GetComponent<AudioSource>().clip = clip;
        GetComponent<AudioSource>().Play();
    }

    IEnumerator flipOntoRightPage(GameObject menu, float TimeToWait)
    {
        PlaySound(PageTurn);
        menu.transform.SetParent(CanvasRightPagePos.transform, false);
        //menu.transform.localScale = new Vector3(1, 1, 1);
        menu.transform.position = CanvasRightPagePos.transform.position;
        menu.transform.rotation = CanvasRightPagePos.transform.rotation;
        yield return new WaitForSeconds(TimeToWait);
        menu.transform.SetParent(MainCanvasRightPagePos.transform, false);
        menu.transform.position = MainCanvasRightPagePos.transform.position;
        menu.transform.rotation = MainCanvasRightPagePos.transform.rotation;
        //menu.transform.localScale = new Vector3(1, 1, 1);
    }
    IEnumerator flipOntoLeftPage(GameObject menu, float TimeToWait)
    {
        PlaySound(PageTurn);
        menu.transform.SetParent(CanvasLeftPagePos.transform, false);
        //menu.transform.localScale = new Vector3(1, 1, 1);
        menu.transform.position = CanvasLeftPagePos.transform.position;
        menu.transform.rotation = CanvasLeftPagePos.transform.rotation;
        yield return new WaitForSeconds(TimeToWait);
        menu.transform.SetParent(MainCanvasLeftPagePos.transform, false);
        menu.transform.position = MainCanvasLeftPagePos.transform.position;
        menu.transform.rotation = MainCanvasLeftPagePos.transform.rotation;
        //menu.transform.localScale = new Vector3(1, 1, 1);
    }
}
