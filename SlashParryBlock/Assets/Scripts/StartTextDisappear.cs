using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class StartTextDisappear : MonoBehaviour
{
    float Step;
    float CurrentTime;

    // Start is called before the first frame update
    void Start()
    {
        CurrentTime = 0f;
        Step = 0.1f;
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetButtonDown("StartButtonP1"))
        {
            StartCoroutine(TimerRoutine());
        }

        if (CurrentTime >= 0.5f)
        {
            gameObject.SetActive(false);
        }
    }

    IEnumerator TimerRoutine()
    {
        while (CurrentTime < 1f)
        {
            yield return new WaitForSeconds(Step);
            CurrentTime += Step;
        }
    }
}
