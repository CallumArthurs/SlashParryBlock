using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HitPlayers
{
    public PlayerData hitPlayerData = new PlayerData();
    public Rigidbody HitPlayersRB = new Rigidbody();
    public bool BackStab = false, Riposte = false, Normal = false;
}
