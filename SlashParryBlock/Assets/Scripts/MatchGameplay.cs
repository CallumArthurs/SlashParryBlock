using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

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

    private bool playMatch = false;
    private CharacterMovmentScript CharMovScript;
    public Text Timer;
    private float RoundTimer;
    private List<PlayerStats> playerStatsCurRound = new List<PlayerStats>();
    private List<PlayerStats> playerStatsTotal = new List<PlayerStats>();
    void Start()
    {
        CharMovScript = gameObject.GetComponent<CharacterMovmentScript>();
        for (int i = 0; i < 4; i++)
        {
            playerStatsTotal.Add(new PlayerStats());
            playerStatsCurRound.Add(new PlayerStats());
        }

        RoundTimer = RoundLength;
        StartMatch();
    }

    void StartMatch()
    {
        playMatch = true;
    }

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space))
        {
            playMatch = true;
            for (int i = 0; i < 4; i++)
            {
                CharMovScript.players[i].ResetPlayer();
            }
        }

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
        UpdateUI();
    }

    void UpdateUI()
    {
        Timer.text = RoundTimer.ToString("F2");
    }

    void RoundEnd()
    {
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

        Rounds--;
        RoundTimer = RoundLength;

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

        Debug.Log("MatchEnd");
        //move to stats screen
    }
}
