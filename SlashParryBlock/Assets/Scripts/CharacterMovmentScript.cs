using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CharacterMovmentScript : MonoBehaviour
{
    public float speed;
    public float rotSpeed;
    public Rigidbody[] Players;
    void Start()
    {
        
    }

    void Update()
    {
        for(int i = 0; i < Players.Length; i++)
        {
            if (Input.GetAxis("HorizontalP" + (i + 1)) != 0 || Input.GetAxis("VerticalP" + (i + 1)) != 0)
            {
                Players[i].MovePosition(Players[i].position + new Vector3(Input.GetAxis("HorizontalP" + (i + 1)) * Time.deltaTime * speed, 0, -Input.GetAxis("VerticalP" + (i + 1)) * Time.deltaTime * speed));
            }
            
            if (Input.GetAxis("R_StickHorizontalP" + (i + 1)) != 0 || Input.GetAxis("R_StickVerticalP" + (i + 1)) != 0)
            {
                Players[i].rotation = Quaternion.RotateTowards(Players[i].rotation, Quaternion.LookRotation(new Vector3(Input.GetAxis("R_StickHorizontalP" + (i + 1)), 0, -Input.GetAxis("R_StickVerticalP" + (i + 1))), Vector3.up), rotSpeed);
            }

            if (Input.GetAxis("L_BumperP" + (i + 1)) > 0){
                Players[i].GetComponent<PlayerData>().Blocking = true;
            }
            else
            {
                Players[i].GetComponent<PlayerData>().Blocking = false;
                if (Input.GetAxis("R_BumperP" + (i + 1)) > 0)
                {
                    Players[i].gameObject.GetComponent<PlayerData>().Attack();
                }
            }
        }
    }
}
