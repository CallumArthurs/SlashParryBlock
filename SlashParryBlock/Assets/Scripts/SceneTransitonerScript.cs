using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SceneTransitonerScript : MonoBehaviour
{
    Animator portcullisAnimator;
    void Start()
    {
        portcullisAnimator = gameObject.GetComponentInChildren<Animator>();
    }

    public void OpenTransition()
    {
        portcullisAnimator.ResetTrigger("SceneClose");
        portcullisAnimator.SetTrigger("SceneOpen");
    }

    public void CloseTransition()
    {
        portcullisAnimator.ResetTrigger("SceneOpen");
        portcullisAnimator.SetTrigger("SceneClose");
    }
}
