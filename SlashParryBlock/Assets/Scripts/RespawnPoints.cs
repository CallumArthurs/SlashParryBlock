using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RespawnPoints : MonoBehaviour
{
    private List<PlayerData> players;
    public CharacterMovmentScript CharacterMovmentScript;
    public bool Validated = true;

    public void Setup(CharacterMovmentScript CMS)
    {
        CharacterMovmentScript = CMS;
        Validated = true;
        players = CharacterMovmentScript.players;
    }

    public bool spawnCheck()
    {
        for (int i = 0; i < players.Count; i++)
        {
            if ((players[i].gameObject.transform.position - transform.position).magnitude < 3.0f)
            {
                return false;
            }
            else if (!Physics.Raycast(transform.position, -transform.up, 5.0f))
            {
                return false;
            }
        }
        return true;
    }

    private void OnDrawGizmosSelected()
    {
        Gizmos.color = Color.red;
        Gizmos.DrawWireSphere(transform.position + (transform.forward * 1), 3);
    }
}
