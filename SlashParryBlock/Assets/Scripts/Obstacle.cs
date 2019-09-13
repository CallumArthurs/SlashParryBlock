using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Obstacle : MonoBehaviour
{
    public enum Direction
    {
        AnyDirection,
        forward,
        NegX,
        PosZ,
        NegZ
    }

    public int damage;
    public float Knockback, Timer;
    public Direction direction;
    private void OnTriggerStay(Collider other)
    {
        Rigidbody CollisionRigidBody = other.gameObject.GetComponent<Rigidbody>();
        if (other.gameObject.GetComponent<PlayerData>() != null)
        {
            //reset their velocity so it doesn't add up after every hit
            //CollisionRigidBody.velocity = new Vector3(0, 0, 0);
            //double damage if you hit their back
            other.gameObject.GetComponent<PlayerData>().TakeDamage(damage);

            other.gameObject.GetComponent<PlayerData>().setKnockedBack(true,Timer);

            switch ((int)direction)
            {
                case 0://Any direction
                    {
                        CollisionRigidBody.AddForce((other.transform.position - transform.position) * Knockback, ForceMode.Impulse);
                        break;
                    }
                case 1://forward
                    {
                        CollisionRigidBody.AddForce(transform.forward * Knockback, ForceMode.Impulse);
                        gameObject.GetComponentInChildren<Animator>().SetTrigger("Spring");
                        break;
                    }
                case 2://NegX
                    {
                        CollisionRigidBody.AddForce(new Vector3(-1.0f, 0.0f, 0.0f) * Knockback, ForceMode.Impulse);
                        break;
                    }
                case 3://PosZ
                    {
                        CollisionRigidBody.AddForce(new Vector3(0.0f, 0.0f, 1.0f) * Knockback, ForceMode.Impulse);
                        break;
                    }
                case 4://NegZ
                    {
                        CollisionRigidBody.AddForce(new Vector3(0.0f, 0.0f, -1.0f) * Knockback, ForceMode.Impulse);
                        break;
                    }
                default:
                    {
                        break;
                    }
            }

           
        }
    }

}
