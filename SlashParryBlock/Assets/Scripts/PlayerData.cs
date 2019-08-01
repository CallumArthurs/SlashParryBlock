﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Rigidbody))]
public class PlayerData : MonoBehaviour
{
    [HideInInspector]
    public int score;
    [HideInInspector]
    public bool blocking;
    [HideInInspector]
    public List<RespawnPoints> spawnpoints = new List<RespawnPoints>();

    //original health is their spawned health 
    private int originalHealth, health;
    private int damage, backstabDamage, RiposteDamage;
    private float knockback;
    private BoxCollider swordCollider;
    private Animator animator;
    //how long an attack goes for this is temp fix waitng for animation
    private float AttackTimer = 1.2f;
    private float ParryTimer = 0.5f;
    private float gotParriedTimer = 2.0f;
    private bool attacked = false, parried = false, isParried = false, alreadyAttacked = false;

    public GameObject particles;
    public GameObject AttackParticles;
    void Start()
    {
        //getting the collider that attacks people
        swordCollider = gameObject.GetComponentInChildren<BoxCollider>();

        animator = gameObject.GetComponentInChildren<Animator>();
    }

    void Update()
    {
        if (health <= 0)
        {
            Respawn();
        }

        if (transform.position.y <= -5.0f)
        {
            health = 0;
        }

        if (animator.GetInteger("Anim") == 2 && !blocking)
        {
            animator.SetInteger("Anim", 0);
        }

        if (attacked)
        {
            //run the timer for the attack
            AttackTimer -= Time.deltaTime;
            if (AttackTimer <= 0 && animator.GetCurrentAnimatorStateInfo(0).IsName("Idle"))
            {
                //turn off attack and reset timer
                swordCollider.enabled = false;
                attacked = false;
                AttackTimer = 1.2f;
                alreadyAttacked = false;
            }
        }

        if (parried)
        {
            //run the timer for the attack
            ParryTimer -= Time.deltaTime;
            if (ParryTimer <= 0)
            {
                //turn off attack and reset timer
                swordCollider.enabled = false;
                parried = false;
                ParryTimer = 0.5f;
            }
        }

        if (isParried)
        {
            //run the timer for the attack
            gotParriedTimer -= Time.deltaTime;
            if (gotParriedTimer <= 0)
            {
                isParried = false;
                gotParriedTimer = 2.0f;
            }
        }
    }

    public void Attack()
    {
        //makes sure you can't reset the timer
        if (attacked || parried)
        {
            return;
        }
        animator.SetInteger("Anim", 1);
        swordCollider.enabled = true;
        attacked = true;
    }

    public void Parry()
    {
        attacked = false;
        AttackTimer = 1.2f;
        if (parried)
        {
            return;
        }
        swordCollider.enabled = true;
        parried = true;
    }

    public void Parried()
    {
        Instantiate(particles, transform.position, Quaternion.Euler(transform.up));
        animator.SetInteger("Anim", 0);
    }

    public void TakeDamage(int damage)
    {
        health -= damage;
        Debug.Log("Hit");
    }

    public void setHealth(int value)
    {
        originalHealth = value;
        health = value;
    }
    public int getHealth()
    {
        return (health);
    }
    public int getOriginalHealth()
    {
        return (originalHealth);
    }
    public void setDamage(int value, int backValue, int ripValue)
    {
        damage = value;
        backstabDamage = backValue;
        RiposteDamage = ripValue;
    }
    public void setKnockback(float value)
    {
        knockback = value;
    }
    public bool getParried()
    {
        return (parried);
    }
    public bool getIsParried()
    {
        return (isParried);
    }
    public bool getAttacked()
    {
        return (attacked);
    }

    private void Respawn()
    {
        //reset health
        health = originalHealth;
        //sleep the rigidbody because velocity doesn't update properly
        GetComponent<Rigidbody>().Sleep();
        GetComponent<Rigidbody>().velocity = new Vector3(0,0,0);

        for (int i = 0; i < spawnpoints.Count; i++)
        {
            RespawnPoints PotentialSpawn = spawnpoints[i];
            if (PotentialSpawn.spawnCheck())
            {
                GetComponent<Rigidbody>().position = PotentialSpawn.transform.position;
                break;
            }
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if (alreadyAttacked == true)
        {
            return;
        }

        swordCollider.enabled = false;
        //caching these for readability
        PlayerData CollisionPlayerData = other.GetComponent<PlayerData>();
        Rigidbody CollisionRigidBody = other.GetComponent<Rigidbody>();

        if (attacked)
        {
            //making sure you acually hit someone, and making sure you didn't hit yourself
            if (CollisionPlayerData != null && CollisionPlayerData != this)
            {
                //animator.SetInteger("Anim", 0);
                //hit their front during riposte
                if (Vector3.Dot(other.GetComponent<Transform>().forward, transform.forward) < 0.0f && CollisionPlayerData.isParried)
                {
                    CollisionRigidBody.velocity = new Vector3(0, 0, 0);
                    CollisionRigidBody.AddForce((other.transform.position - transform.position) * knockback, ForceMode.Impulse);
                    CollisionPlayerData.TakeDamage(RiposteDamage);
                    CollisionPlayerData.gotParriedTimer = 2.0f;
                    CollisionPlayerData.isParried = false;
                    animator.SetInteger("Anim", 4);

                }
                else if (CollisionPlayerData.blocking)
                {
                    animator.SetInteger("Anim", 1);

                    //dot product confirms which direction you hit the other player from
                    //1 = back
                    //-1 = front
                    if (Vector3.Dot(other.GetComponent<Transform>().forward, transform.forward) > 0.0f)
                    {
                        if (Vector3.Dot(other.GetComponent<Transform>().forward, transform.forward) > 0.7f) // hit their back with shield up
                        {
                            //reset their velocity so it doesn't add up after every hit
                            CollisionRigidBody.velocity = new Vector3(0, 0, 0);
                            //knockback isn't halved as you didn't hit their shield
                            CollisionRigidBody.AddForce((other.transform.position - transform.position).normalized * knockback, ForceMode.Impulse);
                            //double damage if you hit their back
                            CollisionPlayerData.TakeDamage(backstabDamage);
                        }
                        else // hit their side with shield up
                        {
                            CollisionRigidBody.velocity = new Vector3(0, 0, 0);
                            //knockback is halved as you hit their shield
                            CollisionRigidBody.AddForce((other.transform.position - transform.position).normalized * (knockback * 0.5f), ForceMode.Impulse);
                            CollisionPlayerData.TakeDamage(damage);
                        }
                    }
                    else //hit their shield
                    {
                        CollisionRigidBody.velocity = new Vector3(0, 0, 0);
                        CollisionRigidBody.AddForce((other.transform.position - transform.position).normalized * (knockback * 0.5f), ForceMode.Impulse);
                    }
                    Instantiate(AttackParticles, other.ClosestPoint(other.transform.position), Quaternion.Euler(other.transform.position - transform.position));
                }
                else // no shield
                {
                    animator.SetInteger("Anim", 1);

                    if (Vector3.Dot(other.GetComponent<Transform>().forward, transform.forward) > 0.7f) // hit their back normal hit
                    {
                        CollisionRigidBody.velocity = new Vector3(0, 0, 0);
                        CollisionRigidBody.AddForce((other.transform.position - transform.position).normalized * knockback, ForceMode.Impulse);
                        CollisionPlayerData.TakeDamage(backstabDamage);
                        Instantiate(AttackParticles, other.ClosestPoint(other.transform.position), Quaternion.Euler(other.transform.position - transform.position));

                    }
                    else // hit their side or front
                    {
                        CollisionRigidBody.velocity = new Vector3(0, 0, 0);
                        CollisionRigidBody.AddForce((other.transform.position - transform.position).normalized * knockback, ForceMode.Impulse);
                        CollisionPlayerData.TakeDamage(damage);
                        Instantiate(AttackParticles, other.ClosestPoint(other.transform.position), Quaternion.Euler(other.transform.position - transform.position));
                    }
                }
            }
            else
            {
                animator.SetInteger("Anim", 1);
                return;
            }
            //check if you killed them and add points if so
            if (other.GetComponent<PlayerData>().health <= 0)
            {
                score++;
            }
        }
        else if (parried)
        {
            if (CollisionPlayerData != null && CollisionPlayerData != this && (CollisionPlayerData.AttackTimer > 0.2f && CollisionPlayerData.attacked))
            {
                CollisionPlayerData.isParried = true;
                CollisionPlayerData.attacked = false;
                CollisionPlayerData.Parried();
                swordCollider.enabled = false;
                parried = false;
                ParryTimer = 0.5f;
            }
        }
        alreadyAttacked = true;
    }
}
