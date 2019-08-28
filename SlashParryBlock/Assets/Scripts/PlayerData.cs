using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

[RequireComponent(typeof(Rigidbody))]
public class PlayerData : MonoBehaviour
{
    //struct because scripts have to be attached to a game object
    struct HitPlayersStruct
    {
        public PlayerData hitPlayerData;
        public Rigidbody HitPlayersRB;
        public Vector3 ParticlePos;
        public bool BackStab, Riposte, Normal;

        public HitPlayersStruct(PlayerData playerData, Rigidbody playerRB, Vector3 PartPos, bool normal,bool back, bool rip)
        {
            hitPlayerData = playerData;
            HitPlayersRB = playerRB;
            ParticlePos = PartPos;
            Riposte = rip;
            Normal = normal;
            BackStab = back;
        }

        public void Setup(PlayerData playerData, Rigidbody playerRB, Vector3 PartPos)
        {
            hitPlayerData = playerData;
            HitPlayersRB = playerRB;
            ParticlePos = PartPos;
        }
    }

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
    public List<RespawnPoints> spawnpoints;

    public bool AttackAxisUsed = false, ParryAxisUsed = false;
    //original health is their spawned health 
    private int originalHealth, health,damage, backstabDamage, RiposteDamage;
    public int kills = 0,Deaths = 0,successfulParries = 0,damageDealt = 0,damageTaken = 0,killStreak = 0, killstreakTemp = 0;
    private float knockback;
    private Animator animator;
    //how long an attack goes for this is temp fix waitng for animation
    private float AttackTimer, AttackOriginalTime;
    private float ParryTimer = 0.6f;
    private float gotParriedTimer = 2.0f;
    private float KnockbackTimer = 0.25f;
    private bool attacked = false, parried = false, isParried = false, knockedback = false;
    private PlayerData playerLastHit;
    private List<AudioClip> PlayerSounds = new List<AudioClip>();
    private AudioSource audioPlayer;
    private Vector3 OriginalPos;
    private List<HitPlayers> playersHit;
    private AnimatorClipInfo[] AttackAnim;
    private float radius = 0.6f;
    private bool NoStock = false, attackComplete = false;
    private CharacterMovmentScript charMovScript;

    public GameObject particles;
    public GameObject AttackParticles;
    void Start()
    {
        spawnpoints = new List<RespawnPoints>();
        playersHit = new List<HitPlayers>();

        //intialize the random num gen
        health = originalHealth;
        animator = gameObject.GetComponentInChildren<Animator>();
        OriginalPos = transform.position;
        charMovScript = gameObject.GetComponentInParent<CharacterMovmentScript>();
    }

    void Update()
    {

        if (!NoStock)
        {
            //dead
            if (health <= 0)
            {
                health = originalHealth;
                if (killstreakTemp > killStreak)
                {
                    killStreak = killstreakTemp;
                }
                killstreakTemp = 0;
                if (playerLastHit != null)
                {
                    playerLastHit.kills++;
                    playerLastHit.killstreakTemp++;
                    playerLastHit = null;
                }
                Respawn();
            }//check if you fell out of the map
            else if (transform.position.y <= -5.0f)
            {
                health = 0;
            }

            //if not blocking reset the animator
            if (animator.GetInteger("Anim") == 2 && !blocking)
            {
                animator.SetInteger("Anim", 0);
            }

            //runs the attack timer and the damage output
            if (attacked)
            {
                //run the timer for the attack
                AttackTimer -= Time.deltaTime;
                if (AttackTimer <= 0.0f)
                {
                    animator.ResetTrigger("Attack");
                    animator.ResetTrigger("HoriAttack");
                    //turn off attack and reset timer
                    attacked = false;
                    attackComplete = false;
                    AttackTimer = AttackOriginalTime;
                }//this is the end parry opportunity
                else if (AttackTimer <= AttackOriginalTime - 0.2f)
                {
                    //this stops you hitting people if you've been parried
                    if (!isParried && !attackComplete)
                    {
                        attackComplete = true;
                        for (int i = 0; i < playersHit.Count; i++)
                        {
                            Instantiate(AttackParticles, playersHit[i].ParticlePos, Quaternion.Euler(playersHit[i].hitPlayerData.gameObject.transform.position - transform.position));

                            if (playersHit[i].Normal)
                            {
                                playersHit[i].HitPlayersRB.velocity = new Vector3(0, 0, 0);
                                playersHit[i].HitPlayersRB.AddForce((playersHit[i].HitPlayersRB.transform.position - transform.position).normalized * knockback, ForceMode.VelocityChange);
                                playersHit[i].hitPlayerData.TakeDamage(damage, this);
                                damageDealt += damage;
                                playersHit[i].hitPlayerData.knockedback = true;
                            }
                            else if (playersHit[i].BackStab)
                            {
                                playersHit[i].HitPlayersRB.velocity = new Vector3(0, 0, 0);
                                playersHit[i].HitPlayersRB.AddForce((playersHit[i].HitPlayersRB.transform.position - transform.position).normalized * knockback, ForceMode.VelocityChange);
                                playersHit[i].hitPlayerData.TakeDamage(backstabDamage, this);
                                damageDealt += backstabDamage;
                                playersHit[i].hitPlayerData.knockedback = true;
                            }
                            else if (playersHit[i].Riposte)
                            {
                                playersHit[i].HitPlayersRB.velocity = new Vector3(0, 0, 0);
                                playersHit[i].HitPlayersRB.AddForce((playersHit[i].HitPlayersRB.transform.position - transform.position).normalized * knockback, ForceMode.VelocityChange);
                                playersHit[i].hitPlayerData.TakeDamage(RiposteDamage, this);
                                damageDealt += RiposteDamage;
                                playersHit[i].hitPlayerData.knockedback = true;
                            }
                        }
                    }
                }
            }

            //makes sure you can't parry multiple times during the animation
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

            //stops you being stunned after being parried and if you're not parried turns off your dizzy spinner
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

            //essentially the same as the parry stun except no spinner and different timer
            if (knockedback)
            {
                //run the timer for the attack
                KnockbackTimer -= Time.deltaTime;
                if (KnockbackTimer <= 0)
                {
                    knockedback = false;
                    KnockbackTimer = 0.25f;
                }
            }
        }
    }

    public void Attack(int AttackNum)
    {
        //makes sure you can't reset the timer
        if (attacked || parried)
        {
            return;
        }

        Collider[] hits = Physics.OverlapSphere(transform.position + (transform.forward * radius), radius);

        attacked = true;

        bool HitSomeone = false;
        if (hits.Length > 0)
        {
            if (playersHit.Count > 0)
            {
                playersHit.Clear();
            }
            foreach (Collider other in hits)
            {
                //caching these for readability
                PlayerData CollisionPlayerData = other.GetComponent<PlayerData>();
                Rigidbody CollisionRigidBody = other.GetComponent<Rigidbody>();


                //checks if you acutally have the playerdata component and makes sure you aren't colliding with yourself
                if (CollisionPlayerData == null || CollisionPlayerData == this)
                {
                    //skips to the next collider
                    continue;
                }

                if (attacked)
                {
                    //adds a new HitPlayers class and hands over the data
                    playersHit.Add(new HitPlayers());
                    playersHit[0].SetupData(CollisionPlayerData,CollisionRigidBody, other.ClosestPoint(other.transform.position));
                    HitSomeone = true;
                    //making sure you acually hit someone, and making sure you didn't hit yourself
                    if (CollisionPlayerData != null && CollisionPlayerData != this)
                    {
                        //hit their front during riposte
                        if (Vector3.Dot(other.GetComponent<Transform>().forward, transform.forward) < 0.0f && CollisionPlayerData.isParried)
                        {
                            //reset their parry timer
                            CollisionPlayerData.gotParriedTimer = 0.2f;
                            animator.SetTrigger("Riposte");
                            playersHit[0].Riposte = true;
                            playClip(ClipSelector.riposte);
                        }
                        else if (CollisionPlayerData.blocking)
                        {
                            if (AttackNum == 1)
                            {
                                animator.SetTrigger("Attack");
                            }
                            else
                            {
                                animator.SetTrigger("HoriAttack");
                            }
                            //dot product confirms which direction you hit the other player from
                            //1 = back, -1 = front
                            if (Vector3.Dot(other.GetComponent<Transform>().forward, transform.forward) > 0.0f)
                            {
                                if (Vector3.Dot(other.GetComponent<Transform>().forward, transform.forward) > 0.7f) // hit their back with shield up
                                {
                                    playersHit[0].BackStab = true;
                                    animator.SetTrigger("Attack");
                                    playClip(ClipSelector.backstab);
                                }
                                else // hit their side with shield up
                                {
                                    playersHit[0].Normal = true;
                                    animator.SetTrigger("Attack");
                                    playClip(ClipSelector.attackHit);
                                }
                            }
                            else //hit their shield
                            {
                                CollisionRigidBody.velocity = new Vector3(0, 0, 0);
                                CollisionRigidBody.AddForce((other.transform.position - transform.position).normalized * ((knockback * 0.5f) * CollisionRigidBody.mass), ForceMode.Impulse);
                                playClip(ClipSelector.block);
                                animator.SetTrigger("Attack");
                            }
                        }
                        else // no shield
                        {
                            if (AttackNum == 1)
                            {
                                animator.SetTrigger("Attack");
                            }
                            else
                            {
                                animator.SetTrigger("HoriAttack");
                            }

                            if (Vector3.Dot(other.GetComponent<Transform>().forward, transform.forward) > 0.7f) // hit their back normal hit
                            {
                                playersHit[0].BackStab = true;
                                playClip(ClipSelector.backstab);
                                animator.SetTrigger("Attack");

                            }
                            else // hit their side or front
                            {
                                playersHit[0].Normal = true;
                                playClip(ClipSelector.attackHit);
                                animator.SetTrigger("Attack");

                            }
                        }
                    }
                }
            }
        }

        if (!HitSomeone)
        {

            playClip(ClipSelector.attackMiss);
            if (AttackNum == 1)
            {
                animator.SetTrigger("Attack");
            }
            else
            {
                animator.SetTrigger("HoriAttack");
            }
        }


        if (!animator.GetCurrentAnimatorStateInfo(1).IsName("Default"))
        {
            AttackAnim = animator.GetCurrentAnimatorClipInfo(1);

            AttackOriginalTime = AttackAnim[0].clip.length;
            AttackTimer = AttackOriginalTime;
        }
        else
        {
            AttackOriginalTime = 0.3f;
            AttackTimer = AttackOriginalTime;

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
                        successfulParries++;
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
        damageTaken += damage;
        health -= damage;
    }
    public void TakeDamage(int damage, PlayerData player)
    {
        damageTaken += damage;
        health -= damage;
        playerLastHit = player;
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
    public bool getBlocking()
    {
        return (blocking);
    }
    public bool getKnockedBack()
    {
        return knockedback;
    }
    public void setKnockedBack(bool value)
    {
        knockedback = value;
    }
    public void setKnockedBack(bool value, float Timer)
    {
        knockedback = value;
        KnockbackTimer = Timer;
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
        attacked = false;
        parried = false;
        isParried = false;
        knockedback = false;
        Deaths++;
        playClip(ClipSelector.death);
        //sleep the rigidbody because velocity doesn't update properly
        GetComponent<Rigidbody>().Sleep();
        GetComponent<Rigidbody>().velocity  = new Vector3(0, 0, 0);
        GetComponent<Rigidbody>().MovePosition(charMovScript.SpawnPlayer());
    }
    public void SetStock(bool Nostock)
    {
        NoStock = Nostock;
        gameObject.SetActive(!NoStock);
    }
    public void ResetPlayer()
    {
        gameObject.transform.position = OriginalPos;
        Deaths = 0;
        kills = 0;
        killStreak = 0;
        killstreakTemp = 0;
        successfulParries = 0;
        damageDealt = 0;
        damageTaken = 0;
        health = originalHealth;
        SetStock(false);
    }
    private void OnDrawGizmosSelected()
    {
        Gizmos.color = Color.green;
        Gizmos.DrawWireSphere(transform.position + (transform.forward * radius), radius);
    }
}