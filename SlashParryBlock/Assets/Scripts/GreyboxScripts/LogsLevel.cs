using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LogsLevel : MonoBehaviour { 

    public GameObject Log1;
    public GameObject Log2;
    public GameObject Log3;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        Log1.transform.Rotate(Vector3.up, 20 * Time.deltaTime);
        //Log1.GetComponent<Rigidbody>().MoveRotation(Quaternion.RotateTowards(Log1.GetComponent<Rigidbody>().rotation, Log1.GetComponent<Rigidbody>().rotation += 20));

    }
}
