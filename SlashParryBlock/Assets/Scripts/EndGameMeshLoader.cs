using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class EndGameMeshLoader : MonoBehaviour
{
    public List<GameObject> KnightRenderers;
    public List<GameObject> PlayerPortraits;
    public List<Sprite> knightPortraitImages;
    public List<GameObject> PlayerStats;
    public EndGameInfo endInfo;
    public GameObject EndgameStatsScreen;
    public SceneTransitonerScript SceneTransScript;
    public List<GameObject> FlagPoles;
    public List<GameObject> playerStatBanners;
    public List<Sprite> PlayerBanners;
    private bool LoadedMeshes = false;
    private bool[] ButtonPressed = new bool[4] { false, false, false, false };
    private delegate void DelegateFunction();

    private DelegateFunction function;

    void Start()
    {
        endInfo = GameObject.FindGameObjectWithTag("EndGameInfo").GetComponent<EndGameInfo>();
        SceneTransScript = GameObject.FindGameObjectWithTag("SceneTransitioner").GetComponent<SceneTransitonerScript>();
        endInfo.transform.parent = gameObject.transform;
        SceneTransScript.OpenTransition();
    }

    void Update()
    {
        if (!LoadedMeshes && SceneManager.GetActiveScene().name == "EndGame_ThroneRoom")
        {
            LoadMeshes();
            LoadedMeshes = true;
        }
        else
        {
            if (SceneTransScript.portcullisAnimator.IsInTransition(0))
            {
                for (int i = 0; i < endInfo.placement.Count; i++)
                {
                    KnightRenderers[endInfo.placement[i] - 1].GetComponentInChildren<Animator>().speed = 1.0f;
                }
            }

            for (int i = 0; i < 4; i++)
            {
                if (!ButtonPressed[i])
                {
                    if (Input.GetAxis("A_ButtonP" + (i + 1)) != 0.0f && EndgameStatsScreen.activeInHierarchy)
                    {
                        SceneTransScript.CloseTransition();
                        StartCoroutine(WaitAndRunMethod(2.0f, LoadMainMenu));
                    }
                    else if (Input.GetButtonDown("B_ButtonP" + (i + 1)) && EndgameStatsScreen.activeInHierarchy)
                    {
                        EndgameStatsScreen.SetActive(false);
                    }

                    if (Input.GetAxis("A_ButtonP" + (i + 1)) != 0.0f)
                    {
                        ButtonPressed[i] = true;
                        EndgameStatsScreen.SetActive(true);
                        LoadStatsUI();
                    }
                }

                if (Input.GetAxis("A_ButtonP" + (i + 1)) == 0.0f)
                {
                    ButtonPressed[i] = false;
                }
            }
        }
    }

    void LoadMeshes()
    {
        for (int i = 0; i < 4; i++)
        {
            if (i < endInfo.placement.Count)
            {
                if (endInfo.placement[i] - 1 == 0)
                {
                    FlagPoles[endInfo.MeshSelected[i]].SetActive(true);
                }
                KnightRenderers[endInfo.placement[i] - 1].GetComponent<MeshSelector>().LoadMesh(endInfo.MeshSelected[i]);
                KnightRenderers[endInfo.placement[i] - 1].GetComponentInChildren<Animator>().SetInteger("Placement", endInfo.placement[i]);
                KnightRenderers[endInfo.placement[i] - 1].GetComponentInChildren<Animator>().speed = 0.0f;
            }
            else
            {
                KnightRenderers[i].SetActive(false);
            }
        }
    }

    void LoadStatsUI()
    {
        for (int i = 0; i < 4; i++)
        {
            if (i < endInfo.placement.Count)
            {
                List<Text> tmpPlayerTextStats = new List<Text>();
                tmpPlayerTextStats.AddRange(PlayerStats[endInfo.placement[i] - 1].GetComponentsInChildren<Text>());

                tmpPlayerTextStats[0].text = "Kills: " + endInfo.playerStatsTotal[i].kills.ToString();
                tmpPlayerTextStats[1].text = "Deaths: " + endInfo.playerStatsTotal[i].Deaths.ToString();
                tmpPlayerTextStats[2].text = "Parries: " + endInfo.playerStatsTotal[i].successfulParries.ToString();
                tmpPlayerTextStats[3].text = "Damage Dealt: " + endInfo.playerStatsTotal[i].damageDealt.ToString();
                tmpPlayerTextStats[4].text = "Damage Taken: " + endInfo.playerStatsTotal[i].damageTaken.ToString();
                tmpPlayerTextStats[5].text = "Killstreak: " + endInfo.playerStatsTotal[i].killStreak.ToString();

                PlayerPortraits[i].GetComponent<Image>().sprite = knightPortraitImages[endInfo.MeshSelected[endInfo.placement[i] - 1]];
                playerStatBanners[i].GetComponent<Image>().sprite = PlayerBanners[endInfo.MeshSelected[endInfo.placement[i] - 1]];
            }
            else
            {
                PlayerPortraits[i].SetActive(false);
                PlayerStats[i].SetActive(false);
            }
        }
    }

    private void LoadMainMenu()
    {
        SceneManager.LoadScene(0);
    }

    IEnumerator WaitAndRunMethod(float time, DelegateFunction function)
    {
        yield return new WaitForSeconds(time);
        function();
    }

}
