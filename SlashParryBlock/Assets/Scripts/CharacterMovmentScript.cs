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
        Parry
    }

    //this sets the default values for the players at game start
    [Header("Player data default values")]
    public int playerHealth;
    public int playerDamage,backstabDamage,riposteDamage;
    [Tooltip("this is a multiplier on knockback hit, halved for the shield")]
    public float playerKnockback;

    [Header("CharacterMovementScript values")]
    public float speed;
    public float rotSpeed;
    public PlayerData[] players;
    public List<PlayerHeartsContainer> playerHearts;
    public Text[] healthText;
    public Text[] scoreText;

    public Sprite emptyHeart, halfHeart, fullHeart;

    private List<Rigidbody> playersRB = new List<Rigidbody>();
    private List<Animator> playersAni = new List<Animator>();
    void Start()
    {
        //setting the values of the players
        for (int i = 0; i < players.Length; i++)
        {
            players[i].setHealth(playerHealth);
            players[i].setDamage(playerDamage, backstabDamage, riposteDamage);
            players[i].setKnockback(playerKnockback);
        }

        //getting the spawnpoint parent to find all the spawnpoints
        RespawnPoints[] tempobj = GameObject.FindGameObjectWithTag("SpawnPoints").GetComponentsInChildren<RespawnPoints>();

        //starting at 1 to skip the parent
        for (int i = 0; i < tempobj.Length; i++)
        {
            for (int k = 0; k < players.Length; k++)
            {
                players[k].spawnpoints.Add(tempobj[i]);
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
            if (!players[i].getIsParried())
            {
                if (i == 1)
                {
                    players[i].Attack();
                }

                //for player1 this will evaluate to "HorizontalP1"
                if (Input.GetAxis("HorizontalP" + (i + 1)) != 0 || Input.GetAxis("VerticalP" + (i + 1)) != 0)
                {
                    //playersRB[i].AddForce(new Vector3(Input.GetAxis("HorizontalP" + (i + 1)) * Time.deltaTime * speed, 0, -Input.GetAxis("VerticalP" + (i + 1)) * Time.deltaTime * speed), ForceMode.VelocityChange);
                    playersRB[i].MovePosition(playersRB[i].position + new Vector3(Input.GetAxis("HorizontalP" + (i + 1)) * Time.deltaTime * speed, 0, -Input.GetAxis("VerticalP" + (i + 1)) * Time.deltaTime * speed));
                }

                if (Input.GetAxis("R_StickHorizontalP" + (i + 1)) != 0 || Input.GetAxis("R_StickVerticalP" + (i + 1)) != 0)
                {
                    playersRB[i].rotation = Quaternion.RotateTowards(playersRB[i].rotation, Quaternion.LookRotation(new Vector3(Input.GetAxis("R_StickHorizontalP" + (i + 1)), 0, -Input.GetAxis("R_StickVerticalP" + (i + 1))), Vector3.up), rotSpeed);
                }

                if (Input.GetAxis("L_BumperP" + (i + 1)) > 0)
                {
                    players[i].blocking = true;
                    playersAni[i].SetInteger("Anim", (int)AnimSelector.Block);
                }
                else
                {
                    players[i].blocking = false;
                    if (Input.GetAxis("R_BumperP" + (i + 1)) > 0)
                    {
                        players[i].Attack();
                    }
                    else
                    {
                        if (Input.GetAxis("L_TriggerP" + (i + 1)) < 0)
                        {
                            playersAni[i].SetInteger("Anim", (int)AnimSelector.Parry);
                            players[i].Parry();
                        }
                    }
                }
            }

            float playerHealth = players[i].getHealth();
            float fullHeartAmount = players[i].getOriginalHealth() / 5;

            for (int j = 0; j < playerHearts[i].hearts.Count; j++)
            {
                if (playerHealth - fullHeartAmount >= 0)
                {
                    playerHearts[i].hearts[j].sprite = fullHeart;
                    playerHealth -= fullHeartAmount;
                }
                else if (playerHealth - (fullHeartAmount / 2) >= 0)
                {
                    playerHearts[i].hearts[j].sprite = halfHeart;
                    playerHealth = 0;
                }
                else
                {
                    playerHearts[i].hearts[j].sprite = emptyHeart;
                }
            }

            //updating the ui on game loop
            healthText[i].text = players[i].getHealth().ToString();
            scoreText[i].text = players[i].score.ToString();
        }
    }
}
