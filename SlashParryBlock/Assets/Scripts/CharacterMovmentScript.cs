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
    public List<PlayerHeartsContainer> playerHearts;
    public List<string> joystickCharInputs;
    public bool[] PlayersReady = new bool[4] {false,false,false,false};
    public int ReadyPlayers = 0;
    public bool PlayGame = false;
    public GameObject ReadyUpScreen;
    public GameObject[] playerReadyUpPos;
    public RawImage[] PlayerReadyUpImg;
    public Text[] ReadyUpTxt;
    public List<RenderTexture> renderTextures;

    public KnightMeshRenderer KnightMeshRenderer;

    public List<GameObject> PlayerColliders;

    public Sprite emptyHeart, halfHeart, fullHeart;

    private List<RenderTexture> PlayerRenderTextures;
    private List<RespawnPoints> SpawnPoints;
    private List<AudioSource> soundPlayers;
    private List<Rigidbody> playersRB;
    private List<Animator> playersAni;
    private LayerMask floor;
    private ConsoleCommand console;
    private MatchGameplay gameplay;
    private SceneSelector SceneSelector;

    private void Awake()
    {
        ReadyUpScreen.SetActive(true);
        levelLoadInfo levelDatatmp = GameObject.FindGameObjectWithTag("levelData").GetComponent<levelLoadInfo>();
        gameplay = gameObject.GetComponent<MatchGameplay>();
        levelDatatmp.transform.parent = gameObject.transform;
        joystickCharInputs = levelDatatmp.joystickCharInputs;

        KnightMeshRenderer = gameObject.GetComponent<KnightMeshRenderer>();

        console = gameObject.GetComponent<ConsoleCommand>();
        console.enabled = false;
        SceneSelector = SceneSelector.CreateInstance("SceneSelector") as SceneSelector;

        gameplay.gameMode = levelDatatmp.gamemode;
        gameplay.Rounds = levelDatatmp.rounds;
        gameplay.RoundLength = levelDatatmp.RoundLength;
        gameplay.PlayerLives = levelDatatmp.playerLives;

        PlayerRenderTextures = new List<RenderTexture>();
        for (int j = 0; j < levelDatatmp.meshSelected.Count; j++)
        {
            players.Insert(players.Count, Instantiate(Resources.Load("Prefabs/p_KnightSpawn") as GameObject, gameObject.transform).GetComponent<PlayerData>());
            players[players.Count - 1].gameObject.transform.position = playerReadyUpPos[j].transform.position;
            PlayerRenderTextures.Add(Resources.Load("Prefabs/" + joystickCharInputs[j] + "TargetTexture") as RenderTexture);
            players[players.Count - 1].GetComponentInChildren<Camera>().targetTexture = PlayerRenderTextures[j];
            Instantiate(levelDatatmp.KnightSwords[levelDatatmp.meshSelected[j]], players[j].SwordPos.transform);
            Instantiate(levelDatatmp.KnightShields[levelDatatmp.meshSelected[j]], players[j].ShieldPos.transform);

            List<SkinnedMeshRenderer> skinnedMeshRenderers = new List<SkinnedMeshRenderer>();
            skinnedMeshRenderers.AddRange(players[j].GetComponentsInChildren<SkinnedMeshRenderer>());
            for (int i = 0; i < skinnedMeshRenderers.Count; i++)
            {
                KnightMeshRenderer.LoadMesh(skinnedMeshRenderers, levelDatatmp.meshSelected[j]);
                skinnedMeshRenderers.Clear();
            }
            renderTextures.Add(players[j].gameObject.GetComponentInChildren<Camera>().targetTexture);
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
            //setting the values of the players
            players[i].setHealth(playerHealth);
            players[i].setDamage(playerDamage, backstabDamage, riposteDamage);
            players[i].setKnockback(playerKnockback);
            players[i].SetSounds(soundPlayers[i],playerClips);

            //getting a reference to all the player's rigidbodies
            playersRB.Add(players[i].gameObject.GetComponent<Rigidbody>());
            playersAni.Add(players[i].gameObject.GetComponentInChildren<Animator>());

            playersRB[i].isKinematic = true;
            playersRB[i].MovePosition(playerReadyUpPos[i].transform.position);
        }
    }

    void Update()
    {
        //iterate through all the players
        for (int i = 0; i < joystickCharInputs.Count; i++)
        {
            if (Input.GetAxis("A_Button" + joystickCharInputs[i]) != 0.0f && !PlayersReady[i])
            {
                ReadyUpTxt[i].fontSize = 37;
                ReadyUpTxt[i].text = "Press B to UnReady";
                PlayersReady[i] = true;
                ReadyPlayers++;
            }
            if (Input.GetAxis("B_Button" + joystickCharInputs[i]) != 0.0f && PlayersReady[i])
            {
                ReadyUpTxt[i].fontSize = 32;
                ReadyUpTxt[i].text = "Press A to Ready up";
                PlayersReady[i] = false;
                ReadyPlayers--;
            }
            if (ReadyPlayers == joystickCharInputs.Count && !PlayGame)
            {
                PlayGame = true;
                StartGame();
            }
            Debug.Log(ReadyPlayers);

            PlayerReadyUpImg[i].texture = renderTextures[i];

            //no inputs taken if you have been knocked back
            if (!players[i].getIsParried() && !players[i].getKnockedBack() && !players[i].Respawning)
            {

                if (Input.GetAxis("L_Bumper" + joystickCharInputs[i]) > 0 && !players[i].getAttacked())
                {
                    players[i].blocking = true;
                }
                else
                {
                    players[i].blocking = false;
                    //you can't attack if you just did
                    if (Input.GetAxis("R_Bumper" + joystickCharInputs[i]) > 0 && !players[i].getAttacked() && !players[i].AttackAxisUsed && !players[i].getParried())
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
                    
                    if(Input.GetAxis("R_Bumper" + joystickCharInputs[i]) == 0)
                    {
                        players[i].AttackAxisUsed = false;
                    }
                    if (Input.GetAxis("L_Trigger" + joystickCharInputs[i]) == 0)
                    {
                        players[i].ParryAxisUsed = false;
                    }
                }
                playersAni[i].SetBool("Blocking", players[i].blocking);
            }
            // caching the health values
            float playerHealth = players[i].getHealth();
            float fullHeartAmount = players[i].getOriginalHealth() / 5;
            for (int j = 0; j < playerHearts[i].hearts.Count; j++)
            {
                //check if you can fill a full heart and take it away from the amount you have
                if (playerHealth - fullHeartAmount >= 0)
                {
                    playerHearts[i].hearts[j].sprite = fullHeart;
                    playerHealth -= fullHeartAmount;
                }//check if you can fill half a heart
                else if (playerHealth - (fullHeartAmount / 2) >= 0)
                {
                    playerHearts[i].hearts[j].sprite = halfHeart;
                    playerHealth = 0;
                }//otherwise you have no heart
                else
                {
                    playerHearts[i].hearts[j].sprite = emptyHeart;
                }
            }
        }

        if (Input.GetKeyDown(KeyCode.BackQuote))
        {
            if (console.enabled)
            {
                console.FocusConsoleToggle(false);
                console.CommandInput = "InputCommand";
                console.enabled = false;
            }
            else
            {
                console.enabled = true;
                console.FocusConsoleToggle(true);
            }
        }

        if (console.enabled)
        {
            if (Input.GetKeyDown(KeyCode.Return))
            {
                console.FocusConsoleToggle(false);
                switch (console.CommandInput)
                {
                    case "Restart":
                        SceneSelector.SceneLoader(SceneSelector.SceneSelecter.SplashScreen);
                        break;
                    case "AddTime":
                        gameObject.GetComponent<MatchGameplay>().AddTime(120);
                        break;
                    default:
                        console.CommandInput = "InvaildCommand";
                        break;
                }
                console.CommandInput = "InputCommand";
                console.enabled = false;
            }
        }
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
        gameObject.GetComponent<MatchGameplay>().StartMatch();
        for (int i = 0; i < players.Count; i++)
        {
            players[i].GameStart();
            playersRB[i].isKinematic = false;
            players[i].gameObject.layer = 14 + i;
        }
    }

    private void FixedUpdate()
    {
        for (int i = 0; i < joystickCharInputs.Count; i++)
        {
            if (Physics.SphereCast(new Ray(players[i].transform.position, Vector3.down), 0.5f, 0.5f, floor))
            {
                speed = originalSpeed;
                maxSpeed = originalMaxSpeed;
            }
            else
            {
                speed = AirControlSpeed;
                maxSpeed = Mathf.Infinity;
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
                                playersAni[i].SetFloat("BlockMovVecY", 0.0f, 0.2f,Time.deltaTime);
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
}
