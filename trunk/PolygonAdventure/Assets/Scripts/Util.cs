using UnityEngine;
using System.Collections;

public static class Util
{
	public static Quaternion UprightRotation( Quaternion newRot )
	{
		return Quaternion.Euler( new Vector3(0f, newRot.eulerAngles.y ,0f) );
	}
}
