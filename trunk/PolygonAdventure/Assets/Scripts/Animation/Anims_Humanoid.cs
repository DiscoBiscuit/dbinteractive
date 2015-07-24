using UnityEngine;
using System.Collections;

public class Anims_Humanoid : Anims_Generic 
{
	Transform Torso;
	Transform Head;
	Transform ShoulderLeft;
	Transform ElbowLeft;
	Transform HandLeft;
	Transform ShoulderRight;
	Transform ElbowRight;
	Transform HandRight;
	Transform HipLeft;
	Transform KneeLeft;
	Transform FootLeft;
	Transform HipRight;
	Transform KneeRight;
	Transform FootRight;
	
	private PlayerMachine machine;

	void Start () 
	{
		Torso = transform.GetChild(1);
		Head = Torso.GetChild(0);
		ShoulderLeft = Torso.GetChild(3);
		ShoulderRight = Torso.GetChild(4);
		HipLeft = Torso.GetChild(1);
		HipRight = Torso.GetChild(2);
		ElbowLeft = ShoulderLeft.GetChild(0);
		HandLeft = ElbowLeft.GetChild(0);
		ElbowRight = ShoulderRight.GetChild(0);
		HandRight = ElbowRight.GetChild(0);
		KneeLeft = HipLeft.GetChild(0);
		FootLeft = KneeLeft.GetChild(0);
		KneeRight = HipRight.GetChild(0);
		FootRight = KneeRight.GetChild(0);
		
		machine = gameObject.GetComponent<PlayerMachine>();
		
		SetAnimIdentity( Identity );
		SetMoveAnim ( Run , 0f );
	}
	
	void Update()
	{
		if(Input.GetButtonDown("Sprint"))
		{
			SetMoveAnim( Walk, 0.5f );
		}
		if(Input.GetButtonUp("Sprint"))
		{
			SetMoveAnim( Run, 0.5f );
		}
		if(Input.GetButtonDown("Fire1"))
		{
			SetActionAnim( Strike, 0.3f ,false, false);
		}
	}
	
	void LateUpdate()
	{
		Animate();
	}
	
	float Identity( float frame, float speed, float lerp )
	{
		Torso.localPosition = new Vector3(0f,0.756f,0f);
		ResetChildRotations( Torso , lerp);
		
		return frame;
	}
	
	float Strike( float frame, float speed, float lerp )
	{
		frame += speed*Time.deltaTime/0.75f;
		
		float c = Mathf.Min(360f,frame*360f);
		c -= Sin(c)*45f;
		
		SetTransformRotation( Torso, Torso.localRotation* Ang(-Sin(c)*15f,Sin (c)*30f, 0f), lerp);
		SetTransformRotation( Head, Head.localRotation* Ang( Sin(c)*10f, -Sin(c)*20f, 0f), lerp);
		
		SetTransformRotation( ShoulderRight, Ang( -60f+Cos(c)*90f, 0f ,-50f + Sin(c)*30f ) ,lerp);
		SetTransformRotation( ShoulderLeft, Ang( Cos(c)*30f, 0f , 70f+Sin(c)*30f ) ,lerp);
		
		return frame;
	}
	
	float Walk( float frame, float speed, float lerp )
	{
		frame += speed*(Time.deltaTime/0.9f);
		
		Vector3 vel = machine.moveDirection;
		vel.y = 0f;
		float perc = vel.magnitude/(8f*0.4f);
		float c = frame*360f;
		
		SetTransformRotation( Head, Ang(-3f*perc + Sin(c*2 + 45f)*3f*perc, Sin (c-45f)*3f*perc,0f) ,lerp);
		
		SetTransformPosition( Torso, new Vector3(0f, 0.756f + Cos(c*2f)*0.05f*perc ,0f) ,lerp);
		SetTransformRotation( Torso, Ang( 5f*perc - Cos(c*2)*1f*perc, -Sin(c-45f)*3f*perc ,0f) ,lerp);
		
		SetTransformRotation( HipLeft, Ang( Sin(c)*30f*perc ,0f,0f) ,lerp);
		SetTransformRotation( HipRight, Ang( Sin(c + 180f)*30f*perc ,0f,0f) ,lerp);
		
		SetTransformRotation( KneeLeft, Ang( Mathf.Max(0f,Cos(c +180)*45f*perc) ,0f,0f) ,lerp);
		SetTransformRotation( KneeRight, Ang( Mathf.Max(0f,Cos(c)*45f*perc) ,0f,0f) ,lerp);
		
		SetTransformRotation( ShoulderLeft, Ang( Sin(c + 180f)*20f*perc , Sin(c)*10f*perc ,80f) ,lerp);
		SetTransformRotation( ShoulderRight, Ang( Sin(c)*20f*perc , Sin(c)*10f*perc ,-80f) ,lerp);
		
		SetTransformRotation( ElbowLeft, Ang(0f, 15f+Sin(c-45f)*15f*perc ,0f) ,lerp);
		SetTransformRotation( ElbowRight, Ang(0f, -15f+Sin(c-45f)*15f*perc ,0f) ,lerp);
		
		return frame;
	}
	
	float Run( float frame, float speed, float lerp )
	{
		frame += speed*(Time.deltaTime/0.9f);
		
		Vector3 vel = machine.moveDirection;
		vel.y = 0f;
		float perc = vel.magnitude/8f;
		float c = frame*360f;
		c += Sin(c*2f)*10f*lerp;
		
		SetTransformRotation( Head, Ang(-10f*perc + Sin(c*2 + 45f)*10f*perc, Sin (c-45f)*10f*perc,0f) ,lerp);
		
		SetTransformPosition( Torso, new Vector3(0f, 0.756f - Cos(c*2f)*0.1f*perc ,0f) ,lerp);
		SetTransformRotation( Torso, Ang( 20f*perc - Cos(c*2)*5f*perc, -Sin(c-45f)*10f*perc ,0f) ,lerp);
	
		SetTransformRotation( HipLeft, Ang( Sin(c)*45f*perc -15f*perc,0f,0f) ,lerp);
		SetTransformRotation( HipRight, Ang( Sin(c + 180f)*45f*perc -15f*perc,0f,0f) ,lerp);
	
		SetTransformRotation( KneeLeft, Ang( Mathf.Max(0f,Cos(c +180)*90f*perc) ,0f,0f) ,lerp);
		SetTransformRotation( KneeRight, Ang( Mathf.Max(0f,Cos(c)*90f*perc) ,0f,0f) ,lerp);
	
		c += 45f;
		SetTransformRotation( ShoulderLeft, Ang( Sin(c + 180f)*45f*perc , Sin(c)*25f*perc + 15f*perc ,80f-20f*perc) ,lerp);
		SetTransformRotation( ShoulderRight, Ang( Sin(c)*45f*perc , Sin(c)*25f*perc - 15f*perc ,-80f+20f*perc) ,lerp);
	
		c -= 45f;
		SetTransformRotation( ElbowLeft, Ang(0f, 25f+Sin(c)*25f*perc +30f*perc,0f) ,lerp);
		SetTransformRotation( ElbowRight, Ang(0f, -25f+Sin(c)*25f*perc -30f*perc,0f) ,lerp);
		
		return frame;
	}
}
