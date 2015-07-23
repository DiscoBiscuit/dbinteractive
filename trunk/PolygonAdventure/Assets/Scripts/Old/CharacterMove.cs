using UnityEngine;
using System.Collections;

[RequireComponent (typeof (Rigidbody))]
[RequireComponent (typeof (CapsuleCollider))]

public class CharacterMove : MonoBehaviour 
{
	float maxSpeed = 12f;
	float acceleration = 32f;
	float friction = 48f;
	float rotationSpeed = 720f;
	float jumpCoolDown = 0.5f;
	float gravity = 0.7f;
	float jumpPower = 15f;
	float turnAroundCoolDown = 0.65f;

	private Quaternion aimRotation = Quaternion.identity;
	private Vector3 moveDirection = Vector3.zero;
	private Quaternion moveRotation = Quaternion.identity;
	private bool faceAim = false;
	private float speedMult = 1f;
	private float speed = 0f;
	private bool grounded = false;
	private float jumpTimer = 0f;
	private float turnAroundTimer = 0f;

	void Awake () 
	{
		GetComponent<Rigidbody>().freezeRotation = true;
		GetComponent<Rigidbody>().useGravity = false;
	}

	public void DoMove() 
	{
		float dt = Time.fixedDeltaTime;
		Rigidbody phys = GetComponent<Rigidbody>();
		bool isMoving = (moveDirection.magnitude>0f);
		turnAroundTimer = Mathf.Max(0f,turnAroundTimer-dt);
		jumpTimer = Mathf.Max(0f,jumpTimer-dt);
		
		if(isMoving)
		{
			speed = Mathf.Min (maxSpeed,speed+acceleration*dt);
			Quaternion mRot = Quaternion.LookRotation( aimRotation*moveDirection , Vector3.up );
			moveRotation = RotationUpright( Quaternion.RotateTowards(moveRotation, mRot, rotationSpeed*dt) );
		}
		else
		if(grounded)
		{
			speed = Mathf.Max(0f,speed-friction*dt);
		}

		if(faceAim==false && turnAroundTimer==0f)
		{
			speedMult = (speedMult*9 + 1f)/10f;
			transform.rotation = RotationUpright( Quaternion.RotateTowards(transform.rotation, moveRotation, rotationSpeed*dt) );
		}
		else
		{
			speedMult = (speedMult*9 + 0.4f)/10f;
			transform.rotation = RotationUpright( Quaternion.RotateTowards(transform.rotation, aimRotation, rotationSpeed*dt) );
		}
		
		Vector3 pVel = phys.velocity;
		pVel.y = 0f;
		phys.AddForce( moveRotation*Vector3.forward*speed*speedMult - pVel - Vector3.up*gravity, ForceMode.VelocityChange );

		grounded = false;
	}
	
	void OnCollisionStay ( Collision collision ) 
	{
		grounded = true;
		Rigidbody phys = GetComponent<Rigidbody>();
		if(phys.velocity.magnitude<0.01f)
		{
			speed = 0f;
		}
	}
	
	public void Jump()
	{
		if(grounded && jumpTimer==0f)
		{
			GetComponent<Rigidbody>().AddForce( Vector3.up*jumpPower , ForceMode.VelocityChange );
			jumpTimer = jumpCoolDown;
		}
	}
	public Quaternion RotationUpright( Quaternion newRotation )
	{
		return Quaternion.Euler( new Vector3( 0f, newRotation.eulerAngles.y, 0f ) );
	}
	public void SetAimRotation( float aimYaw )
	{
		aimRotation.eulerAngles = new Vector3(0f, aimYaw, 0f);
	}
	public void SetAimRotation( Quaternion newAimRotation )
	{
		aimRotation = RotationUpright( newAimRotation );
	}
	public void SetAimPos( Vector3 aimPos )
	{
		aimRotation = RotationUpright( Quaternion.LookRotation(aimPos-transform.position,Vector3.up) );
	}
	public void SetMoveDirection( Vector3 newMoveDirection )
	{
		moveDirection = newMoveDirection.normalized;
	}
	public void SetFaceAimRotation( bool willFaceAim )
	{
		faceAim = willFaceAim;
		if(faceAim==true)
		{
			turnAroundTimer = turnAroundCoolDown;
		}
	}
}
