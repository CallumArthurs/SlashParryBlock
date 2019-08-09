using System.Collections;
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
    private float AttackTimer = 0.8f;
    private float ParryTimer = 0.5f;
    private float gotParriedTimer = 2.0f;
    private bool attacked = false, parried = false, isParried = false;

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
            if (AttackTimer <= 0.0f)
            {
                animator.ResetTrigger("Attack");
                //turn off attack and reset timer
                swordCollider.enabled = false;
                attacked = false;
                AttackTimer = 0.8f;
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

        float radius = 1;

        Collider[] hits = Physics.OverlapSphere(transform.position + (transform.forward * radius), radius);

        attacked = true;

        bool HitSomeone = false;

        if (hits.Length > 0)
        {
            foreach (Collider other in hits)
            {
                //caching these for readability
                PlayerData CollisionPlayerData = other.GetComponent<PlayerData>();
                Rigidbody CollisionRigidBody = other.GetComponent<Rigidbody>();
                if (CollisionPlayerData == null || CollisionPlayerData == this)
                {
                    continue;
                }

                if (attacked)
                {
                    HitSomeone = true;
                    //making sure you acually hit someone, and making sure you didn't hit yourself
                    if (CollisionPlayerData != null && CollisionPlayerData != this)
                    {
                        //hit their front during riposte
                        if (Vector3.Dot(other.GetComponent<Transform>().forward, transform.forward) < 0.0f && CollisionPlayerData.isParried)
                        {
                            CollisionRigidBody.velocity = new Vector3(0, 0, 0);
                            CollisionRigidBody.AddForce((other.transform.position - transform.position) * knockback, ForceMode.Impulse);
                            CollisionPlayerData.TakeDamage(RiposteDamage);
                            CollisionPlayerData.gotParriedTimer = 2.0f;
                            CollisionPlayerData.isParried = false;
                            animator.ResetTrigger("Attack");
                            animator.SetTrigger("Riposte");
                            Debug.Log(gameObject.name + " Riposte");
                        }
                        else if (CollisionPlayerData.blocking)
                        {
                            animator.SetTrigger("Attack");

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
                            animator.SetTrigger("Attack");

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
                    
                    //check if you killed them and add points if so
                    if (CollisionPlayerData.health <= 0)
                    {
                        score++;
                    }
                }
            }
        }

        if (!HitSomeone)
        {
            animator.SetTrigger("Attack");
        }
    }

    public void Parry()
    {
        attacked = false;
        if (parried)
        {
            return;
        }

        parried = true;


        float radius = 1;

        Collider[] hits = Physics.OverlapSphere(transform.position + (transform.forward * radius), radius);

        if (hits.Length > 0)
        {
            foreach (Collider other in hits)
            {
                //caching these for readability
                PlayerData CollisionPlayerData = other.GetComponent<PlayerData>();
                Rigidbody CollisionRigidBody = other.GetComponent<Rigidbody>();

                if (CollisionPlayerData == null || CollisionPlayerData == this)
                {
                    continue;
                }

                if (parried)
                {
                    if (CollisionPlayerData.GetComponentInChildren<Animator>().GetCurrentAnimatorStateInfo(0).normalizedTime < 0.5f && CollisionPlayerData.attacked)
                    {
                        CollisionPlayerData.isParried = true;
                        CollisionPlayerData.attacked = false;
                        CollisionPlayerData.Parried();
                        parried = false;
                        ParryTimer = 0.5f;
                    }
                }
            }
        }
    }

    public void Parried()
    {
        Instantiate(particles, transform.position, Quaternion.Euler(transform.up));
        animator.SetInteger("Anim", 0);
    }

    public void TakeDamage(int damage)
    {
        health -= damage;
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
        GetComponent<Rigidbody>().velocity = new Vector3(0, 0, 0);

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
}