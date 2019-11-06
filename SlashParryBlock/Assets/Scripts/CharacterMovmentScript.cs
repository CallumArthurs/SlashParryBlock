using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CharacterMovmentScript : MonoBehaviour
{
    enum AnimSelector
    {
        Attack = 1,
        Block,
        Parry,
        Run
    }

    //this sets the default values for the players at game start
    [Header("Player data default values")]
    public int playerHealth;
    public int playerDamage,backstabDamage,riposteDamage;
    [Tooltip("this is a multiplier on knockback hit, halved for the shield")]
    public float playerKnockback;
    public List<AudioClip> playerClips;

    [Header("CharacterMovementScript values")]
    public float AirControlSpeed;
    public float speed;
    public float maxSpeed;
    private float originalMaxSpeed, originalSpeed;
    public float rotSpeed;
    public float blockSpeedMultiplier;
    public float blockRotSpeedMultiplier;
    public List<PlayerData> players = new List<PlayerData>();
    public bool gamePaused = false, playersFrozen = false;
    public Transform ExcaliburSpawnPos;
        
    [HideInInspector]
    public List<string> joystickCharInputs;

    public GameObject[] playerReadyUpPos;
    public List<RenderTexture> renderTextures;
    public List<GameObject> PlayerColliders;
    public Sprite emptyHeart, halfHeart, fullHeart;
    public List<GameObject> PlayerCams = new List<GameObject>();
    public SceneTransitonerScript SceneTransScript;

    private List<RenderTexture> PlayerRenderTextures;
    private List<RespawnPoints> SpawnPoints;
    private List<AudioSource> soundPlayers;
    private List<Rigidbody> playersRB;
    private List<Animator> playersAni;
    private List<RawImage> PlayerReadyUpImg;
    private List<Text> ReadyUpTxt;
    private List<PlayerHeartsContainer> playerHearts;
    private List<GameObject> playerPortraits;
    private GameObject ReadyUpScreen;
    private GameUIContainer gameUIContainer;
    private KnightMeshRenderer KnightMeshRenderer;
    private LayerMask floor;
    private ConsoleCommand console;
    private MatchGameplay gameplay;
    private SceneSelector SceneSelector;
    private bool[] PlayersReady = new bool[4] { false, false, false, false };
    private int ReadyPlayers = 0;
    private bool DebugLoad = false;

    public bool PlayGame = false;

    private levelLoadInfo levelData;

    private bool alternateControls = false;
    private delegate void ControlScheme();
    ControlScheme controlSchemeHandler;
    ControlScheme controlSchemeHandlerFixedUpdate;

    private void Awake()
    {
        GameObject tmplvlData = GameObject.FindGameObjectWithTag("levelData");
        if (tmplvlData == null)
        {
            levelData = new levelLoadInfo();
            levelData.gamemode = MatchGameplay.Gamemode.Timer;
            levelData.joystickCharInputs = new List<string> { "P1", "P2", "P3", "P4" };
            levelData.rounds = 3;
            levelData.RoundLength = 120;
            levelData.playerLives = 1;
            levelData.meshSelected = new List<int> { 0, 1, 2, 3 };
            levelData.ManualLoad();
            DebugLoad = true;
        }
        else
        {
            levelData = tmplvlData.GetComponent<levelLoadInfo>();
            levelData.gameObject.transform.parent = gameObject.transform;
        }
        gameplay = gameObject.GetComponent<MatchGameplay>();
        joystickCharInputs = levelData.joystickCharInputs;

        KnightMeshRenderer = gameObject.GetComponent<KnightMeshRenderer>();

        console = gameObject.GetComponent<ConsoleCommand>();
        console.enabled = false;
        SceneSelector = SceneSelector.CreateInstance("SceneSelector") as SceneSelector;

        gameplay.gameMode = levelData.gamemode;
        gameplay.Rounds = levelData.rounds;
        gameplay.RoundLength = levelData.RoundLength;
        gameplay.PlayerLives = levelData.playerLives;

        PlayerRenderTextures = new List<RenderTexture>();
        for (int j = 0; j < levelData.meshSelected.Count; j++)
        {
            players.Add(Instantiate(Resources.Load("Prefabs/p_KnightSpawn") as GameObject, gameObject.transform).GetComponent<PlayerData>());
            PlayerCams.Add(Instantiate(Resources.Load("Prefabs/PlayerReadyUpCam") as GameObject));
            players[j].gameObject.transform.position = playerReadyUpPos[j].transform.position;

            PlayerRenderTextures.Add(Resources.Load("Prefabs/" + joystickCharInputs[j] + "TargetTexture") as RenderTexture);
            PlayerCams[j].GetComponent<Camera>().targetTexture = PlayerRenderTextures[j];
            Instantiate(levelData.KnightSwords[levelData.meshSelected[j]], players[j].SwordPos.transform);
            Instantiate(levelData.KnightShields[levelData.meshSelected[j]], players[j].ShieldPos.transform);

            List<SkinnedMeshRenderer> skinnedMeshRenderers = new List<SkinnedMeshRenderer>();
            skinnedMeshRenderers.AddRange(players[j].GetComponentsInChildren<SkinnedMeshRenderer>());
            for (int i = 0; i < skinnedMeshRenderers.Count; i++)
            {
                KnightMeshRenderer.LoadMesh(skinnedMeshRenderers, levelData.meshSelected[j]);
                skinnedMeshRenderers.Clear();
            }
            renderTextures.Add(PlayerCams[j].GetComponent<Camera>().targetTexture);
            renderTextures[j].Create();
        }
        //KnightMeshRenderer.LoadMesh(skinnedMeshRenderers, levelDatatmp.MeshSelected);

        SpawnPoints = new List<RespawnPoints>();

        //getting the spawnpoint parent to find all the spawnpoints
        Transform[] tempTransform = GameObject.FindGameObjectWithTag("SpawnPoints").GetComponentsInChildren<Transform>();
        for (int i = 1; i < tempTransform.Length; i++)
        {
            SpawnPoints.Add(tempTransform[i].gameObject.AddComponent<RespawnPoints>());
            SpawnPoints[i - 1].Setup(this);
        }

        //starting at 1 to skip the parent
        for (int i = 0; i < SpawnPoints.Count; i++)
        {
            for (int k = 0; k < players.Count; k++)
            {
                players[k].spawnpoints.Add(SpawnPoints[i]);
            }
        }

        controlSchemeHandler = ControlScheme1;
        controlSchemeHandlerFixedUpdate = ControlScheme1FixedUpdate;

        gameUIContainer = GameObject.FindGameObjectWithTag("Main_CanvasUI").GetComponent<GameUIContainer>();


        playerHearts = gameUIContainer.playerHearts;
        playerPortraits = gameUIContainer.playerPortraits;
        ReadyUpScreen = gameUIContainer.readyUpScreen;
        PlayerReadyUpImg = gameUIContainer.readyUpImages;
        ReadyUpTxt = gameUIContainer.readyUpText;

        ReadyUpScreen.SetActive(true);

        gameplay.RoundStatsUI = gameUIContainer.playerStatsUI;
        gameplay.GameUI = gameUIContainer.GameScreenUI;
        gameplay.Timer = gameUIContainer.GameTimer;
    }

    void Start()
    {
        playersAni = new List<Animator>();
        playersRB = new List<Rigidbody>();
        soundPlayers = new List<AudioSource>();
        originalSpeed = speed;
        AudioSource[] tmpSources = GetComponentsInChildren<AudioSource>();
        Random.InitState((int)Time.realtimeSinceStartup);

        floor = LayerMask.GetMask("Floor");
        originalMaxSpeed = maxSpeed;
        for (int i = 0; i < tmpSources.Length; i++)
        {
            soundPlayers.Add(tmpSources[i]);
        }

        for (int i = 0; i < players.Count; i++)
        {
            gameUIContainer.playerPortraits[levelData.meshSelected[i]].GetComponent<RectTransform>().position = gameUIContainer.portPositions[i].position;

            gameUIContainer.ProfileRing[levelData.meshSelected[i]].SetActive(true);

            //setting the values of the players
            players[i].setHealth(playerHealth);
            players[i].setDamage(playerDamage, backstabDamage, riposteDamage);
            players[i].setKnockback(playerKnockback);
            players[i].SetSounds(soundPlayers[i],playerClips);

            //getting a reference to all the player's rigidbodies
            playersRB.Add(players[i].gameObject.GetComponent<Rigidbody>());
            playersAni.Add(players[i].gameObject.GetComponentInChildren<Animator>());
            playerPortraits[levelData.meshSelected[i]].SetActive(true);
            playersRB[i].isKinematic = true;
            playersRB[i].MovePosition(playerReadyUpPos[i].transform.position);

            if (levelData.gamemode == MatchGameplay.Gamemode.Stock)
            {
                gameUIContainer.PlayerlivesImage[i].gameObject.SetActive(true);
            }

            gameUIContainer.playerReadyUpPanels[i].SetActive(true);
        }
        SceneTransScript = GameObject.FindGameObjectWithTag("SceneTransitioner").GetComponent<SceneTransitonerScript>();
        SceneTransScript.OpenTransition();
    }

    void Update()
    {
        if (!gamePaused)
        {
            if (!playersFrozen)
            {
                controlSchemeHandler();
            }
        }

        if (Input.GetKeyDown(KeyCode.BackQuote))
        {
            Debug.Log("backquote pressed");
            console.enabled = true;
            console.FocusConsoleToggle(true);
        }

        if (console.enabled)
        {
            if (console.EnterPressed)
            {
                console.EnterPressed = false;
                console.FocusConsoleToggle(false);
                switch (console.CommandInput)
                {
                    case "Restart":
                        SceneSelector.SceneLoader(SceneSelector.SceneSelecter.SplashScreen);
                        break;
                    case "AddTime":
                        gameObject.GetComponent<MatchGameplay>().AddTime(120);
                        break;
                    case "Viviane":
                        GameObject tempSwordObj = Instantiate(Resources.Load("Prefabs/p_ExcaliburIndicator"), players[0].transform.position,Quaternion.identity) as GameObject;
                        break;
                    default:
                        Debug.Log("InvalidCommand");
                        break;
                }
                console.CommandInput = "";
                console.enabled = false;
            }
        }

        if (Input.GetKeyDown(KeyCode.Tab))
        {
            if (alternateControls)
            {
                controlSchemeHandler = ControlScheme1;
                controlSchemeHandlerFixedUpdate = ControlScheme1FixedUpdate;
                alternateControls = false;
            }
            else
            {
                controlSchemeHandler = ControlScheme2;
                controlSchemeHandlerFixedUpdate = ControlScheme2FixedUpdate;
                alternateControls = true;
            }
        }
        
        for (int i = 0; i < joystickCharInputs.Count; i++)
        {
            if (Input.GetButtonDown("StartButton" + joystickCharInputs[i]))
            {
                gameUIContainer.PauseMenu.SetActive(!gameUIContainer.PauseMenu.activeInHierarchy);
                PauseGame();
            }
        }

        UpdateHealth();
    }

    public Vector3 SpawnPlayer()
    {
        List<Transform> GoodSpawns = new List<Transform>();

        for (int i = 0; i < SpawnPoints.Count; i++)
        {
            if (SpawnPoints[i].Validated)
            {
                if (SpawnPoints[i].spawnCheck())
                {
                    GoodSpawns.Add(SpawnPoints[i].transform);
                }
            }
            else
            {
                SpawnPoints[i].Validated = true;
            }
        }
        if (GoodSpawns.Count > 0)
        {
            int TempRandom = Random.Range(0, GoodSpawns.Count);
            GoodSpawns[TempRandom].GetComponent<RespawnPoints>().Validated = false;
            return (GoodSpawns[TempRandom].position);
        }
        else
        {
            return new Vector3(0, 5.0f, 0);
        }
    }

    private void StartGame()
    {
        ReadyUpScreen.SetActive(false);
        gameUIContainer.GameScreenUI.SetActive(true);
        gameObject.GetComponent<MatchGameplay>().StartMatch();
        for (int i = 0; i < players.Count; i++)
        {
            Destroy(PlayerCams[i]);
            players[i].GameStart();
            playersRB[i].isKinematic = false;
            players[i].gameObject.layer = 14 + i;
            //PlayerCams.Clear();
        }
    }

    private void FixedUpdate()
    {
        if (!gamePaused)
        {
            if (!playersFrozen)
            {
                controlSchemeHandlerFixedUpdate();
            }
        }
    }

    private void ControlScheme1()
    {
        //iterate through all the players
        for (int i = 0; i < joystickCharInputs.Count; i++)
        {
            if (!PlayGame)
            {
                if (Input.GetButtonDown("A_Button" + joystickCharInputs[i]) && !PlayersReady[i])
                {
                    ReadyUpTxt[i].fontSize = 32;
                    ReadyUpTxt[i].text = "Press B to UnReady";
                    PlayersReady[i] = true;
                    ReadyPlayers++;
                }
                if (Input.GetButtonDown("B_Button" + joystickCharInputs[i]) && PlayersReady[i])
                {
                    ReadyUpTxt[i].fontSize = 37;
                    ReadyUpTxt[i].text = "Press A to Ready up";
                    PlayersReady[i] = false;
                    ReadyPlayers--;
                }
                if (ReadyPlayers == joystickCharInputs.Count && !PlayGame || DebugLoad)
                {
                    PlayGame = true;
                    StartGame();
                }
                PlayerCams[i].transform.position = new Vector3(players[i].transform.position.x, players[i].transform.position.y, players[i].transform.position.z + 2.0f);
                PlayerReadyUpImg[i].texture = renderTextures[i];
            }

            //no inputs taken if you have been knocked back
            if (!players[i].getIsParried() && !players[i].getKnockedBack() && !players[i].Respawning && !players[i].Dashed)
            {
                if (Input.GetAxis("L_Bumper" + joystickCharInputs[i]) > 0 && !players[i].getAttacked())
                {
                    players[i].blocking = true;
                }
                else
                {
                    players[i].blocking = false;
                    //you can't attack if you just did
                    if (Input.GetButtonDown("R_Bumper" + joystickCharInputs[i]) && !players[i].getAttacked() && !players[i].getParried())
                    {
                        players[i].Attack(1);
                        players[i].AttackAxisUsed = true;
                    }
                    else if (Input.GetAxis("L_Trigger" + joystickCharInputs[i]) < 0 && !players[i].getAttacked() && !players[i].ParryAxisUsed)
                    {
                        playersAni[i].SetInteger("Anim", (int)AnimSelector.Parry);
                        players[i].Parry();
                        players[i].ParryAxisUsed = true;
                    }
                    else if (Input.GetAxis("R_Trigger" + joystickCharInputs[i]) > 0 && !players[i].getAttacked() && !players[i].AttackAxisUsed)
                    {
                        players[i].Attack(2);
                        players[i].AttackAxisUsed = true;
                    }

                    if (Input.GetAxis("L_Trigger" + joystickCharInputs[i]) == 0)
                    {
                        players[i].ParryAxisUsed = false;
                    }
                }
                playersAni[i].SetBool("Blocking", players[i].blocking);
            }
        }

    }
    private void ControlScheme1FixedUpdate()
    {
        for (int i = 0; i < joystickCharInputs.Count; i++)
        {
            if (PlayGame)
            {
                if (Physics.SphereCast(new Ray(players[i].transform.position, Vector3.down), 0.5f, 0.5f, floor) && !players[i].IgnoreSpeedLimit)
                {
                    speed = originalSpeed;
                    maxSpeed = originalMaxSpeed;
                    playersAni[i].SetBool("Falling", false);
                    players[i].fallTimer = 0.5f;
                }
                else
                {
                    if (players[i].fallTimer <= 0.0f)
                    {
                        speed = AirControlSpeed;
                        maxSpeed = Mathf.Infinity;
                        playersAni[i].SetBool("Falling", true);
                    }
                    else
                    {
                        players[i].fallTimer -= Time.deltaTime;
                    }
                    //players[i].gameObject.GetComponent<CapsuleCollider>().material
                }
            }

            if (!players[i].getIsParried() && !players[i].getKnockedBack() && !players[i].Respawning)
            {
                //for player1 this will evaluate to "HorizontalP1"
                if (Input.GetAxis("Horizontal" + joystickCharInputs[i]) != 0 || Input.GetAxis("Vertical" + joystickCharInputs[i]) != 0 ||
                    Input.GetAxis("R_StickHorizontal" + joystickCharInputs[i]) != 0 || Input.GetAxis("R_StickVertical" + joystickCharInputs[i]) != 0)
                {
                    float HoriInput = Input.GetAxis("Horizontal" + joystickCharInputs[i]);
                    float VertInput = Input.GetAxis("Vertical" + joystickCharInputs[i]);
                    //left stick for rotating if not blocking
                    if (!players[i].blocking && (HoriInput != 0 || VertInput != 0))
                    {
                        playersRB[i].AddForce(new Vector3(HoriInput * speed, 0, -Input.GetAxis("Vertical" + joystickCharInputs[i]) * speed), ForceMode.Impulse);
                        playersRB[i].rotation = Quaternion.RotateTowards(playersRB[i].rotation, Quaternion.LookRotation(new Vector3(HoriInput, 0, -Input.GetAxis("Vertical" + joystickCharInputs[i])), Vector3.up), rotSpeed);
                        playersAni[i].SetInteger("Anim", (int)AnimSelector.Run);
                    }
                    else if (players[i].blocking)
                    {
                        playersRB[i].AddForce(new Vector3(HoriInput * (speed * blockSpeedMultiplier), 0, -Input.GetAxis("Vertical" + joystickCharInputs[i]) * (speed * blockSpeedMultiplier)), ForceMode.Impulse);
                        playersAni[i].SetFloat("BlockMovVecX", HoriInput);
                        //only rotate if you have a value to rotate to
                        if (Input.GetAxis("R_StickHorizontal" + joystickCharInputs[i]) != 0 || Input.GetAxis("R_StickVertical" + joystickCharInputs[i]) != 0)
                        {
                            Quaternion RotateTo = Quaternion.RotateTowards(playersRB[i].rotation, Quaternion.LookRotation(new Vector3(Input.GetAxis("R_StickHorizontal" + joystickCharInputs[i]), 0, -Input.GetAxis("R_StickVertical" + joystickCharInputs[i])), Vector3.up), (rotSpeed * blockRotSpeedMultiplier));
                            float tmpRotDir = RotateTo.eulerAngles.y - playersRB[i].rotation.eulerAngles.y;

                            if (tmpRotDir < 0.2f && tmpRotDir > -0.2f)
                            {
                                playersAni[i].SetFloat("BlockMovVecY", 0.0f, 0.2f, Time.deltaTime);
                            }
                            else
                            {
                                playersAni[i].SetFloat("BlockMovVecY", tmpRotDir, 0.5f, Time.deltaTime);
                            }

                            playersRB[i].rotation = RotateTo;
                        }
                        playersAni[i].SetInteger("Anim", (int)AnimSelector.Run);
                    }
                    else
                    {
                        if (!players[i].blocking && (Input.GetAxis("Horizontal" + joystickCharInputs[i]) == 0 || Input.GetAxis("Vertical" + joystickCharInputs[i]) == 0))
                        {
                            playersAni[i].SetInteger("Anim", 0);
                        }
                    }

                    //lowers your speed to your max speed
                    if (playersRB[i].velocity.magnitude > maxSpeed)
                    {
                        Vector3 VelNorm = playersRB[i].velocity.normalized;

                        playersRB[i].velocity = new Vector3(VelNorm.x * maxSpeed, playersRB[i].velocity.y, VelNorm.z * maxSpeed);
                    }
                }
                else
                {
                    //play Idle animation
                    playersAni[i].SetFloat("BlockMovVecY", 0.0f, 0.2f, Time.deltaTime);
                    playersAni[i].SetFloat("BlockMovVecX", 0.0f, 0.2f, Time.deltaTime);

                    playersAni[i].SetInteger("Anim", 0);
                }

            }
            PlayerColliders[i].transform.position = players[i].transform.position;
        }

    }

    private void ControlScheme2()
    {
        //iterate through all the players
        for (int i = 0; i < joystickCharInputs.Count; i++)
        {
            if (!PlayGame)
            {
                if (Input.GetButtonDown("A_Button" + joystickCharInputs[i]) && !PlayersReady[i])
                {
                    ReadyUpTxt[i].fontSize = 32;
                    ReadyUpTxt[i].text = "Press B to UnReady";
                    PlayersReady[i] = true;
                    ReadyPlayers++;
                }
                if (Input.GetButtonDown("B_Button" + joystickCharInputs[i]) && PlayersReady[i])
                {
                    ReadyUpTxt[i].fontSize = 37;
                    ReadyUpTxt[i].text = "Press A to Ready up";
                    PlayersReady[i] = false;
                    ReadyPlayers--;
                }
                if (ReadyPlayers == joystickCharInputs.Count && !PlayGame || DebugLoad)
                {
                    PlayGame = true;
                    StartGame();
                }
                PlayerCams[i].transform.position = new Vector3(players[i].transform.position.x, players[i].transform.position.y, players[i].transform.position.z + 2.0f);
                PlayerReadyUpImg[i].texture = renderTextures[i];
            }

            //no inputs taken if you have been knocked back
            if (!players[i].getIsParried() && !players[i].getKnockedBack() && !players[i].Respawning && !players[i].Dashed)
            {
                if (Input.GetAxis("L_Bumper" + joystickCharInputs[i]) > 0 && !players[i].getAttacked())
                {
                    players[i].blocking = true;
                }
                else
                {
                    players[i].blocking = false;
                    //you can't attack if you just did
                    if (Input.GetButtonDown("X_Button" + joystickCharInputs[i]) && !players[i].getAttacked() && !players[i].getParried())
                    {
                        players[i].Attack(1);
                        players[i].AttackAxisUsed = true;
                    }
                    else if (Input.GetButtonDown("R_Bumper" + joystickCharInputs[i]) && !players[i].getAttacked())
                    {
                        playersAni[i].SetInteger("Anim", (int)AnimSelector.Parry);
                        players[i].Parry();
                        players[i].ParryAxisUsed = true;
                    }
                    else if (Input.GetAxis("R_Trigger" + joystickCharInputs[i]) > 0 && !players[i].getAttacked() && !players[i].AttackAxisUsed)
                    {
                        players[i].Attack(2);
                        players[i].AttackAxisUsed = true;
                    }
                }
                playersAni[i].SetBool("Blocking", players[i].blocking);

                if (Input.GetAxis("A_Button" + joystickCharInputs[i]) > 0.0f && !players[i].Dashed)
                {
                    Debug.Log("Dashed");
                    players[i].Dashed = true;
                    players[i].IgnoreSpeedLimit = true;
                    playersRB[i].AddForce(playersRB[i].transform.forward * 20.0f, ForceMode.Impulse);
                }

            }
        }
    }
    private void ControlScheme2FixedUpdate()
    {
        for (int i = 0; i < joystickCharInputs.Count; i++)
        {
            if (PlayGame)
            {
                if (Physics.SphereCast(new Ray(players[i].transform.position, Vector3.down), 0.5f, 0.5f, floor) && !players[i].IgnoreSpeedLimit)
                {
                    speed = originalSpeed;
                    maxSpeed = originalMaxSpeed;
                    playersAni[i].SetBool("Falling", false);
                }
                else
                {
                    speed = AirControlSpeed;
                    maxSpeed = Mathf.Infinity;
                    playersAni[i].SetBool("Falling", true);
                }
            }

            if (!players[i].getIsParried() && !players[i].getKnockedBack() && !players[i].Respawning)
            {
                //for player1 this will evaluate to "HorizontalP1"
                if (Input.GetAxis("Horizontal" + joystickCharInputs[i]) != 0 || Input.GetAxis("Vertical" + joystickCharInputs[i]) != 0 ||
                    Input.GetAxis("R_StickHorizontal" + joystickCharInputs[i]) != 0 || Input.GetAxis("R_StickVertical" + joystickCharInputs[i]) != 0)
                {
                    float HoriInput = Input.GetAxis("Horizontal" + joystickCharInputs[i]);
                    float VertInput = Input.GetAxis("Vertical" + joystickCharInputs[i]);
                    //left stick for rotating if not blocking
                    if (!players[i].blocking && (HoriInput != 0 || VertInput != 0))
                    {
                        playersRB[i].AddForce(new Vector3(HoriInput * speed, 0, -Input.GetAxis("Vertical" + joystickCharInputs[i]) * speed), ForceMode.Impulse);
                        playersRB[i].rotation = Quaternion.RotateTowards(playersRB[i].rotation, Quaternion.LookRotation(new Vector3(HoriInput, 0, -Input.GetAxis("Vertical" + joystickCharInputs[i])), Vector3.up), rotSpeed);
                        playersAni[i].SetInteger("Anim", (int)AnimSelector.Run);
                    }
                    else
                    {
                        if (!players[i].blocking && (Input.GetAxis("Horizontal" + joystickCharInputs[i]) == 0 || Input.GetAxis("Vertical" + joystickCharInputs[i]) == 0))
                        {
                            playersAni[i].SetInteger("Anim", 0);
                        }
                    }

                    //lowers your speed to your max speed
                    if (playersRB[i].velocity.magnitude > maxSpeed)
                    {
                        Vector3 VelNorm = playersRB[i].velocity.normalized;

                        playersRB[i].velocity = new Vector3(VelNorm.x * maxSpeed, playersRB[i].velocity.y, VelNorm.z * maxSpeed);
                    }
                }
                else
                {
                    //play Idle animation
                    playersAni[i].SetFloat("BlockMovVecY", 0.0f, 0.2f, Time.deltaTime);
                    playersAni[i].SetFloat("BlockMovVecX", 0.0f, 0.2f, Time.deltaTime);

                    playersAni[i].SetInteger("Anim", 0);
                }

                //if (Input.GetAxis("A_Button" + joystickCharInputs[i]) > 0.0f && !players[i].Dashed)
                //{
                //    Debug.Log("Dashed");
                //    players[i].Dashed = true;
                //    players[i].IgnoreSpeedLimit = true;
                //    playersRB[i].AddForce(playersRB[i].transform.forward * 50.0f, ForceMode.Impulse);
                //}
            }
            PlayerColliders[i].transform.position = players[i].transform.position;
        }

    }

    public void UpdateHealth()
    {
        for (int i = 0; i < joystickCharInputs.Count; i++)
        {
            // caching the health values
            float playerHealth = players[i].getHealth();
            float fullHeartAmount = players[i].getOriginalHealth() / 5;
            for (int j = 0; j < playerHearts[levelData.meshSelected[i]].playerHearts.Count; j++)
            {
                //check if you can fill a full heart and take it away from the amount you have
                if (playerHealth - fullHeartAmount >= 0)
                {
                    playerHearts[levelData.meshSelected[i]].playerHearts[j][0].SetActive(true);
                    playerHearts[levelData.meshSelected[i]].playerHearts[j][1].SetActive(false);
                    playerHealth -= fullHeartAmount;
                }//check if you can fill half a heart
                else if (playerHealth - (fullHeartAmount / 2) >= 0)
                {
                    playerHearts[levelData.meshSelected[i]].playerHearts[j][0].SetActive(false);
                    playerHearts[levelData.meshSelected[i]].playerHearts[j][1].SetActive(true);

                    playerHealth = 0;
                }//otherwise you have no heart
                else
                {
                    playerHearts[levelData.meshSelected[i]].playerHearts[j][0].SetActive(false);
                    playerHearts[levelData.meshSelected[i]].playerHearts[j][1].SetActive(false);
                    playerHearts[levelData.meshSelected[i]].playerHearts[j][2].SetActive(true);
                }
            }

            if (gameObject.GetComponent<MatchGameplay>().gameMode == MatchGameplay.Gamemode.Stock)
            {
                gameUIContainer.PlayerlivesImage[i].GetComponentInChildren<Text>().text = "Lives: " + (gameObject.GetComponent<MatchGameplay>().PlayerLives - players[i].Deaths).ToString();
            }
        }
    }

    public void Quit()
    {
        SceneSelector.SceneLoader(SceneSelector.SceneSelecter.SplashScreen);
    }
    public void Resume()
    {
        gameUIContainer.PauseMenu.SetActive(!gameUIContainer.PauseMenu.activeInHierarchy);
        PauseGame();
    }
    public void PauseGame()
    {
        gamePaused = !gamePaused;
        for (int i = 0; i < players.Count; i++)
        {
            if (gamePaused)
            {
                playersAni[i].speed = 0;
                Time.timeScale = 0.0f;
            }
            else
            {
                playersAni[i].speed = 1;
                Time.timeScale = 1.0f;
            }
        }
    }

    public void FreezePlayers()
    {
        playersFrozen = !playersFrozen;
        for (int i = 0; i < players.Count; i++)
        {
            if (playersFrozen)
            {
                playersAni[i].speed = 0.0f;
            }
            else
            {
                playersAni[i].speed = 1.0f;
            }
        }
        Debug.Log("freeze is " + playersFrozen);
    }
}
