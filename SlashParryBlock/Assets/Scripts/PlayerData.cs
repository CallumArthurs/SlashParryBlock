using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerData : MonoBehaviour
{
    public int health;
    public int Damage;
    public bool Blocking;
    private BoxCollider swordCollider;
    private float AttackTimer = 0.5f;
    private bool attacked = false;
    void Start()
    {
        swordCollider = gameObject.GetComponent<BoxCollider>();
    }

    void Update()
    {
        if (health <= 0)
        {
            Debug.Log(gameObject.name + " is dead");
        }

        if (Blocking)
        {
            Debug.Log(gameObject.name + " am blocking");
        }

        if (attacked)
        {
            AttackTimer -= Time.deltaTime;
            if (AttackTimer <= 0)
            {
                swordCollider.enabled = false;
                attacked = false;
                AttackTimer = 0.5f;
                
            }
        }
    }

    public void Attack()
    {
        if (attacked)
        {
            return;
        }
        swordCollider.enabled = true;
        attacked = true;
    }
    
    void TakeDamage(int damage)
    {
        Debug.Log(gameObject.name + " am hit");
        health -= damage;
    }

    private void OnTriggerEnter(Collider other)
    {
        if (attacked)
        {
            swordCollider.enabled = false;
            if (other.GetComponent<PlayerData>() != null && other.GetComponent<PlayerData>() != this)
            {
                if (other.GetComponent<PlayerData>().Blocking)
                {
                    if (Vector3.Dot(other.GetComponent<Transform>().forward, transform.forward) > 0.0f)
                    {
                        if (Vector3.Dot(other.GetComponent<Transform>().forward, transform.forward) > 0.7f)
                        {
                            other.GetComponent<PlayerData>().TakeDamage(Damage * 2);
                            Debug.Log(gameObject.name + " get Backstabbed");
                            return;
                        }
                        other.GetComponent<PlayerData>().TakeDamage(Damage);
                    }
                    else
                    {
                        Debug.Log(gameObject.name + " get blocked");
                    }
                }
                else
                {
                    if (Vector3.Dot(other.GetComponent<Transform>().forward, transform.forward) > 0.7f)
                    {
                        other.GetComponent<PlayerData>().TakeDamage(Damage * 2);
                        Debug.Log(gameObject.name + " get Backstabbed");
                    }
                    else
                    {
                        other.GetComponent<PlayerData>().TakeDamage(Damage);
                    }
                }
            }
        }
    }
}
