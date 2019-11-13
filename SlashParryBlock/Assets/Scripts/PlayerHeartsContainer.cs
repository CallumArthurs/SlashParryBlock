using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PlayerHeartsContainer : MonoBehaviour
{
    public List<List<GameObject>> playerHearts = new List<List<GameObject>>();
    void Start()
    {
        List<SpriteRenderer> heartstmp = new List<SpriteRenderer>();
        heartstmp.AddRange(GetComponentsInChildren<SpriteRenderer>());
        int iter = 0;
        for (int i = 0; i < 5; i++)
        {
            playerHearts.Add(new List<GameObject>());
            for (int j = 0; j < 3; j++)
            {
                playerHearts[i].Add(heartstmp[iter].gameObject);
                iter++;
            }
        }
    }
}
