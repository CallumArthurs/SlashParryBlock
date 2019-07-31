using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PlayerHeartsContainer : MonoBehaviour
{
    public List<Image> hearts = new List<Image>();
    void Start()
    {
        Image[] tempImg = gameObject.GetComponentsInChildren<Image>();
        for (int i = 0; i < 5; i++)
        {
            hearts.Add(tempImg[i]);
        }
    }
}
