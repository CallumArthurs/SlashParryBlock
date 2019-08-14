using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Rigidbody))]
public class PlayerData : MonoBehaviour
{
    public GameObject DizzySpinner;

    private enum ClipSelector
    {
        attackMiss,
        attackHit,
        backstab,
        parry,
        riposte,
        block,
        death
    }

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
    private Animator animator;
    //how long an attack goes for this is temp fix waitng for animation
    private float AttackTimer = 0.6f;
    private float ParryTimer = 0.6f;
    private float gotParriedTimer = 2.0f;
    private bool attacked = false, parried = false, isParried = false;
    private List<AudioClip> PlayerSounds = new List<AudioClip>();
    private AudioSource audioPlayer;

    private List<HitPlayers> playersHit = new List<HitPlayers>();

    public GameObject particles;
    public GameObject AttackParticles;
    void Start()
    {
        Random.InitState((int)Time.realtimeSinceStartup);

        //getting the collider that attacks people

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
                attacked = false;
                AttackTimer = 0.6f;
            }
            else if (AttackTimer <= 0.4f)
            {
                if (!isParried)
                {
                    for (int i = 0; i < playersHit.Count; i++)
                    {
                        if (playersHit[i].Normal)
                        {
                            playersHit[i].HitPlayersRB.velocity = new Vector3(0, 0, 0);
                            playersHit[i].HitPlayersRB.AddForce((playersHit[i].HitPlayersRB.transform.position - transform.position).normalized * knockback, ForceMode.VelocityChange);
                            playersHit[i].hitPlayerData.TakeDamage(damage);
                        }
                        else if (playersHit[i].BackStab)
                        {
                            playersHit[i].HitPlayersRB.velocity = new Vector3(0, 0, 0);
                            playersHit[i].HitPlayersRB.AddForce((playersHit[i].HitPlayersRB.transform.position - transform.position).normalized * knockback, ForceMode.VelocityChange);
                            playersHit[i].hitPlayerData.TakeDamage(backstabDamage);

                        }
                        else if (playersHit[i].Riposte)
                        {
                            playersHit[i].HitPlayersRB.velocity = new Vector3(0, 0, 0);
                            playersHit[i].HitPlayersRB.AddForce((playersHit[i].HitPlayersRB.transform.position - transform.position).normalized * knockback, ForceMode.VelocityChange);
                            playersHit[i].hitPlayerData.TakeDamage(RiposteDamage);

                        }
                    }
                    playersHit.Clear();
                }
            }
        }

        if (parried)
        {
            //run the timer for the attack
            ParryTimer -= Time.deltaTime;
            if (ParryTimer <= 0)
            {
                //turn off attack and reset timer
                parried = false;
                ParryTimer = 0.6f;
            }
        }

        if (isParried)
        {
            //run the timer for the attack
            gotParriedTimer -= Time.deltaTime;
            DizzySpinner.transform.Rotate(Vector3.up, 1.0f, Space.World);
            if (gotParriedTimer <= 0)
            {
                isParried = false;
                gotParriedTimer = 2.0f;
            }
        }
        else
        {
            DizzySpinner.SetActive(false);
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
            playersHit.Clear();
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
                    playersHit.Add(new HitPlayers());
                    playersHit[0].hitPlayerData = new PlayerData();
                    playersHit[0].hitPlayerData = CollisionPlayerData;
                    playersHit[0].HitPlayersRB = CollisionRigidBody;
                    HitSomeone = true;
                    //making sure you acually hit someone, and making sure you didn't hit yourself
                    if (CollisionPlayerData != null && CollisionPlayerData != this)
                    {
                        //hit their front during riposte
                        if (Vector3.Dot(other.GetComponent<Transform>().forward, transform.forward) < 0.0f && CollisionPlayerData.isParried)
                        {
                            CollisionPlayerData.gotParriedTimer = 2.0f;
                            CollisionPlayerData.isParried = false;
                            animator.SetTrigger("Riposte");
                            playersHit[0].Riposte = true;
                            playClip(ClipSelector.riposte);
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
                                    playersHit[0].BackStab = true;
                                    playClip(ClipSelector.backstab);
                                }
                                else // hit their side with shield up
                                {
                                    playersHit[0].Normal = true;
                                    playClip(ClipSelector.attackHit);
                                }
                            }
                            else //hit their shield
                            {
                                CollisionRigidBody.velocity = new Vector3(0, 0, 0);
                                CollisionRigidBody.AddForce((other.transform.position - transform.position).normalized * (knockback * 0.5f), ForceMode.Impulse);
                                playClip(ClipSelector.block);
                            }
                            Instantiate(AttackParticles, other.ClosestPoint(other.transform.position), Quaternion.Euler(other.transform.position - transform.position));
                        }
                        else // no shield
                        {
                            animator.SetTrigger("Attack");

                            if (Vector3.Dot(other.GetComponent<Transform>().forward, transform.forward) > 0.7f) // hit their back normal hit
                            {
                                playersHit[0].BackStab = true;
                                Instantiate(AttackParticles, other.ClosestPoint(other.transform.position), Quaternion.Euler(other.transform.position - transform.position));
                                playClip(ClipSelector.backstab);
                            }
                            else // hit their side or front
                            {
                                playersHit[0].Normal = true;
                                Instantiate(AttackParticles, other.ClosestPoint(other.transform.position), Quaternion.Euler(other.transform.position - transform.position));
                                playClip(ClipSelector.attackHit);
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
            playClip(ClipSelector.attackMiss);
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
                        playClip(ClipSelector.parry);
                    }
                }
            }
        }
    }

    public void Parried()
    {
        DizzySpinner.SetActive(true);
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
    public void SetSounds(AudioSource player,List<AudioClip> sounds)
    {
        audioPlayer = player;
        PlayerSounds = sounds;
    }


    private void playClip(ClipSelector clip)
    {
        audioPlayer.clip = PlayerSounds[(int)clip];
        audioPlayer.Play();
    }
    private void Respawn()
    {
        playClip(ClipSelector.death);
        //reset health
        health = originalHealth;
        //sleep the rigidbody because velocity doesn't update properly
        GetComponent<Rigidbody>().Sleep();
        GetComponent<Rigidbody>().velocity = new Vector3(0, 0, 0);

        List<Transform> GoodSpawns = new List<Transform>();

        for (int i = 0; i < spawnpoints.Count; i++)
        {
            if (spawnpoints[i].spawnCheck())
            {
                GoodSpawns.Add(spawnpoints[i].transform);
            }
        }
        GetComponent<Rigidbody>().position = GoodSpawns[Random.Range(0, GoodSpawns.Count)].position;
    }
}