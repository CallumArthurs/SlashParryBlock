using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Rigidbody))]
public class PlayerData : MonoBehaviour
{
    //All clip sounds to make it more readable when playing
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

    #region variables
    [HideInInspector]
    public int score;
    [HideInInspector]
    public bool blocking;
    [HideInInspector]
    public List<RespawnPoints> spawnpoints;

    public GameObject DizzySpinner;
    public GameObject ExcaliburObj;
    public GameObject trailEffect;
    public GameObject particles;
    public GameObject AttackParticles;
    public GameObject ShieldPos, SwordPos;
    //Sword light effect when attacking
    public GameObject Glint;

    public float ExcaliburKnockbackModifier;
    public float ExcaliburDamageModifier;

    public bool AttackAxisUsed = false, ParryAxisUsed = false;
    public bool ComboAttack = false;
    public bool Respawning = false, invulnerable = false;
    public bool Dashed = false;
    //when the player is in the air it ignores the speed limiter set on it
    public bool IgnoreSpeedLimit = false;
    public float fallTimer = 0.5f;
    public GameObject heartFollower;

    //player stats
    public int kills = 0,Deaths = 0,successfulParries = 0,killStreak = 0, killstreakTemp = 0;
    public float damageTaken = 0, damageDealt = 0;
    public int MeshSelected;
    //original health is their spawned health 
    private int originalHealth, backstabDamage, RiposteDamage;

    //how long an attack goes for this is temp fix waitng for animation
    private float AttackTimer, AttackOriginalTime;
    private float ParryTimer = 0.6f;
    private float gotParriedTimer = 2.0f;
    private float KnockbackTimer = 0.25f;
    private float RespawnTimer = 2.0f, InvulnerabilityTimer = 4.0f;
    private float DashTimer = 0.5f;
    private float radius = 0.6f;
    private float knockback;
    private float health, damage;

    private PlayerData playerLastHit;
    private AudioSource audioPlayer;
    private Vector3 OriginalPos;
    private CharacterMovmentScript charMovScript;
    private Animator animator;
    private Light halo;
    private List<Material> playerMaterial = new List<Material>();

    private AnimatorClipInfo[] AttackAnim;
    private List<AudioClip> PlayerSounds;
    private List<HitPlayers> playersHit;
    private List<PlayerData> invinciblePlayers;

    private bool attacked = false, parried = false, isParried = false, knockedback = false;
    private bool NoStock = false;
    private bool HasExcalibur = false;
    private bool GotoWhite;
    #endregion

    void Start()
    {
        spawnpoints = new List<RespawnPoints>();
        playersHit = new List<HitPlayers>();
        invinciblePlayers = new List<PlayerData>();

        //sword trail effect
        trailEffect = GetComponentInChildren<TrailRenderer>().gameObject;

        health = originalHealth;
        animator = gameObject.GetComponentInChildren<Animator>();
        charMovScript = gameObject.GetComponentInParent<CharacterMovmentScript>();
        halo = gameObject.GetComponent<Light>();
        halo.enabled = false;
        trailEffect.SetActive(false);
        //getting all the meshes that are in the player object
        SkinnedMeshRenderer[] meshes = GetComponentsInChildren<SkinnedMeshRenderer>();
        for (int i = 0; i < meshes.Length; i++)
        {
            playerMaterial.Add(meshes[i].material);
        }
    }

    void Update()
    {
        //how many lives a player has
        if (!NoStock)
        {
            //dead
            if (health <= 0)
            {
                //reset health
                health = originalHealth;
                //if they got a higher killstreak set it as such
                if (killstreakTemp > killStreak)
                {
                    killStreak = killstreakTemp;
                }
                //reset because they died
                killstreakTemp = 0;
                //if someone hit them before they died then that player gets the kill
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

            //run the timer for the attack
            AttackTimer -= Time.deltaTime;
            //runs the attack timer and the damage output
            if (attacked)
            {
                if (AttackTimer <= 0.0f)
                {
                    //animator.ResetTrigger("Attack");
                    animator.ResetTrigger("HoriAttack");
                    //turn off attack and reset timer
                    attacked = false;
                    trailEffect.SetActive(false);
                    invinciblePlayers.Clear();
                }//this is the end parry opportunity
                else if (AttackTimer <= AttackOriginalTime - 0.2f)
                {
                    Glint.SetActive(false);
                    Collider[] hits = Physics.OverlapSphere(transform.position + (transform.forward * radius), radius);

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

                        if (invinciblePlayers.Count > 0)
                        {
                            bool skip = false;
                            for (int i = 0; i < invinciblePlayers.Count; i++)
                            {
                                if (invinciblePlayers[i] == CollisionPlayerData)
                                {
                                    skip = true;
                                }
                            }

                            if (skip)
                            {
                                continue;
                            }
                        }

                        if (CollisionPlayerData.invulnerable)
                        {
                            continue;
                        }

                        //adds a new HitPlayers class and hands over the data
                        HitPlayers tmpobj = gameObject.AddComponent<HitPlayers>();
                        tmpobj.hitPlayerData = CollisionPlayerData;
                        tmpobj.HitPlayersRB = CollisionRigidBody;
                        tmpobj.ParticlePos = other.ClosestPoint(other.transform.position);
                        invinciblePlayers.Add(CollisionPlayerData);
                        playersHit.Add(tmpobj);

                        if (CollisionPlayerData != null && CollisionPlayerData != this)
                        {
                            //hit their front during riposte
                            if (Vector3.Dot(other.GetComponent<Transform>().forward, transform.forward) < 0.0f && CollisionPlayerData.isParried)
                            {
                                //reset their parry timer
                                CollisionPlayerData.gotParriedTimer = 0.2f;
                                playersHit[0].Riposte = true;
                            }
                            else if (CollisionPlayerData.blocking)
                            {                               
                                //dot product confirms which direction you hit the other player from
                                //1 = back, -1 = front
                                if (Vector3.Dot(other.GetComponent<Transform>().forward, transform.forward) > 0.0f)
                                {
                                    if (Vector3.Dot(other.GetComponent<Transform>().forward, transform.forward) > 0.7f) // hit their back with shield up
                                    {
                                        playersHit[0].BackStab = true;
                                    }
                                    else // hit their side with shield up
                                    {
                                        playersHit[0].Normal = true;
                                    }
                                }
                            }
                            else // no shield
                            {
                                if (Vector3.Dot(other.GetComponent<Transform>().forward, transform.forward) > 0.7f) // hit their back normal hit
                                {
                                    playersHit[0].BackStab = true;
                                }
                                else // hit their side or front
                                {
                                    playersHit[0].Normal = true;
                                }
                            }
                        }
                    }

                    for (int i = 0; i < playersHit.Count; i++)
                    {
                        //this stops you hitting people if you've been parried
                        if (!isParried)
                        {
                            Instantiate(AttackParticles, playersHit[i].ParticlePos, Quaternion.Euler(playersHit[i].hitPlayerData.gameObject.transform.position - transform.position));

                            if (playersHit[i].Normal)
                            {
                                playersHit[i].HitPlayersRB.velocity = new Vector3(0, 0, 0);
                                if (HasExcalibur)
                                {
                                    playersHit[i].HitPlayersRB.AddForce((playersHit[i].HitPlayersRB.transform.position - transform.position).normalized * (knockback * (ExcaliburKnockbackModifier / 100)), ForceMode.VelocityChange);
                                    playersHit[i].hitPlayerData.TakeDamage(damage * (ExcaliburDamageModifier / 100), this);
                                    damageDealt += damage * (ExcaliburDamageModifier / 100);
                                }
                                else
                                {
                                    playersHit[i].HitPlayersRB.AddForce((playersHit[i].HitPlayersRB.transform.position - transform.position).normalized * knockback, ForceMode.VelocityChange);
                                    playersHit[i].hitPlayerData.TakeDamage(damage, this);
                                    damageDealt += damage;
                                }
                                playersHit[i].hitPlayerData.knockedback = true;
                            }
                            else if (playersHit[i].BackStab)
                            {
                                playersHit[i].HitPlayersRB.velocity = new Vector3(0, 0, 0);
                                if (HasExcalibur)
                                {
                                    playersHit[i].HitPlayersRB.AddForce((playersHit[i].HitPlayersRB.transform.position - transform.position).normalized * (knockback * (ExcaliburKnockbackModifier / 100)), ForceMode.VelocityChange);
                                    playersHit[i].hitPlayerData.TakeDamage(backstabDamage * (ExcaliburDamageModifier / 100), this);
                                    damageDealt += backstabDamage * (ExcaliburDamageModifier / 100);
                                }
                                else
                                {
                                    playersHit[i].HitPlayersRB.AddForce((playersHit[i].HitPlayersRB.transform.position - transform.position).normalized * knockback, ForceMode.VelocityChange);
                                    playersHit[i].hitPlayerData.TakeDamage(backstabDamage, this);
                                    damageDealt += backstabDamage;
                                }
                                playersHit[i].hitPlayerData.knockedback = true;
                            }
                            else if (playersHit[i].Riposte)
                            {
                                playersHit[i].HitPlayersRB.velocity = new Vector3(0, 0, 0);
                                if (HasExcalibur)
                                {
                                    playersHit[i].HitPlayersRB.AddForce((playersHit[i].HitPlayersRB.transform.position - transform.position).normalized * (knockback * (ExcaliburKnockbackModifier / 100)), ForceMode.VelocityChange);
                                    playersHit[i].hitPlayerData.TakeDamage(RiposteDamage * (ExcaliburDamageModifier / 100), this);
                                    damageDealt += RiposteDamage * (ExcaliburDamageModifier / 100);
                                }
                                else
                                {
                                    playersHit[i].HitPlayersRB.AddForce((playersHit[i].HitPlayersRB.transform.position - transform.position).normalized * knockback, ForceMode.VelocityChange);
                                    playersHit[i].hitPlayerData.TakeDamage(RiposteDamage, this);
                                    damageDealt += RiposteDamage;
                                }
                                playersHit[i].hitPlayerData.knockedback = true;
                            }
                        }
                        Destroy(playersHit[i]);
                    }
                    //clear list so you don't hit them again
                    playersHit.Clear();
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
                if (gotParriedTimer <= 0.0f)
                {
                    isParried = false;
                    gotParriedTimer = 2.0f;
                }
            }
            else
            {
                DizzySpinner.SetActive(false);
                animator.SetBool("Stunned", false);
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
                    animator.SetBool("Staggered", false);
                }
            }

            if (Respawning)
            {
                //slowly lowers the intensity of the halo light
                RespawnTimer -= Time.deltaTime;
                halo.intensity -= Time.deltaTime / 2.0f;
                if (RespawnTimer <= 0.0f)
                {
                    halo.intensity = 1.0f;
                    Respawning = false;
                    RespawnTimer = 2.0f;
                }
            }

            if (invulnerable)
            {
                InvulnerabilityTimer -= Time.deltaTime;

                if (InvulnerabilityTimer <= 0.0f)
                {
                    for (int i = 0; i < playerMaterial.Count; i++)
                    {
                        playerMaterial[i].color = Color.white;
                    }
                    invulnerable = false;
                    InvulnerabilityTimer = 4.0f;
                }
                else if (InvulnerabilityTimer < 2.0f)
                {
                    halo.enabled = false;
                    if (!charMovScript.gamePaused)
                    {
                        //this flashes the player from white to black
                        if (!GotoWhite)
                        {
                            for (int i = 0; i < playerMaterial.Count; i++)
                            {
                                playerMaterial[i].color *= 0.95f;
                            }

                            if (playerMaterial[0].color.r <= 0.5f)
                            {
                                GotoWhite = true;
                            }
                        }
                        else
                        {
                            for (int i = 0; i < playerMaterial.Count; i++)
                            {
                                playerMaterial[i].color *= 1.05f;
                            }

                            if (playerMaterial[0].color.r >= 1)
                            {
                                GotoWhite = false;
                            }
                        }
                    }
                }
            }

            if (Dashed)
            {
                DashTimer -= Time.deltaTime;
                if (DashTimer <= 0.0f)
                {
                    DashTimer = 0.05f;
                    IgnoreSpeedLimit = false;
                    Dashed = false;
                }
            }

        }
    }

    public void Attack(int AttackNum)
    {
        Glint.SetActive(true);
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
            //clears the list just in case
            if (playersHit.Count != 0)
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
                    HitSomeone = true;
                    //making sure you acually hit someone, and making sure you didn't hit yourself
                    if (CollisionPlayerData != null && CollisionPlayerData != this)
                    {
                        //hit their front during riposte
                        if (Vector3.Dot(other.GetComponent<Transform>().forward, transform.forward) < 0.0f && CollisionPlayerData.isParried)
                        {
                            //reset their parry timer
                            animator.SetTrigger("Riposte");
                            playClip(ClipSelector.riposte);
                        }
                        else if (CollisionPlayerData.blocking)
                        {
                            if (AttackNum == 1)
                            {
                                if (AttackTimer > -0.2f && ComboAttack)
                                {
                                    ComboAttack = false;
                                    animator.SetTrigger("ComboAttack");
                                }
                                else
                                {
                                    ComboAttack = true;
                                    animator.SetTrigger("Attack");
                                }
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
                                    //playersHit[0].BackStab = true;
                                    playClip(ClipSelector.backstab);
                                }
                                else // hit their side with shield up
                                {
                                    //playersHit[0].Normal = true;
                                    playClip(ClipSelector.attackHit);
                                }
                            }
                            else //hit their shield
                            {
                                CollisionRigidBody.velocity = new Vector3(0, 0, 0);
                                CollisionRigidBody.AddForce((other.transform.position - transform.position).normalized * ((knockback * 0.5f) * CollisionRigidBody.mass), ForceMode.Impulse);
                                playClip(ClipSelector.block);
                            }
                        }
                        else // no shield
                        {
                            if (AttackNum == 1)
                            {
                                if (AttackTimer > -0.2f && ComboAttack)
                                {
                                    animator.SetTrigger("ComboAttack");
                                    ComboAttack = false;
                                }
                                else
                                {
                                    ComboAttack = true;
                                    animator.SetTrigger("Attack");
                                }
                            }
                            else
                            {
                                animator.SetTrigger("HoriAttack");
                            }

                            if (Vector3.Dot(other.GetComponent<Transform>().forward, transform.forward) > 0.7f) // hit their back normal hit
                            {
                                //playersHit[0].BackStab = true;
                                playClip(ClipSelector.backstab);
                            }
                            else // hit their side or front
                            {
                                //playersHit[0].Normal = true;
                                playClip(ClipSelector.attackHit);
                            }
                        }
                    }
                }
            }
        }
        //you didn't hit anyone
        if (!HitSomeone)
        {
            //still plays a sound clip and plays animation
            playClip(ClipSelector.attackMiss);
            if (AttackNum == 1)
            {
                if (AttackTimer > -0.2f && ComboAttack)
                {
                    animator.SetTrigger("ComboAttack");
                    ComboAttack = false;
                }
                else
                {
                    ComboAttack = true;
                    animator.SetTrigger("Attack");
                }
            }
            else
            {
                animator.SetTrigger("HoriAttack");
            }
        }
        //resets attack timer
        trailEffect.SetActive(true);
        AttackOriginalTime = 0.3f;
        AttackTimer = AttackOriginalTime;
    }
    public void Parry()
    {
        attacked = false;
        Glint.SetActive(false);

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
                    if (CollisionPlayerData.AttackTimer > CollisionPlayerData.AttackOriginalTime - 0.2f && CollisionPlayerData.attacked)
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
        Glint.SetActive(false);
        Instantiate(particles, transform.position, Quaternion.Euler(transform.up));
        gotParriedTimer = 2.0f;
        animator.SetInteger("Anim", 0);
        animator.SetBool("Stunned", true);
        for (int i = 0; i < playersHit.Count; i++)
        {
            Destroy(playersHit[i]);
        }
        playersHit.Clear();
    }

    public void TakeDamage(float damage)
    {
        damageTaken += damage;
        health -= damage;
        animator.SetBool("Staggered", true);
    }
    public void TakeDamage(float damage, PlayerData player)
    {
        damageTaken += damage;
        health -= damage;
        playerLastHit = player;
        animator.SetBool("Staggered", true);
    }

    #region Getters&Setters
    public void setHealth(int value)
    {
        originalHealth = value;
        health = value;
    }
    public float getHealth()
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
    public void setAttackTimer(float length)
    {
        AttackOriginalTime = length;
        AttackTimer = length;
    }
    public void SetSounds(AudioSource player,List<AudioClip> sounds)
    {
        audioPlayer = player;
        PlayerSounds = sounds;
    }
    public void SetExcalibur(bool value)
    {
        HasExcalibur = value;
        halo.enabled = value;
        ExcaliburObj.SetActive(value);
    }
    #endregion

    private void playClip(ClipSelector clip)
    {
        audioPlayer.clip = PlayerSounds[(int)clip];
        audioPlayer.Play();
    }

    private void Respawn()
    {
        GetComponent<Rigidbody>().MovePosition(new Vector3(0.0f,1000.0f,0));
        Respawning = true;
        invulnerable = true;
        halo.enabled = true;
        Glint.SetActive(false);

        attacked = false;
        parried = false;
        isParried = false;
        knockedback = false;
        Vector3 excaliburSpawn = GetComponent<Rigidbody>().position;
        Deaths++;
        playClip(ClipSelector.death);
        animator.SetInteger("Anim", 0);
        animator.SetBool("Staggered", false);
        animator.SetBool("Stunned", false);
        //sleep the rigidbody because velocity doesn't update properly
        GetComponent<Rigidbody>().Sleep();
        GetComponent<Rigidbody>().velocity  = new Vector3(0, 0, 0);
        if (HasExcalibur)
        {
            SetExcalibur(false);
            Instantiate(Resources.Load("Prefabs/p_ExcaliburIndicator"), excaliburSpawn, Quaternion.identity);
        }
        animator.SetTrigger("ResetAnimation");
        Vector3 spawnPos = charMovScript.SpawnPlayer();
        StartCoroutine(WaitAndSpawn(spawnPos));
    }

    IEnumerator WaitAndSpawn(Vector3 spawnPos)
    {
        GameObject tmpParticles;
        //figuring out what colour effect should play
        switch (MeshSelected)
        {
            case 0:
                {
                    tmpParticles = (GameObject)Instantiate(Resources.Load("particles/RespawnParticles/P_RespawnParticleBlue"), new Vector3(spawnPos.x, spawnPos.y + 0.05f, spawnPos.z), Quaternion.identity);
                    break;
                }
            case 1:
                {
                    tmpParticles = (GameObject)Instantiate(Resources.Load("particles/RespawnParticles/P_RespawnParticleGreen"), new Vector3(spawnPos.x, spawnPos.y + 0.05f, spawnPos.z), Quaternion.identity);
                    break;
                }
            case 2:
                {
                    tmpParticles = (GameObject)Instantiate(Resources.Load("particles/RespawnParticles/P_RespawnParticleYellow"), new Vector3(spawnPos.x, spawnPos.y + 0.05f, spawnPos.z), Quaternion.identity);
                    break;
                }
            case 3:
                {
                    tmpParticles = (GameObject)Instantiate(Resources.Load("particles/RespawnParticles/P_RespawnParticleRed"), new Vector3(spawnPos.x, spawnPos.y + 0.05f, spawnPos.z), Quaternion.identity);
                    break;
                }
            default:
                {
                    tmpParticles = (GameObject)Instantiate(Resources.Load("particles/RespawnParticles/P_RespawnParticleBlue"), new Vector3(spawnPos.x, spawnPos.y + 0.05f, spawnPos.z), Quaternion.identity);
                    break;
                }
        }
        yield return new WaitForSeconds(1.0f);
        GetComponent<Rigidbody>().MovePosition(spawnPos);
    }

    public void SetStock(bool Nostock)
    {
        NoStock = Nostock;
        gameObject.SetActive(!NoStock);
        heartFollower.SetActive(!NoStock);
    }
    public bool GetStock()
    {
        return (NoStock);
    }
    public void ResetPlayer()
    {
        if (HasExcalibur)
        {
            SetExcalibur(false);
            Instantiate(Resources.Load("Prefabs/p_ExcaliburIndicator"), charMovScript.ExcaliburSpawnPos.position, charMovScript.ExcaliburSpawnPos.rotation);
        }
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
    public void GameStart()
    {
        transform.position = charMovScript.SpawnPlayer();
        OriginalPos = transform.position;
    }
    private void OnDrawGizmosSelected()
    {
        //attack hitbox
        Gizmos.color = Color.green;
        Gizmos.DrawWireSphere(transform.position + (transform.forward * radius), radius);

        Gizmos.color = Color.blue;
        Gizmos.DrawWireSphere(new Vector3(transform.position.x, transform.position.y, transform.position.z), 0.25f);
    }
}