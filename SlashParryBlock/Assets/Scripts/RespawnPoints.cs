using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RespawnPoints : MonoBehaviour
{
    private PlayerData[] players;
    public CharacterMovmentScript CharacterMovmentScript;
    void Start()
    {
        players = CharacterMovmentScript.players;
    }

    public bool spawnCheck()
    {
        for (int i = 0; i < players.Length; i++)
        {
            if ((players[i].gameObject.transform.position - transform.position).magnitude < 1.0f)
            {
                Debug.Log("false");
                return false;
            }
        }
        Debug.Log("true");
        return true;
    }
}
