using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EndGameInfo : MonoBehaviour
{
    public List<int> placement = new List<int>();
    public List<int> MeshSelected;
    public List<PlayerStats> playerStatsTotal;

    private void Start()
    {
        MeshSelected = new List<int>(GameObject.FindGameObjectWithTag("levelData").GetComponent<levelLoadInfo>().meshSelected);
        DontDestroyOnLoad(gameObject);
    }

    public void CalculateWinner()
    {
        for (int i = 0; i < playerStatsTotal.Count; i++)
        {
            placement.Add(playerStatsTotal.Count);
            for (int j = 0; j < playerStatsTotal.Count; j++)
            {
                if (playerStatsTotal[i].kills > playerStatsTotal[j].kills && playerStatsTotal[i] != playerStatsTotal[j])
                {
                   placement[i]--;
                }
            }
        }
    }
}
