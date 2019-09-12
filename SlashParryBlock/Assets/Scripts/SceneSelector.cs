using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

[CreateAssetMenu(fileName = "Data", menuName = "ScriptableObjects/SpawnManagerScriptableObject", order = 1)]
public class SceneSelector : ScriptableObject
{
    public bool AsyncLoaded = false;
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

    public Scene GetSceneAt(int value)
    {
        return SceneManager.GetSceneAt(value);
    }

    public void MoveObjToScene(GameObject obj,Scene scene)
    {
        SceneManager.MoveGameObjectToScene(obj, scene);
    }

    public IEnumerator LoadSceneAsync(int scene)
    {
        Debug.Log("Loading Scene DO NOT STOP PLAY MODE");
        AsyncOperation asyncLoad = SceneManager.LoadSceneAsync(scene);
        asyncLoad.allowSceneActivation = false;

        while (!asyncLoad.isDone)
        {
            Debug.Log(asyncLoad.progress);

            yield return asyncLoad;

            AsyncLoaded = true;
        }
    }

    public void OpenLoadedLevel()
    {
        //if (asyncLoad != null)
        //{
        //    asyncLoad.allowSceneActivation = true;
        //}
    }
}
