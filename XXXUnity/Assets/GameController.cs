using UnityEngine;
using System.Collections;

public class GameController : MonoBehaviour {

	public GameObject playerPrefab;
	GameObject player;

	// Use this for initialization
	void Start () 
	{
		player = Instantiate( playerPrefab , Vector3.zero, Quaternion.identity ) as GameObject;
	}
	
	// Update is called once per frame
	void Update () 
	{
		float diff = Input.mousePosition.x - Screen.width/2f;
		if(Input.GetMouseButton(0) && Mathf.Abs(diff)<256f)
		{
			player.GetComponent<character_draw>().SetWalkSpeed( Mathf.Sign (diff)*0.5f );
		}
		if(Input.GetMouseButtonUp(0) || Mathf.Abs(diff)>256f)
		{
			player.GetComponent<character_draw>().SetWalkSpeed( 0f );
		}
	}
}
