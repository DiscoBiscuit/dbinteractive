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
	
	// Update is called once per frame
	void Update () 
	{
		Walk( Time.time*360f );
	}
	
	void Walk( float frame )
	{
		float perc = machine.moveDirection.magnitude/machine.WalkSpeed;
	
		Torso.localPosition = new Vector3(0f, 0.756f + Sin(frame*2f)*0.05f*perc ,0f);
	
		HipLeft.localRotation = Ang( Sin(frame)*30f*perc ,0f,0f);
		HipRight.localRotation = Ang( Sin(frame + 180f)*30f*perc ,0f,0f);
		
		KneeLeft.localRotation = Ang( Mathf.Max(0f,Cos(frame +180)*45f*perc) ,0f,0f);
		KneeRight.localRotation = Ang( Mathf.Max(0f,Cos(frame)*45f*perc) ,0f,0f);
		
		ShoulderLeft.localRotation = Ang( Sin(frame + 180f)*20f*perc , Sin(frame)*10f*perc ,80f);
		ShoulderRight.localRotation = Ang( Sin(frame)*20f*perc , Sin(frame)*10f*perc ,-80f);
		
		ElbowLeft.localRotation = Ang(0f, 15f+Sin(frame-45f)*15f*perc ,0f);
		ElbowRight.localRotation = Ang(0f, -15f+Sin(frame-45f)*15f*perc ,0f);
	}
}
