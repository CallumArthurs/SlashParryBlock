using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class MatchGameplay : MonoBehaviour
{
    public enum Gamemode
    {
        Timer = 1,
        Stock
    }

    public Gamemode gameMode;
    public int Rounds = 1;
    public float RoundLength = 15;
    public int PlayerLives = 1;

    public List<Sprite> knightPortraitImages;

    [HideInInspector]
    public List<GameObject> PlayerStats;
    [HideInInspector]
    public List<GameObject> PlayerPortraits;
    [HideInInspector]
    public List<int> meshSelected;
    [HideInInspector]
    public GameObject RoundStatsUI, GameUI;
    [HideInInspector]
    public Text Timer;

    private bool playMatch = false, restartGame = false;
    private CharacterMovmentScript CharMovScript;
    private float RoundTimer;
    private List<PlayerStats> playerStatsCurRound = new List<PlayerStats>();
    private List<PlayerStats> playerStatsTotal = new List<PlayerStats>();
    private List<Text[]> endScreenStats = new List<Text[]>();
    private EndGameInfo endGameInfo;
    private int numOfLivePlayers;
    private delegate void DelegateFunction();

    private DelegateFunction function;
    void Start()
    {
        CharMovScript = gameObject.GetComponent<CharacterMovmentScript>();
        for (int i = 0; i < CharMovScript.joystickCharInputs.Count; i++)
        {
            playerStatsTotal.Add(new PlayerStats());
            playerStatsCurRound.Add(new PlayerStats());
        }
        RoundStatsUI.SetActive(true);

        //endScreenStats.Add(GameObject.FindGameObjectWithTag("Player1Stats").GetComponentsInChildren<Text>());
        //endScreenStats.Add(GameObject.FindGameObjectWithTag("Player2Stats").GetComponentsInChildren<Text>());
        //endScreenStats.Add(GameObject.FindGameObjectWithTag("Player3Stats").GetComponentsInChildren<Text>());
        //endScreenStats.Add(GameObject.FindGameObjectWithTag("Player4Stats").GetComponentsInChildren<Text>());

        RoundTimer = RoundLength;
        RoundStatsUI.SetActive(false);

        numOfLivePlayers = CharMovScript.players.Count;

        if(gameMode == Gamemode.Stock)
        {
            Timer.gameObject.transform.parent.gameObject.SetActive(false);
        }
    }

    public void StartMatch()
    {
        playMatch = true;
        GameUI.SetActive(true);
    }

    void Update()
    {
        if (CharMovScript.PlayGame)
        {
            if (playMatch && !CharMovScript.gamePaused)
            {
                for (int i = 0; i < CharMovScript.players.Count; i++)
                {
                    playerStatsCurRound[i].Deaths = CharMovScript.players[i].Deaths;
                }

                switch (gameMode)
                {
                    case Gamemode.Timer:
                        {
                            RoundTimer -= Time.deltaTime;
                            if (RoundTimer <= 0.0f)
                            {
                                RoundEnd();
                            }
                            break;
                        }
                    case Gamemode.Stock:
                        {
                            for (int i = 0; i < CharMovScript.players.Count; i++)
                            {
                                if ((PlayerLives - playerStatsCurRound[i].Deaths) <= 0)
                                {
                                    if (!CharMovScript.players[i].GetStock())
                                    {
                                        CharMovScript.players[i].SetStock(true);
                                        numOfLivePlayers--;
                                    }
                                }

                                if (numOfLivePlayers <= 1 && playMatch)
                                {
                                    RoundEnd();
                                    break;
                                }
                            }
                            break;
                        }
                }
            }
            else if (!CharMovScript.gamePaused || !playMatch)
            {
                for (int i = 0; i < CharMovScript.players.Count; i++)
                {
                    if (Input.GetButtonDown("A_Button" + CharMovScript.joystickCharInputs[i]))
                    {
                        if (restartGame)
                        {
                            SceneManager.LoadScene(0);
                        }
                        else
                        {
                            CharMovScript.FreezePlayers();
                            CharMovScript.Countdown();
                            GameUI.SetActive(true);
                            RoundStatsUI.SetActive(false);
                        }
                        for (int j = 0; j < CharMovScript.players.Count; j++)
                        {
                            CharMovScript.players[j].ResetPlayer();
                        }

                        RoundTimer = RoundLength;
                        CharMovScript.PauseGame();
                        StartMatch();
                    }

                }
            }
            UpdateUI();
        }
    }

    void UpdateUI()
    {
        int TimerMins = (int)(RoundTimer / 60.0f);
        int TimerSecs = (int)(RoundTimer % 60.0f);
        if (TimerSecs < 10)
        {
            Timer.text = TimerMins.ToString() + ":0" + ((int)(RoundTimer % 60.0f)).ToString();
        }
        else
        {
            Timer.text = TimerMins.ToString() + ":" + ((int)(RoundTimer % 60.0f)).ToString();
        }
    }

    void RoundEnd()
    {
        CharMovScript.FreezePlayers();
        numOfLivePlayers = CharMovScript.players.Count;
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
        LoadStatsUI();
        //for (int i = 0; i < CharMovScript.players.Count; i++)
        //{
        //    endScreenStats[i][0].text = "Kills: " + playerStatsCurRound[i].kills.ToString();
        //    endScreenStats[i][1].text = "Deaths: " + playerStatsCurRound[i].Deaths.ToString();
        //    endScreenStats[i][2].text = "Parries: " + playerStatsCurRound[i].successfulParries.ToString();
        //    endScreenStats[i][3].text = "Damage Dealt: " + playerStatsCurRound[i].damageDealt.ToString();
        //    endScreenStats[i][4].text = "Damage Taken: " + playerStatsCurRound[i].damageTaken.ToString();
        //    endScreenStats[i][5].text = "Kill Streak: " + playerStatsCurRound[i].killStreak.ToString();
        //}

        Rounds--;

        playMatch = false;
        if (Rounds == 0)
        {
            CharMovScript.SceneTransScript.CloseTransition();
            StartCoroutine(WaitAndRunMethod(2.0f, MatchEnd));
        }
        else
        {
            CharMovScript.PauseGame();
            GameUI.SetActive(false);
            RoundStatsUI.SetActive(true);
        }
    }

    void MatchEnd()
    {
        //restartGame = true;
        playMatch = false;
        endGameInfo = Instantiate(Resources.Load("Prefabs/EndGameInfo") as GameObject).GetComponent<EndGameInfo>();
        endGameInfo.playerStatsTotal = new List<PlayerStats>(playerStatsTotal);
        endGameInfo.CalculateWinner();
        SceneManager.LoadScene("EndGame");
    }

    public void AddTime(float value)
    {
        RoundTimer += value;
    }

    IEnumerator WaitAndRunMethod(float time, DelegateFunction function)
    {
        yield return new WaitForSeconds(time);
        function();
    }
    void LoadStatsUI()
    {
        for (int i = 0; i < 4; i++)
        {
            if (i < CharMovScript.players.Count)
            {
                List<Text> tmpPlayerTextStats = new List<Text>();
                tmpPlayerTextStats.AddRange(PlayerStats[i].GetComponentsInChildren<Text>());

                tmpPlayerTextStats[0].text = "Kills: " + playerStatsCurRound[i].kills.ToString();
                tmpPlayerTextStats[1].text = "Deaths: " + playerStatsCurRound[i].Deaths.ToString();
                tmpPlayerTextStats[2].text = "Parries: " + playerStatsCurRound[i].successfulParries.ToString();
                tmpPlayerTextStats[3].text = "Damage Dealt: " + playerStatsCurRound[i].damageDealt.ToString();
                tmpPlayerTextStats[4].text = "Damage Taken: " + playerStatsCurRound[i].damageTaken.ToString();
                tmpPlayerTextStats[5].text = "Killstreak: " + playerStatsCurRound[i].killStreak.ToString();

                PlayerPortraits[i].GetComponent<Image>().sprite = knightPortraitImages[meshSelected[i]];
            }
            else
            {
                PlayerPortraits[i].SetActive(false);
                PlayerStats[i].SetActive(false);
            }
        }
    }

}
