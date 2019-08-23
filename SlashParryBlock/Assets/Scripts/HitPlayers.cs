using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HitPlayers : MonoBehaviour
{
    public PlayerData hitPlayerData = new PlayerData();
    public Rigidbody HitPlayersRB = new Rigidbody();
    public Vector3 ParticlePos;
    public bool BackStab = false, Riposte = false, Normal = false;

    public HitPlayers(PlayerData playerData, Rigidbody playerRB, Vector3 PartPos)
    {
        hitPlayerData = playerData;
        HitPlayersRB = playerRB;
        ParticlePos = PartPos;
    }
}
