using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class EndGameMeshLoader : MonoBehaviour
{
    public List<GameObject> KnightRenderers;
    public List<GameObject> PlayerPortraits;
    public List<GameObject> PlayerStats;
    public EndGameInfo endInfo;
    public GameObject EndgameStatsScreen;
    private bool LoadedMeshes = false;
    private bool[] ButtonPressed = new bool[4] { false, false, false, false };
    void Start()
    {
        endInfo = GameObject.FindGameObjectWithTag("EndGameInfo").GetComponent<EndGameInfo>();
        endInfo.transform.parent = gameObject.transform;
    }

    void Update()
    {
        if (!LoadedMeshes && SceneManager.GetActiveScene().name == "EndGame")
        {
            LoadMeshes();
            LoadedMeshes = true;
        }
        else
        {
            for (int i = 0; i < 4; i++)
            {
                if (!ButtonPressed[i])
                {
                    if (Input.GetAxis("A_ButtonP" + (i + 1)) != 0.0f && EndgameStatsScreen.activeInHierarchy)
                    {
                        SceneManager.LoadScene(0);
                    }

                    if (Input.GetAxis("A_ButtonP" + (i + 1)) != 0.0f)
                    {
                        ButtonPressed[i] = true;
                        EndgameStatsScreen.SetActive(true);
                        LoadStatsUI();
                    }
                }

                if (Input.GetAxis("A_ButtonP" + (i + 1)) == 0.0f)
                {
                    ButtonPressed[i] = false;
                }
            }
        }
    }

    void LoadMeshes()
    {
        for (int i = 0; i < 4; i++)
        {
            if (i < endInfo.placement.Count)
            {
                KnightRenderers[endInfo.placement[i] - 1].GetComponent<MeshSelector>().LoadMesh(endInfo.MeshSelected[i]);
                KnightRenderers[endInfo.placement[i] - 1].GetComponentInChildren<Animator>().SetInteger("Placement", endInfo.placement[i]);
            }
            else
            {
                KnightRenderers[i].SetActive(false);
            }
        }
    }

    void LoadStatsUI()
    {
        for (int i = 0; i < 4; i++)
        {
            if (i < endInfo.placement.Count)
            {
                List<Text> tmpPlayerTextStats = new List<Text>();
                tmpPlayerTextStats.AddRange(PlayerStats[i].GetComponentsInChildren<Text>());

                tmpPlayerTextStats[0].text = "Kills: " + endInfo.playerStatsTotal[i].kills.ToString();
                tmpPlayerTextStats[1].text = "Deaths: " + endInfo.playerStatsTotal[i].Deaths.ToString();
                tmpPlayerTextStats[2].text = "Parries: " + endInfo.playerStatsTotal[i].successfulParries.ToString();
                tmpPlayerTextStats[3].text = "Damage Dealt: " + endInfo.playerStatsTotal[i].damageDealt.ToString();
                tmpPlayerTextStats[4].text = "Damage Taken: " + endInfo.playerStatsTotal[i].damageTaken.ToString();
                tmpPlayerTextStats[5].text = "Killstreak: " + endInfo.playerStatsTotal[i].killStreak.ToString();
            }
            else
            {
                PlayerPortraits[i].SetActive(false);
                PlayerStats[i].SetActive(false);
            }
        }
    }
}
