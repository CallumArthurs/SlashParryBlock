using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DynamicCamera : MonoBehaviour
{
    public CharacterMovmentScript charMovScript;
    public float ZOffset,YOffset, camSpeed, sensitivity;
    private Vector3 Averagepos;

    void Update()
    {
        Averagepos = new Vector3(0, 0, 0);
        float lowestX = 0;
        float highestX = 0;
        float lowestZ = 0;
        float highestZ = 0;
        for (int i = 0; i < 4; i++)
        {
            if(charMovScript.players[i].transform.position.x > highestX)
            {
                highestX = charMovScript.players[i].transform.position.x;
            }
            else if(charMovScript.players[i].transform.position.x < lowestX)
            {
                lowestX = charMovScript.players[i].transform.position.x;
            }

            if (charMovScript.players[i].transform.position.z > highestZ)
            {
                highestZ = charMovScript.players[i].transform.position.z;
            }
            else if (charMovScript.players[i].transform.position.z < lowestZ)
            {
                lowestZ = charMovScript.players[i].transform.position.z;
            }
        }

        for (int i = 0; i < 4; i++)
        {
            Averagepos += new Vector3(charMovScript.players[i].transform.position.x,0,charMovScript.players[i].transform.position.z);
        }
        Averagepos /= charMovScript.players.Length;
        transform.Translate((new Vector3(transform.position.x - (Averagepos.x * sensitivity), (highestX - lowestX + YOffset) * sensitivity - transform.position.y , transform.position.z - ((highestZ - lowestZ + ZOffset) * sensitivity))) * Time.deltaTime * camSpeed);
        //transform.LookAt(Averagepos);
    }
}
