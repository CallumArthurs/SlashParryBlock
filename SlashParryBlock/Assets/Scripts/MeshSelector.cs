using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MeshSelector : MonoBehaviour
{
    public List<SkinnedMeshRenderer> myMeshes = new List<SkinnedMeshRenderer>();
    public KnightMeshRenderer KnightMeshRenderer;
    private bool loadedDefaultMesh = false;
    void Start()
    {
        KnightMeshRenderer = GameObject.FindGameObjectWithTag("knightMeshRendererTag").GetComponent<KnightMeshRenderer>();
        myMeshes.AddRange(gameObject.GetComponentsInChildren<SkinnedMeshRenderer>());
        if (!loadedDefaultMesh)
        {
            loadedDefaultMesh = true;
            LoadMesh(0);
        }
    }

    public int LoadMesh(int KnightID)
    {
        if (!loadedDefaultMesh)
        {
            loadedDefaultMesh = true;
        }
        return KnightMeshRenderer.LoadMesh(myMeshes, KnightID);
    }

    public void ReserveMesh(int SkinID)
    {
        KnightMeshRenderer.ReserveMesh(SkinID);
    }
    public void UnReserveMesh(int SkinID)
    {
        KnightMeshRenderer.UnReserveMesh(SkinID);
    }
}
