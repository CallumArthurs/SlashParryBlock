using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerStats
{
    public int kills, Deaths, successfulParries, damageDealt, damageTaken, killStreak;

    public PlayerStats()
    {
        kills = 0;
        Deaths = 0;
        successfulParries = 0;
        damageDealt = 0;
        damageTaken = 0;
        killStreak = 0;
    }

    public PlayerStats(int killsVal, int deathVal, int parriesVal, int damageDealtVal, int damageTakenVal, int killStreakVal)
    {
        kills = killsVal;
        Deaths = deathVal;
        successfulParries = parriesVal;
        damageDealt = damageDealtVal;
        damageTaken = damageTakenVal;
        killStreak = killStreakVal;
    }
}
