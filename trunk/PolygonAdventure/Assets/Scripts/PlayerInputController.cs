using UnityEngine;
using System.Collections;

public class PlayerInputController : MonoBehaviour {

    public PlayerInput Current;
    private float faceTimer = 0f;

	// Use this for initialization
	void Start () {
        Current = new PlayerInput();
	}
	
	// Update is called once per frame
	void Update () {
        
        // Retrieve our current WASD or Arrow Key input
        // Using GetAxisRaw removes any kind of gravity or filtering being applied to the input
        // Ensuring that we are getting either -1, 0 or 1
        Vector3 moveInput = new Vector3(Input.GetAxisRaw("Horizontal"), 0, Input.GetAxisRaw("Vertical"));
        Vector2 mouseInput = new Vector2(Input.GetAxis("Mouse X"), Input.GetAxis("Mouse Y"))*3f;
        bool jumpInput = Input.GetButtonDown("Jump");
        faceTimer = Mathf.Max(0f,faceTimer-Time.deltaTime);
		bool attacking = ( Input.GetButton("Fire1") || Input.GetButton("Fire2") ) && moveInput.z<0f;
		if(attacking)
		{
			faceTimer = 0.65f;
		}
        bool faceInput = (attacking || faceTimer>0f);

        Current = new PlayerInput()
        {
            MoveInput = moveInput,
            MouseInput = mouseInput,
            JumpInput = jumpInput,
            FaceInput = faceInput
        };
	}
}

public struct PlayerInput
{
    public Vector3 MoveInput;
    public Vector2 MouseInput;
    public bool JumpInput;
    public bool FaceInput;
}
