using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class GameUIContainer : MonoBehaviour
{
    public List<PlayerHeartsContainer> playerHearts;
    public List<GameObject> playerPortraits;
    public List<RawImage> readyUpImages;
    public List<Text> readyUpText;
    public GameObject readyUpScreen;
    public GameObject playerStatsUI;
    public GameObject GameScreenUI;
    public Text GameTimer;
}
