using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HeartFollower : MonoBehaviour
{
    public GameObject Player;

    void Update()
    {
        if (Player != null)
        {
            gameObject.transform.position = new Vector3(Player.transform.position.x, gameObject.transform.position.y, Player.transform.position.z + 1.0f);
        }
    }
}
