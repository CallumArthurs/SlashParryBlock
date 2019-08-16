using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class SceneSelector : MonoBehaviour
{
    public enum SceneSelecter
    {
        SplashScreen,
        MainMenu,
        settings,
        PreGameSelection,
        Game
    }

    public static void SceneLoader(SceneSelecter scene)
    {
        SceneManager.LoadScene((int)scene);
    }
}
