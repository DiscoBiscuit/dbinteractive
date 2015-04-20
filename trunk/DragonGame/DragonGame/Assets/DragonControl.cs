using UnityEngine;
using System.Collections;

public class DragonControl : MonoBehaviour {

	public GameObject cube;
	private Rigidbody E;
	private float yaw = 0f;
	private bool walk = true;
	
	void Awake () 
	{
		GetComponent<Rigidbody>().freezeRotation = true;
	}
	
	void Start ()
	{
		E = GetComponent<Rigidbody>();
	}
	
	void FixedUpdate () 
	{
		yaw += Input.GetAxis("Mouse X")*2f;
		if(yaw>=360f){yaw-=360f;}
		if(yaw<0f){yaw+=360f;}
		
		RaycastHit XRD;
		bool hitGround = Physics.Raycast( transform.position, -transform.up, out XRD );
		
		if(walk==true)
		{
			if( hitGround )
			{
				transform.rotation = Quaternion.FromToRotation(Vector3.up, XRD.normal);
				transform.RotateAround( transform.position, transform.up , yaw);
				transform.position = XRD.point + XRD.normal*3f;
				
				if( Input.GetKey(KeyCode.Space) )
				{
					walk = false;
				}
			}
		}
		float vert = 0f;
		if(walk==false)
		{
			if(Input.GetKey(KeyCode.Space)){vert+=1f;}
			if(Input.GetKey(KeyCode.LeftControl)){vert-=1f;}
			
			if( hitGround )
			{
				if( Input.GetKey(KeyCode.LeftControl) && XRD.distance<4f )
				{
					walk = true;
				}
			}
		}
		
		Vector3 move = transform.TransformDirection( new Vector3( Input.GetAxis("Horizontal"), vert, Input.GetAxis("Vertical")).normalized );
		E.AddForce (move*4f - E.velocity/5f, ForceMode.VelocityChange);
	}
}