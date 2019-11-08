using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RingsLevel : MonoBehaviour
{ 

    public GameObject[] Rings;
    GameObject FallingRing;

    Color Reset;

    public float CurrentTime;
    float Step = 1.0f;

    public int LongestTime;
    public int ShortestTime;

    public float ringRumbleSpeed = 1.0f;
    public float ringRumblemovement = 0.5f;
    public float ringFallSpeed = 1.0f;

    public float RespawnDelay;
    public float WarningTime;

    public float maxFallDist;

    int RingSelector;
    bool RingChosen;
    bool goingDown = false;

    bool Fallen;
    public float ChosenFallTime;
    float TimeActivated;

    void Start()
    {
        StartCoroutine(TimerRoutine());
        StartLevel();

        if (WarningTime <= 0)
        { WarningTime = 2; }

        if (RespawnDelay <=0)
        { RespawnDelay = 1; }

        Random.InitState((int)Time.realtimeSinceStartup);
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
        {//warning logic
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

        if (CurrentTime == TimeActivated && !Fallen)
        {
            Fall();
            //Rings[RingSelector].transform.Translate(new Vector3(0, (-1.0f * Time.deltaTime * 5.0f), 0));
            //FallingRing.SetActive(false);
        }

        if (CurrentTime == (TimeActivated - RespawnDelay) && Fallen)
        {//moving pos to original pos (move back up)
            goingDown = false;
        }

        if (CurrentTime >= WarningTime && goingDown)
        {//falling
            if (Rings[RingSelector].transform.position.y >= maxFallDist)
            {
                Rings[RingSelector].transform.Translate(new Vector3(0, (-1.0f * Time.deltaTime * ringFallSpeed), 0));
            }

            Fallen = true;
        }

        if (CurrentTime >= (TimeActivated - RespawnDelay) && Fallen && !goingDown)
        {//reseting y pos in case of over/undershooting
            Rings[RingSelector].transform.Translate((new Vector3(Rings[RingSelector].transform.localPosition.x, 0, Rings[RingSelector].transform.localPosition.z) - Rings[RingSelector].transform.localPosition) * Time.deltaTime * 5.0f);
            //Rings[RingSelector].transform.Translate(new Vector3(0, (1.0f * Time.deltaTime * ringFallSpeed), 0));
        }


        if (CurrentTime == (TimeActivated + RespawnDelay) && Fallen)
        {
            //ColourReset();
            StartLevel();
        }

    }

    void Fall()
    {
        //FallingRing.GetComponent<MeshRenderer>().material.color = Color.black;

        TimeActivated = CurrentTime;
        TimeActivated += WarningTime;
        goingDown = true;
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
        Rings[RingSelector].transform.localPosition = new Vector3(0, 0, 0);
        RingChosen = false;
        CurrentTime = 0;
        Fallen = false;
        TimeActivated = 0;
        ChosenFallTime = Random.Range(LongestTime, ShortestTime);
    }
}


