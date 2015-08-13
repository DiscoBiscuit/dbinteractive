using UnityEngine;
using System.Collections;

public class SplineHandle 
{
	public float lx;
	public float ly;
	public float lz;
	public float direction;
	public float distance;
	public Vector3 normal;
	public GameObject parent;
	
	public SplineHandle (float nx, float ny, float nz, float newdir, float newdist, float newnorm, GameObject newpar)
	{
		lx = nx;
		ly = ny;
		lz = nz;
		direction = newdir;
		distance = newdist;
		normal = Util.VecForward( 1f, newnorm );
		parent = newpar;
	}
	
	public Vector3 GetStart()
	{
		return parent.transform.TransformPoint( new Vector3(lx,ly,lz) );
	}
	public Vector3 GetEnd()
	{
		return parent.transform.TransformPoint( new Vector3(lx,ly,lz) + Util.VecForward(distance,direction) );
	}
	public Vector3 GetNormal()
	{
		return parent.transform.TransformDirection( normal );
	}
}
