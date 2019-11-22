using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Obstacle : MonoBehaviour
{
    public enum Direction
    {
        AnyDirection,
        forward,
        ClosestToPlayer,
        DirectionPreset,
        Bouncey
    }

    public int damage;
    public float Knockback, Timer;
    public Direction direction;
    public GameObject DirectionObj;
    public Vector3 ClosestPoint;
    private void OnTriggerEnter(Collider other)
    {
        Rigidbody CollisionRigidBody = other.gameObject.GetComponent<Rigidbody>();
        if (other.gameObject.GetComponent<PlayerData>() != null)
        {
            //reset their velocity so it doesn't add up after every hit
            //double damage if you hit their back
            other.gameObject.GetComponent<PlayerData>().TakeDamage(damage);
            other.gameObject.GetComponent<PlayerData>().PlayObstacleHit();
            //Vector3 ClosestPoint = other.ClosestPoint(transform.position).normalized;
            ClosestPoint = gameObject.GetComponent<Collider>().ClosestPoint(other.transform.position);
            other.gameObject.GetComponent<PlayerData>().setKnockedBack(true,Timer);

            if (ClosestPoint.y > transform.position.y)
            {
                CollisionRigidBody.velocity = new Vector3(CollisionRigidBody.velocity.x, 0, CollisionRigidBody.velocity.z);
            }
            else
            {
                CollisionRigidBody.velocity = new Vector3(0, 0, 0);
            }

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
                        //CollisionRigidBody.AddForce((-CollisionRigidBody.velocity) * Knockback, ForceMode.Impulse);
                        CollisionRigidBody.AddForce((other.transform.position - ClosestPoint) * Knockback, ForceMode.Impulse);
                        break;
                    }
                case 3://PosZ
                    {
                        CollisionRigidBody.AddForce((DirectionObj.transform.position - other.transform.position) * Knockback, ForceMode.Impulse);

                        //CollisionRigidBody.AddForce(new Vector3(0.0f, 0.0f, 1.0f) * Knockback, ForceMode.Impulse);
                        break;
                    }
                case 4://NegZ
                    {
                        CollisionRigidBody.AddForce( new Vector3(0.0f, 1.0f, 0.0f) * Knockback, ForceMode.Impulse);
                        break;
                    }
                default:
                    {
                        break;
                    }
            }

           
        }
    }
    private void OnDrawGizmos()
    {
        Gizmos.color = Color.blue;
        Gizmos.DrawWireSphere(ClosestPoint, 0.5f);
    }
}
