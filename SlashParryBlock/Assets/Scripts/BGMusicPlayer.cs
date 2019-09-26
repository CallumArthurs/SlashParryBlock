using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BGMusicPlayer : MonoBehaviour
{
    public List<AudioClip> music;

    private int curClip = 0;
    private AudioSource player;
    void Start()
    {
        player = gameObject.GetComponent<AudioSource>();
        player.clip = music[0];
        player.Play(44100);
    }

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.RightArrow))
        {
            player.Stop();
            curClip++;
            if (curClip > music.Count)
            {
                curClip = 0;
            }
            player.clip = music[curClip];
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
            player.Play(44100);
        }
    }
}
