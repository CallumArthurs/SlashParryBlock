using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class MatchGameplay : MonoBehaviour
{
    public enum Gamemode
    {
        Vanilla = 1,
        Stock
    }

    public Gamemode gameMode;
    public int Rounds = 1;
    public float RoundLength;
    public int PlayerLives = 1;
    public GameObject RoundStatsUI, GameUI;

    private bool playMatch = false, restartGame = false;
    private CharacterMovmentScript CharMovScript;
    public Text Timer;
    private float RoundTimer;
    private List<PlayerStats> playerStatsCurRound = new List<PlayerStats>();
    private List<PlayerStats> playerStatsTotal = new List<PlayerStats>();
    private Text[] player1Statstxt;
    private Text[] player2Statstxt;
    private Text[] player3Statstxt;
    private Text[] player4Statstxt;

    void Start()
    {
        CharMovScript = gameObject.GetComponent<CharacterMovmentScript>();
        for (int i = 0; i < 4; i++)
        {
            playerStatsTotal.Add(new PlayerStats());
            playerStatsCurRound.Add(new PlayerStats());
        }

        player1Statstxt = (GameObject.FindGameObjectWithTag("Player1Stats").GetComponentsInChildren<Text>());
        player2Statstxt = (GameObject.FindGameObjectWithTag("Player2Stats").GetComponentsInChildren<Text>());
        player3Statstxt = (GameObject.FindGameObjectWithTag("Player3Stats").GetComponentsInChildren<Text>());
        player4Statstxt = (GameObject.FindGameObjectWithTag("Player4Stats").GetComponentsInChildren<Text>());


        RoundTimer = RoundLength;
        StartMatch();
    }

    void StartMatch()
    {
        playMatch = true;
        RoundStatsUI.SetActive(false);
    }

    void Update()
    {
        //if (Input.GetKeyDown(KeyCode.Space))
        //{
        //    playMatch = true;
        //    for (int i = 0; i < 4; i++)
        //    {
        //        CharMovScript.players[i].ResetPlayer();
        //    }
        //}

        if (playMatch)
        {
            RoundTimer -= Time.deltaTime;
            if (RoundTimer <= 0.0f)
            {
                RoundEnd();
            }

            for (int i = 0; i < 4; i++)
            {
                playerStatsCurRound[i].Deaths = CharMovScript.players[i].Deaths;
            }

            switch (gameMode)
            {
                case Gamemode.Vanilla:
                    {
                        break;
                    }
                case Gamemode.Stock:
                    {
                        for (int i = 0; i < 4; i++)
                        {
                            if ((PlayerLives - playerStatsCurRound[i].Deaths) <= 0)
                            {
                                CharMovScript.players[i].SetStock(true);
                            }
                        }
                        break;
                    }
            }
        }
        else
        {
            if (Input.GetKeyDown(KeyCode.Joystick1Button0))
            {
                GameUI.SetActive(true);
                if (Rounds == 0 && restartGame)
                {
                    SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex);
                }

                for (int i = 0; i < 4; i++)
                {
                    CharMovScript.players[i].ResetPlayer();
                }

                RoundTimer = RoundLength;
                StartMatch();
            }
        }
        UpdateUI();
    }

    void UpdateUI()
    {
        Timer.text = RoundTimer.ToString("F2");
    }

    void RoundEnd()
    {
        GameUI.SetActive(false);
        RoundStatsUI.SetActive(true);
        playerStatsCurRound.Clear();
        for (int i = 0; i < 4; i++)
        {
            playerStatsCurRound.Add(new PlayerStats(CharMovScript.players[i].kills, CharMovScript.players[i].Deaths, CharMovScript.players[i].successfulParries,
                                                    CharMovScript.players[i].damageDealt, CharMovScript.players[i].damageTaken, CharMovScript.players[i].killStreak));


            playerStatsTotal[i].kills += playerStatsCurRound[i].kills;
            playerStatsTotal[i].Deaths += playerStatsCurRound[i].Deaths;
            playerStatsTotal[i].successfulParries += playerStatsCurRound[i].successfulParries;
            playerStatsTotal[i].damageDealt += playerStatsCurRound[i].damageDealt;
            playerStatsTotal[i].damageTaken += playerStatsCurRound[i].damageTaken;

            if (playerStatsCurRound[i].killStreak < CharMovScript.players[i].killstreakTemp)
            {
                playerStatsCurRound[i].killStreak = CharMovScript.players[i].killstreakTemp;
            }

            if (playerStatsCurRound[i].killStreak >  playerStatsTotal[i].killStreak)
            {
                playerStatsTotal[i].killStreak = playerStatsCurRound[i].killStreak;
            }
        }

        #region disgusting
        player1Statstxt[0].text = "Kills: " +       playerStatsCurRound[0].kills.ToString();
        player1Statstxt[1].text = "Deaths: " +      playerStatsCurRound[0].Deaths.ToString();
        player1Statstxt[2].text = "Parries: " +     playerStatsCurRound[0].successfulParries.ToString();
        player1Statstxt[3].text = "Damage Dealt: " +playerStatsCurRound[0].damageDealt.ToString();
        player1Statstxt[4].text = "Damage Taken: " +playerStatsCurRound[0].damageTaken.ToString();
        player1Statstxt[5].text = "Kill Streak: " + playerStatsCurRound[0].killStreak.ToString();

        player2Statstxt[0].text = "Kills: " +       playerStatsCurRound[1].kills.ToString();
        player2Statstxt[1].text = "Deaths: " +      playerStatsCurRound[1].Deaths.ToString();
        player2Statstxt[2].text = "Parries: " +     playerStatsCurRound[1].successfulParries.ToString();
        player2Statstxt[3].text = "Damage Dealt: " +playerStatsCurRound[1].damageDealt.ToString();
        player2Statstxt[4].text = "Damage Taken: " +playerStatsCurRound[1].damageTaken.ToString();
        player2Statstxt[5].text = "Kill Streak: " + playerStatsCurRound[1].killStreak.ToString();

        player3Statstxt[0].text = "Kills: " +       playerStatsCurRound[2].kills.ToString();
        player3Statstxt[1].text = "Deaths: " +      playerStatsCurRound[2].Deaths.ToString();
        player3Statstxt[2].text = "Parries: " +     playerStatsCurRound[2].successfulParries.ToString();
        player3Statstxt[3].text = "Damage Dealt: " +playerStatsCurRound[2].damageDealt.ToString();
        player3Statstxt[4].text = "Damage Taken: " +playerStatsCurRound[2].damageTaken.ToString();
        player3Statstxt[5].text = "Kill Streak: " + playerStatsCurRound[2].killStreak.ToString();

        player4Statstxt[0].text = "Kills: " +       playerStatsCurRound[3].kills.ToString();
        player4Statstxt[1].text = "Deaths: " +      playerStatsCurRound[3].Deaths.ToString();
        player4Statstxt[2].text = "Parries: " +     playerStatsCurRound[3].successfulParries.ToString();
        player4Statstxt[3].text = "Damage Dealt: " +playerStatsCurRound[3].damageDealt.ToString();
        player4Statstxt[4].text = "Damage Taken: " +playerStatsCurRound[3].damageTaken.ToString();
        player4Statstxt[5].text = "Kill Streak: " + playerStatsCurRound[3].killStreak.ToString();
        #endregion

        Rounds--;

        playMatch = false;
        if (Rounds == 0)
        {
            MatchEnd();
        }

        Debug.Log("Round End");
    }

    void MatchEnd()
    {
        playMatch = false;
        restartGame = true;
        Debug.Log("MatchEnd");
        //move to stats screen
    }
}
