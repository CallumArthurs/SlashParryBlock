using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class GameUIContainer : MonoBehaviour
{
    public List<GameObject> PlayerlivesImage;
    public List<RectTransform> portPositions;
    public List<PlayerHeartsContainer> playerHearts;
    public List<GameObject> ProfileRing;
    public List<GameObject> playerPortraits;
    public List<GameObject> PlayerRoundStats;
    public List<GameObject> PlayerRoundPortraits;
    public List<RawImage> readyUpImages;
    public List<Text> readyUpText;
    public List<GameObject> playerReadyUpPanels;
    public GameObject readyUpScreen, playerStatsUI,GameScreenUI;
    public GameObject PauseMenu,ParryTutorialScreen;
    public Text GameTimer;
    public Text ControlSchemeIndicator;
}
