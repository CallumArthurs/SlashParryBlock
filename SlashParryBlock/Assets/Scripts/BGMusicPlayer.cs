using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BGMusicPlayer : MonoBehaviour
{
    public List<AudioClip> music;

    private int curClip = 0;
    private AudioSource player;
    private float timer;
    void Start()
    {
        player = gameObject.GetComponent<AudioSource>();
        player.clip = music[0];
        timer = player.clip.length;
        player.Play(44100);
    }

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.RightArrow))
        {
            player.Stop();
            curClip++;
            if (curClip >= music.Count)
            {
                curClip = 0;
            }
            player.clip = music[curClip];
            timer = player.clip.length;
            player.Play(44100);
        }
        if (Input.GetKeyDown(KeyCode.LeftArrow))
        {
            player.Stop();
            curClip--;
            if (curClip < 0)
            {
                curClip = music.Count - 1;
            }
            player.clip = music[curClip];
            timer = player.clip.length;
            player.Play(44100);
        }

        if(timer <= 0.0f)
        {
            player.Stop();
            curClip++;
            if (curClip >= music.Count)
            {
                curClip = 0;
            }
            player.clip = music[curClip];
            timer = player.clip.length;
            player.Play(44100);
        }
        timer -= Time.deltaTime;
    }
}
