using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class KnightMeshRenderer : MonoBehaviour
{
    private List<List<SkinnedMeshRenderer>> KnightMeshes;
    private List<List<SkinnedMeshRenderer>> ReservedMeshes = new List<List<SkinnedMeshRenderer>>();

    private void SetupMeshes()
    {
        KnightMeshes = new List<List<SkinnedMeshRenderer>>();
        int i = 1;

        while (true)
        {
            GameObject tmpKnight;
            tmpKnight = Resources.Load("Prefabs/p_Knight" + i + "_MeshSlave") as GameObject;
            if (tmpKnight == null)
            {
                break;
            }
            List<SkinnedMeshRenderer> KnightMesh = new List<SkinnedMeshRenderer>();
            List<SkinnedMeshRenderer> ReservedKnightMesh = new List<SkinnedMeshRenderer>();

            KnightMesh.AddRange(tmpKnight.GetComponentsInChildren<SkinnedMeshRenderer>());
            ReservedKnightMesh.AddRange(tmpKnight.GetComponentsInChildren<SkinnedMeshRenderer>());

            KnightMeshes.Add(KnightMesh);
            ReservedMeshes.Add(ReservedKnightMesh);
            i++;
        }

        //ReservedMeshes = KnightMeshes;
    }

    public int LoadMesh (List<SkinnedMeshRenderer> TargetMesh, int KnightID)
    {
        if (KnightMeshes == null)
        {
            SetupMeshes();
        }
        if (KnightID >= KnightMeshes.Count)
        {
            KnightID = 0;
        }
        else if (KnightID < 0)
        {
            KnightID = KnightMeshes.Count - 1;
        }

        for (int i = 0; i < TargetMesh.Count; i++)
        {
            TargetMesh[i].sharedMesh = KnightMeshes[KnightID][i].sharedMesh;
            TargetMesh[i].sharedMaterial = KnightMeshes[KnightID][i].sharedMaterial;
        }

        return KnightID;
    }

    public void ReserveMesh(int SkinID)
    {
        KnightMeshes.RemoveAt(SkinID);
    }
    public void UnReserveMesh(int SkinID)
    {
        KnightMeshes.Insert(SkinID, ReservedMeshes[SkinID]);
    }

}
