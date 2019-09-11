﻿using System.Collections;
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
    private List<Text[]> endScreenStats = new List<Text[]>();

    void Start()
    {
        CharMovScript = gameObject.GetComponent<CharacterMovmentScript>();
        for (int i = 0; i < 4; i++)
        {
            playerStatsTotal.Add(new PlayerStats());
            playerStatsCurRound.Add(new PlayerStats());
        }
        RoundStatsUI.SetActive(true);

        endScreenStats.Add(GameObject.FindGameObjectWithTag("Player1Stats").GetComponentsInChildren<Text>());
        endScreenStats.Add(GameObject.FindGameObjectWithTag("Player2Stats").GetComponentsInChildren<Text>());
        endScreenStats.Add(GameObject.FindGameObjectWithTag("Player3Stats").GetComponentsInChildren<Text>());
        endScreenStats.Add(GameObject.FindGameObjectWithTag("Player4Stats").GetComponentsInChildren<Text>());

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
        if (playMatch)
        {
            RoundTimer -= Time.deltaTime;
            if (RoundTimer <= 0.0f)
            {
                RoundEnd();
            }

            for (int i = 0; i < CharMovScript.players.Count; i++)
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
                        for (int i = 0; i < CharMovScript.players.Count; i++)
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
            if (Input.anyKeyDown)
            {
                GameUI.SetActive(true);
                if (Rounds == 0 && restartGame)
                {
                    SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex);
                }

                for (int i = 0; i < CharMovScript.players.Count; i++)
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
        Timer.text = RoundTimer.ToString("F0");
    }

    void RoundEnd()
    {
        GameUI.SetActive(false);
        RoundStatsUI.SetActive(true);
        playerStatsCurRound.Clear();
        for (int i = 0; i < CharMovScript.players.Count; i++)
        {
            playerStatsCurRound.Add(new PlayerStats(CharMovScript.players[i].kills, CharMovScript.players[i].Deaths, CharMovScript.players[i].successfulParries,
                                                    (int)CharMovScript.players[i].damageDealt, (int)CharMovScript.players[i].damageTaken, CharMovScript.players[i].killStreak));


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

        for (int i = 0; i < CharMovScript.players.Count; i++)
        {
            endScreenStats[i][0].text = "Kills: " + playerStatsCurRound[i].kills.ToString();
            endScreenStats[i][1].text = "Deaths: " + playerStatsCurRound[i].Deaths.ToString();
            endScreenStats[i][2].text = "Parries: " + playerStatsCurRound[i].successfulParries.ToString();
            endScreenStats[i][3].text = "Damage Dealt: " + playerStatsCurRound[i].damageDealt.ToString();
            endScreenStats[i][4].text = "Damage Taken: " + playerStatsCurRound[i].damageTaken.ToString();
            endScreenStats[i][5].text = "Kill Streak: " + playerStatsCurRound[i].killStreak.ToString();
        }

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
