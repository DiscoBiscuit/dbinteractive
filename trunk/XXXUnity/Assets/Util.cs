using UnityEngine;
using System.Collections;

public static class Util
{
	public static Vector3 VecForward(float dist,float dir)
	{
		return new Vector3(Mathf.Cos (dir*Mathf.Deg2Rad), Mathf.Sin (dir*Mathf.Deg2Rad) ,0f)*dist;
	}
	
	public static Vector3 Spline4(Vector3 a1, Vector3 a2, Vector3 a3, Vector3 a4, float v)
	{
		Vector3 b1 = Vector3.Lerp (a1,a2,v);
		Vector3 b2 = Vector3.Lerp (a2,a3,v);
		Vector3 b3 = Vector3.Lerp (a3,a4,v);
		Vector3 c1 = Vector3.Lerp (b1,b2,v);
		Vector3 c2 = Vector3.Lerp (b2,b3,v);
		return Vector3.Lerp (c1,c2,v);
	}
	
	public static Quaternion DirRot( float newdir )
	{
		return Quaternion.Euler( new Vector3(0f,0f,newdir) );
	}
}
