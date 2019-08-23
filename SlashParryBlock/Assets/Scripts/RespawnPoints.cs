using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RespawnPoints : MonoBehaviour
{
    private PlayerData[] players;
    public CharacterMovmentScript CharacterMovmentScript;
    public bool Validated = true;

    private void Start()
    {

    }

    public void Setup(CharacterMovmentScript CMS)
    {
        CharacterMovmentScript = CMS;
        Validated = true;
        players = CharacterMovmentScript.players;
    }

    public bool spawnCheck()
    {
        for (int i = 0; i < players.Length; i++)
        {
            if ((players[i].gameObject.transform.position - transform.position).magnitude < 3.0f)
            {
                return false;
            }
        }
        return true;
    }

    private void OnDrawGizmosSelected()
    {
        Gizmos.color = Color.red;
        Gizmos.DrawWireSphere(transform.position + (transform.forward * 1), 1);
    }
}
