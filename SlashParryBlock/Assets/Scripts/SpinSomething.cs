using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpinSomething : MonoBehaviour
{
    public float speed = 1.0f;

    void Update()
    {
        transform.Rotate(Vector3.up, speed, Space.World);
    }
}
