using UnityEngine;
using System.Collections;

public class SplineHandle 
{
	public Vector3 pos;
	public float direction;
	public float distance;
	public Vector3 normal;
	public GameObject parent;
	
	public SplineHandle (Vector3 newpos, float newdir, float newdist, float newnorm, GameObject newpar)
	{
		pos = newpos;
		direction = newdir;
		distance = newdist;
		normal = Util.VecForward( 1f, newnorm );
		parent = newpar;
	}
	
	public Vector3 GetStart()
	{
		return parent.transform.TransformPoint(pos);
	}
	public Vector3 GetEnd()
	{
		return parent.transform.TransformPoint( pos + Util.VecForward(distance,direction) );
	}
	public Vector3 GetNormal()
	{
		return parent.transform.TransformDirection( normal );
	}
}
