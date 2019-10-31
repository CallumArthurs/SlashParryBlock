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
        //check placement of i
        for (int i = 0; i < playerStatsTotal.Count; i++)
        {
            placement.Add(playerStatsTotal.Count);
            //check against j
            for (int j = 0; j < playerStatsTotal.Count; j++)
            {
                if (playerStatsTotal[i] == playerStatsTotal[j])
                {
                    continue;
                }

                if (playerStatsTotal[i].kills == playerStatsTotal[j].kills)
                {
                    if (playerStatsTotal[i].Deaths == playerStatsTotal[j].Deaths)
                    {
                        if (playerStatsTotal[i].damageDealt > playerStatsTotal[j].damageDealt)
                        {
                            placement[i]--;
                        }
                    }
                    else if (playerStatsTotal[i].Deaths < playerStatsTotal[j].Deaths)
                    {
                        placement[i]--;
                    }
                }
                else if (playerStatsTotal[i].kills > playerStatsTotal[j].kills)
                {
                    placement[i]--;
                }
            }
        }

        //if (playerStatsTotal.Count == 2)
        //{
        //    for (int i = 0; i < 2; i++)
        //    {
        //        if (placement[i] == 2)
        //        {
        //            placement[i] = 3;
        //        }
        //    }
        //}
    }
}
