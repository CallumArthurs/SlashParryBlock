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
    public float speed;
    public float maxSpeed;
    public float rotSpeed;
    public float blockSpeedMultiplier;
    public float blockRotSpeedMultiplier;
    public PlayerData[] players;
    public List<PlayerHeartsContainer> playerHearts;
    public List<string> joystickCharInputs;

    public Sprite emptyHeart, halfHeart, fullHeart;
    private List<RespawnPoints> SpawnPoints = new List<RespawnPoints>();
    private List<AudioSource> soundPlayers = new List<AudioSource>();
    private List<Rigidbody> playersRB = new List<Rigidbody>();
    private List<Animator> playersAni = new List<Animator>();
    void Start()
    {
        AudioSource[] tmpSources = GetComponentsInChildren<AudioSource>();
        Random.InitState((int)Time.realtimeSinceStartup);

        for (int i = 0; i < tmpSources.Length; i++)
        {
            soundPlayers.Add(tmpSources[i]);
        }

        //setting the values of the players
        for (int i = 0; i < players.Length; i++)
        {
            players[i].setHealth(playerHealth);
            players[i].setDamage(playerDamage, backstabDamage, riposteDamage);
            players[i].setKnockback(playerKnockback);
            players[i].SetSounds(soundPlayers[i],playerClips);
        }

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
            for (int k = 0; k < players.Length; k++)
            {
                players[k].spawnpoints.Add(SpawnPoints[i]);
            }
        }
        //getting a reference to all the player's rigidbodies
        for (int i = 0; i < players.Length; i++)
        {
            playersRB.Add(players[i].gameObject.GetComponent<Rigidbody>());
            playersAni.Add(players[i].gameObject.GetComponentInChildren<Animator>());
        }
    }

    void Update()
    {
        //iterate through all the players
        for (int i = 0; i < playersRB.Count; i++)
        {
            //no inputs taken if you have been knocked back
            if (!players[i].getIsParried() && !players[i].getKnockedBack())
            {
                //for player1 this will evaluate to "HorizontalP1"
                if (Input.GetAxis("HorizontalP" + (i + 1)) != 0 || Input.GetAxis("VerticalP" + (i + 1)) != 0 || 
                    Input.GetAxis("R_StickHorizontalP" + (i + 1)) != 0 || Input.GetAxis("R_StickVerticalP" + (i + 1)) != 0)
                {
                    //left stick for rotating if not blocking
                    if (!players[i].blocking && (Input.GetAxis("HorizontalP" + (i + 1)) != 0 || Input.GetAxis("VerticalP" + (i + 1)) != 0))
                    {
                        playersRB[i].AddForce(new Vector3(Input.GetAxis("HorizontalP" + (i + 1)) * speed, 0, -Input.GetAxis("VerticalP" + (i + 1)) * speed), ForceMode.Impulse);
                        playersRB[i].rotation = Quaternion.RotateTowards(playersRB[i].rotation, Quaternion.LookRotation(new Vector3(Input.GetAxis("HorizontalP" + (i + 1)), 0, -Input.GetAxis("VerticalP" + (i + 1))), Vector3.up), rotSpeed);
                        playersAni[i].SetInteger("Anim", (int)AnimSelector.Run);
                    }
                    else if (players[i].blocking)
                    {
                        playersRB[i].AddForce(new Vector3(Input.GetAxis("HorizontalP" + (i + 1)) * ((speed * blockSpeedMultiplier) * playersRB[i].mass), 0, -Input.GetAxis("VerticalP" + (i + 1)) * ((speed * blockSpeedMultiplier) * playersRB[i].mass)), ForceMode.Impulse);
                        //only rotate if you have a value to rotate to
                        if (Input.GetAxis("R_StickHorizontalP" + (i + 1)) != 0 || Input.GetAxis("R_StickVerticalP" + (i + 1)) != 0)
                        {
                            playersRB[i].rotation = Quaternion.RotateTowards(playersRB[i].rotation, Quaternion.LookRotation(new Vector3(Input.GetAxis("R_StickHorizontalP" + (i + 1)), 0, -Input.GetAxis("R_StickVerticalP" + (i + 1))), Vector3.up), (rotSpeed * blockRotSpeedMultiplier));
                        }
                        playersAni[i].SetInteger("Anim", (int)AnimSelector.Run);
                    }
                    else
                    {
                        if (!players[i].blocking && (Input.GetAxis("HorizontalP" + (i + 1)) == 0 || Input.GetAxis("VerticalP" + (i + 1)) == 0))
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
                    playersAni[i].SetInteger("Anim", 0);
                }

                if (Input.GetAxis("L_BumperP" + (i + 1)) > 0 && !players[i].getAttacked())
                {
                    playersRB[i].mass = 50.0f;
                    players[i].blocking = true;
                    playersAni[i].SetInteger("Anim", (int)AnimSelector.Block);
                }
                else
                {
                    playersRB[i].mass = 1.0f;
                    players[i].blocking = false;
                    //you can't attack if you just did
                    if (Input.GetAxis("R_BumperP" + (i + 1)) > 0 && !players[i].getAttacked() && !players[i].AttackAxisUsed)
                    {
                        players[i].Attack(1);
                        players[i].AttackAxisUsed = true;
                    }
                    else if (Input.GetAxis("L_TriggerP" + (i + 1)) < 0 && !players[i].getAttacked() && !players[i].ParryAxisUsed)
                    {
                        playersAni[i].SetInteger("Anim", (int)AnimSelector.Parry);
                        players[i].Parry();
                        players[i].ParryAxisUsed = true;
                    }
                    else if (Input.GetAxis("R_TriggerP" + (i + 1)) > 0 && !players[i].getAttacked() && !players[i].AttackAxisUsed)
                    {
                        players[i].Attack(2);
                        players[i].AttackAxisUsed = true;
                    }
                    
                    if(Input.GetAxis("R_BumperP" + (i + 1)) == 0)
                    {
                        players[i].AttackAxisUsed = false;
                    }
                    if (Input.GetAxis("L_TriggerP" + (i + 1)) == 0)
                    {
                        players[i].ParryAxisUsed = false;
                    }

                }
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
}
