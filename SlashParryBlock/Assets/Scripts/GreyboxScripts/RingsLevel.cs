using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RingsLevel : MonoBehaviour
{ 

    public GameObject[] Rings;
    GameObject FallingRing;

    Color Reset;

    float CurrentTime;
    float Step = 1.0f;

    public int LongestTime;
    public int ShortestTime;

    public float ringRumbleSpeed = 1.0f;
    public float ringRumblemovement = 0.5f;
    public float ringFallSpeed = 1.0f;

    public float RespawnDelay;
    public float WarningTime;

    int RingSelector;
    bool RingChosen;
    bool goingDown = false;

    bool Fallen;
    float ChosenFallTime;
    float TimeActivated;

    void Start()
    {
        StartCoroutine(TimerRoutine());
        StartLevel();

        if (WarningTime <= 0)
        { WarningTime = 2; }

        if (RespawnDelay <=0)
        { RespawnDelay = 2; }
    }

    void Update()
    {
        //If CurrentTime = the randomly generated fall time, choose a ring randomly and initialise the Fall method
        if (CurrentTime == ChosenFallTime && !RingChosen)
        {
            
            RingSelector = Random.Range(0, Rings.Length);
            FallingRing = Rings[RingSelector];
            RingChosen = true;

            //Fall();
        }
        else if (RingChosen && !Fallen)
        {
            if (!goingDown)
            {
                if (Rings[RingSelector].transform.localPosition.y >= ringRumblemovement)
                {
                    goingDown = true;
                }
                Rings[RingSelector].transform.Translate(new Vector3(0, (1.0f * Time.deltaTime * ringRumbleSpeed), 0));
            }
            else if (goingDown)
            {
                if (Rings[RingSelector].transform.localPosition.y <= -ringRumblemovement)
                {
                    goingDown = false;
                }
                Rings[RingSelector].transform.Translate(new Vector3(0, (-1.0f * Time.deltaTime * ringRumbleSpeed), 0));
            }
        }


        if (CurrentTime >= WarningTime)
        {
            Rings[RingSelector].transform.Translate(new Vector3(0, (-1.0f * Time.deltaTime * ringFallSpeed), 0));

            Fallen = true;
        }

        if (CurrentTime == TimeActivated && !Fallen)
        {
            Fall();
            //Rings[RingSelector].transform.Translate(new Vector3(0, (-1.0f * Time.deltaTime * 5.0f), 0));
            //FallingRing.SetActive(false);
        }


        if (CurrentTime == (TimeActivated + RespawnDelay) && Fallen)
        {
            Rings[RingSelector].transform.localPosition = new Vector3(0, 0, 0);
            //ColourReset();
            StartLevel();
        }
    }

    void Fall()
    {
        //FallingRing.GetComponent<MeshRenderer>().material.color = Color.black;

        TimeActivated = CurrentTime;
        TimeActivated += WarningTime;

    }

    IEnumerator TimerRoutine()
    {
        while (CurrentTime < 50)
        {
            yield return new WaitForSeconds(Step);
            CurrentTime += Step;
        }
    }

    void ColourReset()
    {
        if (FallingRing == Rings[0])
        {
            Reset = Color.yellow;
        }

        if (FallingRing == Rings[1])
        {
            Reset = Color.blue;
        }

        if (FallingRing == Rings[2])
        {
            Reset = Color.red;
        }

        FallingRing.GetComponent<MeshRenderer>().material.color = Reset;
    }

    void StartLevel()
    {
        RingChosen = false;
        CurrentTime = 0;
        Fallen = false;
        TimeActivated = 0;
        ChosenFallTime = Random.Range(LongestTime, ShortestTime);
    }
}


