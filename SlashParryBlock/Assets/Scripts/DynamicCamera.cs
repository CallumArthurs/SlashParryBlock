using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DynamicCamera : MonoBehaviour
{
    void Start()
    {
        
    }
    public CharacterMovmentScript charMovScript;
    public float ZOffset, camSpeed;
    private Vector3 Averagepos;

    void Update()
    {
        Averagepos = new Vector3(0, 0, 0);
        for (int i = 0; i < 4; i++)
        {
            for (int j = 0; j < 3; j++)
            {

            }
        }

        for (int i = 0; i < 4; i++)
        {
            Averagepos += new Vector3(charMovScript.players[i].transform.position.x,0,charMovScript.players[i].transform.position.z);
        }
        Averagepos /= charMovScript.players.Length;

        transform.Translate((transform.position - new Vector3(Averagepos.x, transform.position.y, Averagepos.z + ZOffset)) * Time.deltaTime * camSpeed);
    }
}
