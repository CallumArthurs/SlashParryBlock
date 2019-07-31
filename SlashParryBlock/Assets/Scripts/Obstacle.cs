using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Obstacle : MonoBehaviour
{
    void Start()
    {
        
    }

    void Update()
    {
        
    }

    private void OnCollisionEnter(Collision collision)
    {
        Rigidbody CollisionRigidBody = collision.gameObject.GetComponent<Rigidbody>();
        if (collision.gameObject.GetComponent<PlayerData>() != null)
        {
            //reset their velocity so it doesn't add up after every hit
            CollisionRigidBody.velocity = new Vector3(0, 0, 0);
            //knockback isn't halved as you didn't hit their shield
            CollisionRigidBody.AddForce((collision.transform.position - transform.position) * 2.0f, ForceMode.Impulse);
            //double damage if you hit their back
            collision.gameObject.GetComponent<PlayerData>().TakeDamage(10);
        }
    }

}
