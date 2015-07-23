using UnityEngine;
using System.Collections;

public class Anims_Generic : MonoBehaviour 
{
	public Quaternion Ang(float x, float y, float z)
	{
		return Quaternion.Euler( new Vector3(x,y,z) );
	}
	public float Sin( float angle )
	{
		return Mathf.Sin( angle*Mathf.Deg2Rad );
	}
	public float Cos( float angle )
	{
		return Mathf.Cos( angle*Mathf.Deg2Rad );
	}
}
