using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CharacterMovmentScript : MonoBehaviour
{
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
    public Text[] healthText;
    public Text[] scoreText;

    private List<Rigidbody> playersRB = new List<Rigidbody>();
    void Start()
    {
        //setting the values of the players
        for (int i = 0; i < 4; i++)
        {
            players[i].setHealth(playerHealth);
            players[i].setDamage(playerDamage, backstabDamage, riposteDamage);
            players[i].setKnockback(playerKnockback);
        }
        //getting the spawnpoint parent to find all the spawnpoints
        Transform[] tempobj = GameObject.FindGameObjectWithTag("SpawnPoints").GetComponentsInChildren<Transform>();
        //starting at 1 to skip the parent
        for (int i = 1; i < tempobj.Length; i++)
        {
            for (int k = 0; k < 4; k++)
            {
                players[k].spawnpoints.Add(tempobj[i].position);
            }
        }
        //getting a reference to all the player's rigidbodies
        for (int i = 0; i < 4; i++)
        {
            playersRB.Add(players[i].gameObject.GetComponent<Rigidbody>());
        }
    }

    void Update()
    {
        //iterate through all the players
        for(int i = 0; i < playersRB.Count; i++)
        {
            if (!players[i].getIsParried())
            {
                //for player1 this will evaluate to "HorizontalP1"
                if (Input.GetAxis("HorizontalP" + (i + 1)) != 0 || Input.GetAxis("VerticalP" + (i + 1)) != 0)
                {
                    playersRB[i].MovePosition(playersRB[i].position + new Vector3(Input.GetAxis("HorizontalP" + (i + 1)) * Time.deltaTime * speed, 0, -Input.GetAxis("VerticalP" + (i + 1)) * Time.deltaTime * speed));
                }

                if (Input.GetAxis("R_StickHorizontalP" + (i + 1)) != 0 || Input.GetAxis("R_StickVerticalP" + (i + 1)) != 0)
                {
                    playersRB[i].rotation = Quaternion.RotateTowards(playersRB[i].rotation, Quaternion.LookRotation(new Vector3(Input.GetAxis("R_StickHorizontalP" + (i + 1)), 0, -Input.GetAxis("R_StickVerticalP" + (i + 1))), Vector3.up), rotSpeed);
                }

                if (Input.GetAxis("L_BumperP" + (i + 1)) > 0 && !players[i].getParried())
                {
                    players[i].blocking = true;
                }
                else
                {
                    players[i].blocking = false;
                    if (Input.GetAxis("R_BumperP" + (i + 1)) > 0 && !players[i].getParried())
                    {
                        players[i].Attack();
                    }
                    else
                    {
                        if (Input.GetAxis("L_TriggerP" + (i + 1)) < 0)
                        {
                            players[i].Parry();
                        }
                    }
                }

            }
            //updating the ui on game loop
            healthText[i].text = players[i].getHealth().ToString();
            scoreText[i].text = players[i].score.ToString();
        }
    }
}
