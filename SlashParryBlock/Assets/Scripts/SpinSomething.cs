using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpinSomething : MonoBehaviour
{
    public enum Axis
    {
        XAxis,
        YAxis,
        ZAxis
    }
    public Axis axis;
    public float speed = 1.0f;
    public float delay = 0.0f;

    void FixedUpdate()
    {
        delay -= Time.deltaTime;
        if (delay <= 0.0f)
        {
            switch ((int)axis)
            {
                case 0:
                    transform.Rotate(Vector3.right, speed, Space.World);
                    break;
                case 1:
                    transform.Rotate(Vector3.up, speed, Space.World);
                    break;
                case 2:
                    transform.Rotate(Vector3.forward, speed, Space.World);
                    break;
            }
        }
    }
}
