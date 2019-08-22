using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

[CreateAssetMenu(fileName = "Data", menuName = "ScriptableObjects/SpawnManagerScriptableObject", order = 1)]
public class SceneSelector : ScriptableObject
{
    public enum SceneSelecter
    {
        SplashScreen,
        MainMenu,
        settings,
        PreGameSelection,
        Game
    }

    public void SceneLoader(SceneSelecter scene)
    {
        SceneManager.LoadScene((int)scene);
    }
    public void SceneLoader(int scene)
    {
        SceneManager.LoadScene(scene);
    }

    public void ReloadScene()
    {
        SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex);
    }
}
