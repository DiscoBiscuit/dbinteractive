using UnityEngine;
using System.Collections;

[RequireComponent (typeof (Rigidbody))]
[RequireComponent (typeof (CapsuleCollider))]

public class PlayerControl : MonoBehaviour {
	
	public Texture reticle;
	float maxSpeed = 12f;
	float acceleration = 30f;
	float friction = 50f;
	float rotationSpeed = 180f;
	float jumpCoolDown = 0.5f;
	float gravity = 0.4f;
	float jumpPower = 10f;
	
	private float speed = 0f;
	private bool grounded = false;
	private float nextJump = 0f;
	Vector3 camVel = Vector3.zero;
	
	void Awake () 
	{
		GetComponent<Rigidbody>().freezeRotation = true;
		GetComponent<Rigidbody>().useGravity = false;
	}
	
	void FixedUpdate () 
	{
		Transform camera = Camera.main.transform;
		Rigidbody phys = GetComponent<Rigidbody>();
		float dt = Time.fixedDeltaTime;
		
		float hSpeed = Input.GetAxis("Horizontal");
		float vSpeed = Input.GetAxis("Vertical");
		
		if(hSpeed!=0f || vSpeed!=0f)
		{
			speed = Mathf.Min (maxSpeed,speed+ (acceleration*dt));
			
			Vector3 tVel = camera.TransformVector( new Vector3(hSpeed,0f,vSpeed).normalized );
			Quaternion tRot = Quaternion.LookRotation(tVel,Vector3.up);
			transform.eulerAngles = new Vector3(0f, Quaternion.RotateTowards(transform.rotation, tRot, rotationSpeed*dt).eulerAngles.y, 0f );
		}
		else
		{
			if(grounded)
			{
				speed = Mathf.Max (0f,speed- (friction*dt));
			}
		}
		
		Vector3 pVel = phys.velocity;
		pVel.y = 0f;
		phys.AddForce( transform.rotation*(Vector3.forward*speed) - pVel - Vector3.up*gravity , ForceMode.VelocityChange );
		
		if(grounded && Input.GetButton("Jump") && Time.time>nextJump) 
		{
			nextJump = Time.time+jumpCoolDown;
			phys.AddForce( Vector3.up*jumpPower, ForceMode.VelocityChange);
		}
		
		grounded = false;
		
		camVel = (camVel + new Vector3( -Input.GetAxis("Mouse Y")*50f*dt, Input.GetAxis("Mouse X")*50f*dt, 0f ) )*0.8f;
		camera.eulerAngles += camVel;
		camera.position = Vector3.Lerp( camera.position, transform.position + new Vector3(0f,3f,0f) - camera.rotation*Vector3.forward*6f + (pVel/maxSpeed), 0.3f);
		//camera.RotateAround( transform.position, Vector3.up , Input.GetAxis("Mouse X")*150f*dt);
	}
	
	void OnCollisionStay ( Collision collision ) 
	{
		Vector3 averageNormal = Vector3.zero;
		float contactCount = 0f;
		foreach (ContactPoint contact in collision.contacts) 
		{
			averageNormal += contact.normal;
			contactCount += 1f;
		}
		averageNormal = averageNormal/contactCount;
		
		if(averageNormal.y>0.71f)
		{
			grounded = true;
		}
	}
	
	void OnGUI()
	{
		GUI.DrawTexture ( new Rect(Screen.width/2f - 16f, Screen.height/2f - 16f, 32f, 32f) , reticle);
	}
}