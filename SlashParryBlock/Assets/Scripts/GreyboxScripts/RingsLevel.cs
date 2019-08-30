using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RingsLevel : MonoBehaviour
{ 

    public GameObject[] Rings;
    GameObject FallingRing;

    Color Reset;

    float CurrentTime;
    float Step = 1f;

    public int LongestTime;
    public int ShortestTime;
    

    public float RespawnDelay;
    public float WarningTime;

    int RingSelector;
    bool RingChosen;

    bool Fallen;
    float ChosenFallTime;
    float TimeActivated;

    

    // Start is called before the first frame update
    void Start()
    {
        StartCoroutine(TimerRoutine());
        StartLevel();

        if (WarningTime <= 0)
        { WarningTime = 2; }

        if (RespawnDelay <=0)
        { RespawnDelay = 2; }
    }

    // Update is called once per frame
    void Update()
    {   //If CurrentTime = the randomly generated fall time, choose a ring randomly and initialise the Fall method
        if (CurrentTime == ChosenFallTime && !RingChosen)
        {
            
            RingSelector = Random.Range(0, Rings.Length);
            FallingRing = Rings[RingSelector];
            RingChosen = true;

            Fall();
        }

        if (CurrentTime == TimeActivated && Fallen)
        {
            FallingRing.SetActive(false);
            
        }

        if (CurrentTime == (TimeActivated + RespawnDelay) && Fallen)
        {
            FallingRing.SetActive(true);
            ColourReset();
            StartLevel();
        }
    }


    void Fall()
    {
        Fallen = true;

        print("falling");
        FallingRing.GetComponent<MeshRenderer>().material.color = Color.black;

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


