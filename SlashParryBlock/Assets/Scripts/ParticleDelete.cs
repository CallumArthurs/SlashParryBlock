using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ParticleDelete : MonoBehaviour
{
    ParticleSystem particles;
    void Start()
    {
        particles = gameObject.GetComponent<ParticleSystem>();
    }

    void Update()
    {
        if (particles.isStopped)
        {
            Destroy(gameObject);
        }
    }
}
