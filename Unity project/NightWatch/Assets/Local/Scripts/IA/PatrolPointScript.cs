using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PatrolPointScript : MonoBehaviour
{
    public bool DrawGizmos = true;
    
    public List<GameObject> PatrolPoints;
    private void OnDrawGizmos()
    {
        if (!DrawGizmos)
            return;
        Gizmos.color = Color.blue;
        if (PatrolPoints.Count == 0)
            return;
        if (PatrolPoints.Count == 1)
        {
            Gizmos.DrawLine(transform.position, PatrolPoints[0].transform.position);
        }
        else
        {
            Gizmos.DrawLine(PatrolPoints[0].transform.position, PatrolPoints[PatrolPoints.Count - 1].transform.position);
            Gizmos.DrawSphere(PatrolPoints[0].transform.position, 1);
            for (int i = 1; i < PatrolPoints.Count; i++)
            {
                Gizmos.DrawLine(PatrolPoints[i].transform.position, PatrolPoints[i - 1].transform.position);
                Gizmos.DrawSphere(PatrolPoints[i].transform.position, 1);
            }
        }
    }
}
