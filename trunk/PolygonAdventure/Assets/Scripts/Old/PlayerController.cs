using UnityEngine;
using System.Collections;

[RequireComponent (typeof (CharacterMove))]

public class PlayerController : MonoBehaviour 
{
	private Vector3 camVel = Vector3.zero;

	void FixedUpdate()
	{
		float dt = Time.fixedDeltaTime;
		Transform camera = Camera.main.transform;
		CharacterMove mover = GetComponent<CharacterMove>();
		
		mover.SetFaceAimRotation( Input.GetButton("Fire1") || Input.GetButton("Fire2") );
		mover.SetAimRotation( camera.rotation );
		mover.SetMoveDirection( new Vector3( Input.GetAxis("Horizontal") ,0f, Input.GetAxis("Vertical") ) );
		if(Input.GetButton ("Jump")){mover.Jump();}
		mover.DoMove();
		
		camVel = (camVel + new Vector3( -Input.GetAxis("Mouse Y")*50f*dt, Input.GetAxis("Mouse X")*50f*dt, 0f ) )*0.8f;
		camera.eulerAngles += camVel;
		float camx = camera.eulerAngles.x;
		if(camx<180f){camx = Mathf.Min(camx,60f);}
		else{camx = Mathf.Max(camx,300f);}
		
		camera.eulerAngles = new Vector3( camx, camera.eulerAngles.y, camera.eulerAngles.z );
		camera.position = Vector3.Lerp( camera.position, transform.position + new Vector3(0f,3f,0f) - camera.rotation*Vector3.forward*6f, 0.5f);
	}
}
