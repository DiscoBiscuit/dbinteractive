using UnityEngine;
using System.Collections;

public class DragonControl : MonoBehaviour {

	private Rigidbody E;
	private float yaw = 0f;
	private bool walk = true;
	private Vector3 lastPos;
	private Quaternion lastRot;
	private Vector3 lastNorm;
	
	void Awake () 
	{
		GetComponent<Rigidbody>().freezeRotation = true;
	}
	
	void Start ()
	{
		E = GetComponent<Rigidbody>();
		lastNorm = -Vector3.up;
	}
	
	void FixedUpdate () 
	{
		lastPos = transform.position;
		lastRot = transform.rotation;
		
		yaw += Input.GetAxis("Mouse X")*2f;
		if(yaw>=360f){yaw-=360f;}
		if(yaw<0f){yaw+=360f;}
		
		RaycastHit XRD;
		bool hitGround = Physics.Raycast( transform.position, lastNorm, out XRD );
		lastNorm = -XRD.normal;
		
		if(walk==true)
		{
			if( hitGround )
			{
				transform.rotation = Quaternion.FromToRotation(Vector3.up, XRD.normal);
				transform.RotateAround( transform.position, transform.up , yaw);
				transform.position = XRD.point + XRD.normal*3f;
				
				Vector3 newPos = transform.position;
				Quaternion newRot = transform.rotation;
				
				transform.position = Vector3.Lerp(lastPos,newPos,0.1f);
				transform.rotation = Quaternion.Lerp(lastRot,newRot,0.2f);
				
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
			transform.RotateAround( transform.position, transform.up , Input.GetAxis("Mouse X")*2f);
			transform.RotateAround( transform.position, transform.right , -Input.GetAxis("Mouse Y")*2f);
			
			if( hitGround )
			{
				if( Input.GetKey(KeyCode.LeftControl) && XRD.distance<4f )
				{
					walk = true;
				}
			}
		}
		
		Camera.main.transform.position = Vector3.Lerp (Camera.main.transform.position,transform.position + transform.TransformDirection(new Vector3(0f,3f,-12f)),0.4f);
		Camera.main.transform.rotation = Quaternion.Lerp (Camera.main.transform.rotation,transform.rotation,0.4f);
		
		Vector3 move = transform.TransformDirection( new Vector3( Input.GetAxis("Horizontal"), vert, Input.GetAxis("Vertical")).normalized );
		E.AddForce (move*4f - E.velocity/5f, ForceMode.VelocityChange);
	}
}