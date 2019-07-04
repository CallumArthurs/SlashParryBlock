using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CharacterMovmentScript : MonoBehaviour
{
    public float speed;
    public GameObject[] Players;
    void Start()
    {
        
    }

    void Update()
    {
        for(int i = 0; i < Players.Length; i++)
        {
            Players[i].transform.Translate(new Vector3(Input.GetAxis("HorizontalP" + (i + 1)) * Time.deltaTime * speed, 0, Input.GetAxis("VerticalP" + (i + 1)) * Time.deltaTime * speed));
        }
    }
}
