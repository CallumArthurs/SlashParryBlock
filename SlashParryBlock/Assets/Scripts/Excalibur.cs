using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Excalibur : MonoBehaviour
{
    private void OnCollisionEnter(Collision collider)
    {
        PlayerData tmp = collider.gameObject.GetComponent<PlayerData>();

        if (tmp != null)
        {
            tmp.SetExcalibur(true);
            Destroy(gameObject);
        }
    }
}
