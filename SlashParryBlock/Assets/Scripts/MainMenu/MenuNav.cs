using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Animations;

public class MenuNav : MonoBehaviour
{
    public bool TitlePage;
    public bool MainMenu = false;

    Animation animOpen;
    // Start is called before the first frame update
    void Start()
    {
        TitlePage = true;
        animOpen = GetComponent<Animation>();
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.anyKey)
        {
            if (TitlePage == true)
            {
                animOpen.Play();
                TitlePage = false;
                MainMenu = true;
            }
        }
    }
}
