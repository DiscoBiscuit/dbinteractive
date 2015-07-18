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
	float turnAroundCoolDown = 0.65f;
	
	private Quaternion moveRotation = Quaternion.identity;
	private float speedMult = 1f;
	private float speed = 0f;
	private bool grounded = false;
	private float nextJump = 0f;
	private Vector3 camVel = Vector3.zero;
	private float turnAroundTimer = 0f;
	
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
		
		//Decrement the turnAroundTimer, so any time the below conditions are met, it takes one second for the value to return to zero
		turnAroundTimer = Mathf.Max(0f,turnAroundTimer-dt);
		if( (Input.GetButton("Fire1") || Input.GetButton ("Fire2")) && vSpeed<0f )
		{
			//If you are trying to attack with either key while moving backwards, set turnAroundTimer to above zero
			turnAroundTimer = turnAroundCoolDown;
		}
		
		if(hSpeed!=0f || vSpeed!=0f)
		{
			//Accelerate to maxSpeed while holding either movement key
			speed = Mathf.Min (maxSpeed,speed+ (acceleration*dt));
			
			//Calculates the rotation to move in
			Vector3 tVel = camera.TransformVector( new Vector3(hSpeed,0f,vSpeed).normalized );
			Quaternion tRot = Quaternion.LookRotation(tVel,Vector3.up);
			moveRotation.eulerAngles = new Vector3(0f, Quaternion.RotateTowards(moveRotation, tRot, rotationSpeed*dt).eulerAngles.y, 0f );
		}
		else
		{
			//If you are not holding movements keys and on the ground, then you will decelerate
			if(grounded)
			{
				speed = Mathf.Max (0f,speed- (friction*dt));
			}
		}
		
		if(turnAroundTimer==0f)
		{
			//If you are moving normally, or attacking but not moving backwards, smooth the speedMult back up towards 1
			speedMult = (speedMult*9f + 1f)/10f;
			//also the character rotates to face the direction he moves
			transform.rotation = Quaternion.RotateTowards(transform.rotation, moveRotation, rotationSpeed*dt*3f);
		}
		else
		{
			//if you are attacking and moving backwards, reduce movement speed to less than normal
			speedMult = (speedMult*9f + 0.4f)/10f;
			//and rotate to look the direction of the camera
			Quaternion tRot = Quaternion.LookRotation( camera.TransformVector(Vector3.forward) ,Vector3.up);
			transform.eulerAngles = new Vector3(0f, Quaternion.RotateTowards(transform.rotation, tRot, rotationSpeed*dt*3f).eulerAngles.y, 0f );
		}
		
		Vector3 pVel = phys.velocity;
		//Get the velocity along the 2D plane by setting the up component to zero
		pVel.y = 0f;
		//Add to the current velocity
		phys.AddForce( moveRotation*(Vector3.forward*speed*speedMult) - pVel - Vector3.up*gravity , ForceMode.VelocityChange );
		
		//If you are on the ground, want to jump, and the jump spam timer checks out
		if(grounded && Input.GetButton("Jump") && Time.time>nextJump) 
		{
			//Set the next time you will be able to jump, Time+CoolDown
			nextJump = Time.time+jumpCoolDown;
			//Apply the vertical jump power
			phys.AddForce( Vector3.up*jumpPower, ForceMode.VelocityChange);
		}
		
		//Set grounded to false, which will be re-evaluated in OnCollisionStay for the next run of the code
		grounded = false;
		
		//Accelerate the camera for smoothness
		camVel = (camVel + new Vector3( -Input.GetAxis("Mouse Y")*50f*dt, Input.GetAxis("Mouse X")*50f*dt, 0f ) )*0.8f;
		//Add the camera velocity to the camera's angles
		camera.eulerAngles += camVel;
		//Clamp the up/down angle of the camera
		float camx = camera.eulerAngles.x;
		if(camx<180f){camx = Mathf.Min(camx,60f);}
		else{camx = Mathf.Max(camx,300f);}
		
		camera.eulerAngles = new Vector3( camx, camera.eulerAngles.y, camera.eulerAngles.z );
		//Move the camera above the character
		camera.position = Vector3.Lerp( camera.position, transform.position + new Vector3(0f,3f,0f) - camera.rotation*Vector3.forward*6f + (pVel/maxSpeed), 0.3f);
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
		GUI.DrawTexture ( new Rect(Screen.width/2 - 24, Screen.height/2 - 24, 48, 48) , reticle);
	}
}