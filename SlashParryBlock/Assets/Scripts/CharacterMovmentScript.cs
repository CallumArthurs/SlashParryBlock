using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CharacterMovmentScript : MonoBehaviour
{
    [Header("Player data default values")]
    public int playerHealth;
    public int playerDamage;
    [Tooltip("this is a multiplyer on knockback hit halved for the shield")]
    public float playerKnockback;

    [Header("Character movement values")]
    public float speed;
    public float rotSpeed;
    public PlayerData[] players;
    public Text[] healthText;
    public Text[] scoreText;

    private List<Rigidbody> playersRB;
    private List<Vector3> SpawnPoints;
    void Start()
    {

        GameObject[] tempobj = GameObject.FindGameObjectsWithTag("SpawnPoint");
        SpawnPoints = new List<Vector3>();
        for (int i = 0; i < tempobj.Length; i++)
        {
            SpawnPoints.Add(tempobj[i].transform.position);
        }

        playersRB = new List<Rigidbody>();
        for (int i = 0; i < 4; i++)
        {
            playersRB.Add(players[i].gameObject.GetComponent<Rigidbody>());
        }

        for (int i = 0; i < 4; i++)
        {
            players[i].setHealth(playerHealth);
            players[i].setDamage(playerDamage);
            players[i].setKnockback(playerKnockback);
        }
    }

    void Update()
    {
        for(int i = 0; i < playersRB.Count; i++)
        {
            if (Input.GetAxis("HorizontalP" + (i + 1)) != 0 || Input.GetAxis("VerticalP" + (i + 1)) != 0)
            {
                playersRB[i].MovePosition(playersRB[i].position + new Vector3(Input.GetAxis("HorizontalP" + (i + 1)) * Time.deltaTime * speed, 0, -Input.GetAxis("VerticalP" + (i + 1)) * Time.deltaTime * speed));
            }
            
            if (Input.GetAxis("R_StickHorizontalP" + (i + 1)) != 0 || Input.GetAxis("R_StickVerticalP" + (i + 1)) != 0)
            {
                playersRB[i].rotation = Quaternion.RotateTowards(playersRB[i].rotation, Quaternion.LookRotation(new Vector3(Input.GetAxis("R_StickHorizontalP" + (i + 1)), 0, -Input.GetAxis("R_StickVerticalP" + (i + 1))), Vector3.up), rotSpeed);
            }

            if (Input.GetAxis("L_BumperP" + (i + 1)) > 0){
                players[i].blocking = true;
            }
            else
            {
                players[i].blocking = false;
                if (Input.GetAxis("R_BumperP" + (i + 1)) > 0)
                {
                    players[i].Attack();
                }
            }
            healthText[i].text = players[i].getHealth().ToString();
            scoreText[i].text = players[i].score.ToString();
        }
    }
}
