using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MimicMovement : MonoBehaviour
{
    public GameObject ObjectToFollow;

    void Update()
    {
        transform.position = ObjectToFollow.transform.position;
        transform.rotation = ObjectToFollow.transform.rotation;
    }
}
