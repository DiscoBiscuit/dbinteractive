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

	// Use this for initialization
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
	}
	
	// Update is called once per c
	void Update () 
	{
		Run();
	}
	
	void Walk()
	{
		Vector3 vel = machine.moveDirection;
		vel.y = 0f;
		float perc = vel.magnitude/machine.WalkSpeed;
		float c = Time.time*360f;
	
		Torso.localPosition = new Vector3(0f, 0.756f + Sin(c*2f)*0.05f*perc ,0f);
	
		HipLeft.localRotation = Ang( Sin(c)*30f*perc ,0f,0f);
		HipRight.localRotation = Ang( Sin(c + 180f)*30f*perc ,0f,0f);
		
		KneeLeft.localRotation = Ang( Mathf.Max(0f,Cos(c +180)*45f*perc) ,0f,0f);
		KneeRight.localRotation = Ang( Mathf.Max(0f,Cos(c)*45f*perc) ,0f,0f);
		
		ShoulderLeft.localRotation = Ang( Sin(c + 180f)*20f*perc , Sin(c)*10f*perc ,80f);
		ShoulderRight.localRotation = Ang( Sin(c)*20f*perc , Sin(c)*10f*perc ,-80f);
		
		ElbowLeft.localRotation = Ang(0f, 15f+Sin(c-45f)*15f*perc ,0f);
		ElbowRight.localRotation = Ang(0f, -15f+Sin(c-45f)*15f*perc ,0f);
	}
	
	void Run()
	{
		Vector3 vel = machine.moveDirection;
		vel.y = 0f;
		float perc = vel.magnitude/machine.WalkSpeed;
		float c = Time.time*500f;
		c += Sin(c*2f)*10f;
		
		Head.localRotation = Ang(-10f*perc + Sin(c*2 + 45f)*10f*perc, Sin (c-45f)*10f*perc,0f);
		
		Torso.localPosition = new Vector3(0f, 0.756f - Cos(c*2f)*0.1f*perc ,0f);
		Torso.localRotation = Ang( 20f*perc - Cos(c*2)*5f*perc, -Sin(c-45f)*10f*perc ,0f);
		
		HipLeft.localRotation = Ang( Sin(c)*45f*perc -15f*perc,0f,0f);
		HipRight.localRotation = Ang( Sin(c + 180f)*45f*perc -15f*perc,0f,0f);
		
		KneeLeft.localRotation = Ang( Mathf.Max(0f,Cos(c +180)*90f*perc) ,0f,0f);
		KneeRight.localRotation = Ang( Mathf.Max(0f,Cos(c)*90f*perc) ,0f,0f);
		
		c += 45f;
		
		ShoulderLeft.localRotation = Ang( Sin(c + 180f)*45f*perc , Sin(c)*25f*perc + 15f*perc ,80f-20f*perc);
		ShoulderRight.localRotation = Ang( Sin(c)*45f*perc , Sin(c)*25f*perc - 15f*perc ,-80f+20f*perc);
		
		c -= 45f;
		
		ElbowLeft.localRotation = Ang(0f, 25f+Sin(c)*25f*perc +30f*perc,0f);
		ElbowRight.localRotation = Ang(0f, -25f+Sin(c)*25f*perc -30f*perc,0f);
	}
}
