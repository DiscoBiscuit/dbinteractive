using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class character_draw : MonoBehaviour 
{
	List<Vector3> verts = new List<Vector3>();
	List<Vector3> norms  = new List<Vector3>();
	List<int> tris  = new List<int>();
	
	float frame = 0f;
	
	//Bones
	
	public GameObject bone_prefab;
	GameObject origin;
	GameObject hip;
	GameObject spine;
	GameObject neck;
	GameObject head;
	
	GameObject thigh_left;
	GameObject thigh_right;
	GameObject calf_left;
	GameObject calf_right;
	
	GameObject bicep_left;
	GameObject bicep_right;
	GameObject arm_left;
	GameObject arm_right;
	
	//Handles
	
	SplineHandle ass_top;
	SplineHandle ass_bottom;
	SplineHandle thighfront_top;
	SplineHandle thighfront_bottom;
	SplineHandle thighback_top;
	SplineHandle thighback_bottom;
	SplineHandle thigh_center;
	
	SplineHandle calffront_top;
	SplineHandle calffront_bottom;
	SplineHandle calfback_top;
	SplineHandle calfback_bottom;
	SplineHandle calf_center;
	
	SplineHandle lowback_bottom;
	SplineHandle lowback_top;
	SplineHandle highback_bottom;
	SplineHandle highback_top;
	SplineHandle chest_top;
	SplineHandle chest_bottom;
	SplineHandle belly_top;
	SplineHandle belly_bottom;
	SplineHandle groin_top;
	SplineHandle groin_bottom;
	SplineHandle torso_center;
	
	SplineHandle bicepfront_top;
	SplineHandle bicepfront_bottom;
	SplineHandle bicepback_top;
	SplineHandle bicepback_bottom;
	SplineHandle bicep_center;
	
	SplineHandle armfront_top;
	SplineHandle armfront_bottom;
	SplineHandle armback_top;
	SplineHandle armback_bottom;
	SplineHandle arm_center;
	
	float bodyfat = 0.1f;
	float ass = 0.4f;
	float hips = 0.3f;
	
	void OnGUI() 
	{
		GUI.Label(new Rect(8,32,80,32), "Body Fat"); bodyfat = GUI.HorizontalSlider(new Rect(80, 32+5, 128, 16), bodyfat, 0f, 1f);
		GUI.Label(new Rect(8,48,80,32), "Ass"); ass = GUI.HorizontalSlider(new Rect(80, 48+5, 128, 16), ass, 0f, 1f);
		GUI.Label(new Rect(8,64,80,32), "Hips"); hips = GUI.HorizontalSlider(new Rect(80, 64+5, 128, 16), hips, 0f, 1f);
	}
	
	void ModHandles()
	{
		lowback_bottom.lx = -2.6f - 0.6f*ass - 1.2f*hips - 0.8f*bodyfat;
		lowback_bottom.direction = 70f + 50f*bodyfat;
		
		lowback_top.lx = -4f - 1.2f*bodyfat;
		
		highback_bottom.lx = -4f - 1.2f*bodyfat;
		
		ass_top.lx = -2.6f - 0.6f*ass - 1.2f*hips - 0.8f*bodyfat;
		ass_top.direction = 240f - 45f*ass;
		ass_top.distance = 2.4f + 2.4f*ass;
		
		ass_bottom.lx = -2.6f - 0.8f*ass - 2f*hips - 0.8f*bodyfat;
		ass_bottom.ly = -3.2f - Mathf.Min (1.6f,3.2f*ass) - 1.6f*bodyfat;
		ass_bottom.direction = 130f + 32f*ass + 12f*hips*bodyfat;
		ass_bottom.distance = 2.4f + 2f*ass;
		
		thighback_top.lx = -2.6f - 0.8f*ass - 2f*hips - 0.8f*bodyfat;
		thighback_top.ly = -3.2f - Mathf.Min (1.6f,3.2f*ass) - 1.6f*bodyfat;
		thighback_top.direction = 260f - 16f*ass;
		thighback_top.distance = 1.6f + 0.6f*ass + 0.6f*bodyfat + 0.6f*hips;
		
		thighback_bottom.lx = 1.2f + 1.2f*bodyfat;
		
		thighfront_top.lx = 2.6f + 1f*hips + 0.8f*bodyfat;
		thighfront_top.distance = 3.2f + 1.2f*hips + 1.2f*bodyfat;
		thighfront_top.direction = -80f + 10f*hips + 30f*bodyfat;
		
		thighback_bottom.lx = -1.2f - 1f*hips - 1f*bodyfat;
		thighback_bottom.direction = 100f + 10f*hips + 20f*bodyfat;
		
		calfback_top.lx = -1.2f - 1f*hips - 1f*bodyfat;
		calfback_top.direction = 230f - 12f*hips - 16*bodyfat;
		
		thighfront_bottom.lx = 1.2f + 1f*hips + 1f*bodyfat;
		
		calffront_top.lx = 1.2f + 1f*hips + 1f*bodyfat;
		
		float bodyfat_extra = Mathf.Max (0f,bodyfat-0.5f);
		
		chest_bottom.lx = 2f + 1.6f*bodyfat;
		belly_top.lx = 2f + 1.6f*bodyfat;
		
		belly_bottom.lx = 3.8f + 1f*hips + 5f*bodyfat;
		belly_bottom.ly = 2.4f - 3.6f*bodyfat;
		belly_bottom.distance = 3.2f + 2.4f*bodyfat;
		belly_bottom.direction = 90f - 30f*bodyfat;
		
		groin_top.lx = 3.8f + 1f*hips + 5f*bodyfat;
		groin_top.ly = 2.4f - 3.6f*bodyfat;
		groin_top.direction = 270f + 20f*bodyfat;
		groin_top.distance = 2.4f + 3.2f*bodyfat_extra;
		
		groin_bottom.ly = -3.2f - 1.6f*bodyfat_extra;
		groin_bottom.direction = -40*bodyfat_extra;
		groin_bottom.distance = 1.6f + 3.2f*bodyfat;
		
		bicepback_top.direction = 270f - 40f*bodyfat;
		bicepfront_top.direction = 280f + 40f*bodyfat;
		
		bicepback_bottom.lx = -1.2f - 0.8f*bodyfat;
		bicepback_bottom.direction = 90f + 40f*bodyfat;
		bicepfront_bottom.direction = 90f - 40f*bodyfat;
		
		armback_top.lx = -1.2f - 0.8f*bodyfat;
		armback_top.direction = 265f - 20f*bodyfat;
		armfront_top.direction = 280f + 20f*bodyfat;
		
		armback_bottom.direction = 100f + 15f*bodyfat;
		armfront_bottom.direction = 90f - 15f*bodyfat;
		
	}

	// Use this for initialization
	void Start () 
	{
		GetComponent<MeshFilter>().mesh.MarkDynamic();
		
		//Set up bones
		
		origin = 		NewBone ( new Vector3(0f,0f,0f), gameObject ,"origin");
		hip = 			NewBone ( new Vector3(0f,28f,0f), origin ,"hip");
		spine = 		NewBone ( new Vector3(1.6f,7.2f,0f), hip ,"spine");
		neck = 			NewBone ( new Vector3(-1.6f,7.2f,0f), spine ,"neck");
		thigh_left = 	NewBone ( new Vector3(0f,0f,-1f), hip ,"thigh_left");
		calf_left = 	NewBone ( new Vector3(0f,-12.8f,0f), thigh_left ,"calf_left");
		thigh_right = 	NewBone ( new Vector3(0f,0f,1f), hip ,"thigh_right");
		calf_right = 	NewBone ( new Vector3(0f,-12.8f,0f), thigh_right ,"calf_right");
		bicep_left = 	NewBone ( new Vector3(-1.6f,7f,-1f), spine ,"bicep_left");
		arm_left = 		NewBone ( new Vector3(0f,-7.8f,0f), bicep_left ,"arm_left");
		bicep_right = 	NewBone ( new Vector3(-1.6f,7f,1f), spine ,"bicep_right");
		arm_right = 	NewBone ( new Vector3(0f,-7.8f,0f), bicep_right ,"arm_right");
		
		ass_top = 			new SplineHandle(-2.6f,3.2f,0f , 240f, 2.4f, 180f, hip);
		ass_bottom = 		new SplineHandle(-2.6f,-3.2f,0f , 130f, 2.4f, 180f, thigh_left);
		thighback_top = 	new SplineHandle(-2.6f,-3.2f,0f , 260f, 1.6f, 180f, thigh_left);
		thighback_bottom = 	new SplineHandle(-1.2f,-12.8f,0f , 100f, 3.2f, 180f, thigh_left);
		thighfront_top = 	new SplineHandle(2.6f,0f,0f , -80f, 3.2f, 0f, thigh_left);
		thighfront_bottom = new SplineHandle(1.2f,-12.8f,0f , 80f, 1.6f, 0f, thigh_left);
		calffront_top = 	new SplineHandle(1.2f,-12.8f,0f , 315f, 0.8f, 0f, thigh_left);
		calfback_top = 		new SplineHandle(-1.2f,-12.8f,0f , 230f, 3.2f, 180f, thigh_left);
		thigh_center = 		new SplineHandle(0f,-4.8f,0f ,0f,0f,0f,thigh_left);
		calfback_bottom = 	new SplineHandle(-1.2f,-12.8f,0f , 115f, 3.2f, 180f, calf_left);
		calffront_bottom = 	new SplineHandle(1.2f,-12.8f,0f , 100f, 4.8f, 0f, calf_left);
		calf_center = 		new SplineHandle(0f,-6.4f,0f ,0f,0f,0f,calf_left);
		
		lowback_bottom = 	new SplineHandle(-2.6f,3.2f,0f , 70f, 3.2f, 180f, hip);
		lowback_top = 		new SplineHandle(-4f,2.4f,0f , 280f, 3.2f, 180f, spine);
		highback_bottom = 	new SplineHandle(-4f,2.4f,0f , 100f, 1.2f, 180f, spine);
		highback_top = 		new SplineHandle(-3.2f,7.2f,0f , 260f, 1.2f, 180f, spine);
		chest_top = 		new SplineHandle(0.4f,7.2f,0f , 310f, 1.6f, 0f, spine);
		chest_bottom = 		new SplineHandle(2f,2.4f,0f , 100f, 1.6f, 0f, spine);
		belly_top = 		new SplineHandle(2f,2.4f,0f, 280f, 1.6f, 0f, spine);
		belly_bottom =		new SplineHandle(3.2f,2.4f,0f , 90f, 3.2f, 0f, hip);
		groin_top = 		new SplineHandle(3.2f,2.4f,0f , 270f, 2.4f, 0f, hip);
		groin_bottom = 		new SplineHandle(0f,-3.2f,0f , 0f, 1.6f, 270f, hip);
		torso_center = 		new SplineHandle(0f,0f,0f , 0f, 0f, 0f, spine);
		
		bicepback_top = 	new SplineHandle( -1.2f,0f,0f , 270f, 2.4f, 135f, bicep_left);
		bicepfront_top = 	new SplineHandle( 1.2f,0f,0f , 280f, 2.4f, 45f, bicep_left);
		bicepback_bottom = 	new SplineHandle( -1.2f,-7.8f,0f , 90f, 2.4f, 180f, bicep_left);
		bicepfront_bottom = new SplineHandle( 1.2f,-7.8f,0f , 90f, 2.4f, 0f, bicep_left);
		bicep_center = 		new SplineHandle( 0f,-3.9f,0f , 0f, 0f, 0f, bicep_left);
		
		armback_top = 		new SplineHandle( -1.2f,-7.8f,0f , 265f, 2.4f, 180f, bicep_left);
		armfront_top = 		new SplineHandle( 1.2f,-7.8f,0f , 270f, 2.4f, 0f, bicep_left);
		armback_bottom = 	new SplineHandle( -1f,-7.8f,0f , 100f, 2.4f, 180f, arm_left);
		armfront_bottom = 	new SplineHandle( 1f,-7.8f,0f , 90f, 2.4f, 0f, arm_left);
		arm_center = 		new SplineHandle( 0f,-3.9f,0f , 0f, 0f, 0f, arm_left);
	}
	
	// Update is called once per frame
	void Update () 
	{
		origin.transform.localPosition = -gameObject.transform.position;
		
		EmptyMyMesh();
		
		frame = CycleFrame( frame, -3f );
		
		thigh_left.transform.localRotation = Util.DirRot(sinx(frame)*15f);
		calf_left.transform.localRotation = Util.DirRot(Mathf.Min(0f,cosx(frame)*30f));
		thigh_right.transform.localRotation = Util.DirRot(sinx(frame+180f)*15f);
		calf_right.transform.localRotation = Util.DirRot(Mathf.Min(0f,cosx(frame+180f)*30f));
		bicep_left.transform.localRotation = Util.DirRot(sinx(frame+180f)*8f);
		arm_left.transform.localRotation = Util.DirRot(Mathf.Max(0f,8f+cosx(frame+45f)*8f));
		bicep_right.transform.localRotation = Util.DirRot(sinx(frame)*8f);
		arm_right.transform.localRotation = Util.DirRot(Mathf.Max(0f,8f+cosx(frame-45f)*8f));
		spine.transform.localRotation = Util.DirRot(sinx(frame*2f - 45f)*3f);
		neck.transform.localRotation = Util.DirRot(sinx(frame*2f + 180f)*3f);
		
		ModHandles();
		
		//Set parents to left leg
		thighfront_top.parent = thigh_left;
		ass_bottom.parent = thigh_left;
		thighback_top.parent = thigh_left;
		thighback_bottom.parent = thigh_left;
		calfback_top.parent = thigh_left;
		thighfront_bottom.parent = thigh_left;
		calffront_top.parent = thigh_left;
		thigh_center.parent = thigh_left;
		calfback_bottom.parent = calf_left;
		calffront_bottom.parent = calf_left;
		calf_center.parent = calf_left;
		
		float nly = sinx(frame)*0.8f;
		float nd = sinx (frame)*20f;
		
		ass_bottom.ly += nly;
		thighback_top.ly += nly;
		ass_bottom.direction += nd;
		
		//Draw left leg
		AddSplineMesh( ass_top, ass_bottom,	thigh_center, 8, 1);
		AddSplineMesh( thighback_top, thighback_bottom, thigh_center, 6, 1);
		AddSplineMesh( thighfront_bottom, thighfront_top, thigh_center, 6, 1);
		CapSplineMesh( thighback_bottom, thighfront_bottom, thigh_center, 1);
		CapSplineMesh( thighfront_top, ass_top, thigh_center, 1);
		AddSplineMesh( calfback_top, calfback_bottom, calf_center, 6, 1);
		AddSplineMesh( calffront_bottom, calffront_top, calf_center, 6, 1);
		CapSplineMesh( calffront_top, calfback_top, calf_center, 1);
		CapSplineMesh( calfback_bottom, calffront_bottom, calf_center, 1);
		
		ass_bottom.ly -= nly*2f;
		thighback_top.ly -= nly*2f;
		ass_bottom.direction -= nd*2f;
		
		//Set parents to right leg
		thighfront_top.parent = thigh_right;
		ass_bottom.parent = thigh_right;
		thighback_top.parent = thigh_right;
		thighback_bottom.parent = thigh_right;
		calfback_top.parent = thigh_right;
		thighfront_bottom.parent = thigh_right;
		calffront_top.parent = thigh_right;
		thigh_center.parent = thigh_right;
		calfback_bottom.parent = calf_right;
		calffront_bottom.parent = calf_right;
		calf_center.parent = calf_right;
		
		//Draw right leg
		AddSplineMesh( ass_top, ass_bottom,	thigh_center, 8, 1);
		AddSplineMesh( thighback_top, thighback_bottom, thigh_center, 6, 1);
		AddSplineMesh( thighfront_bottom, thighfront_top, thigh_center, 6, 1);
		CapSplineMesh( thighback_bottom, thighfront_bottom, thigh_center, 1);
		CapSplineMesh( thighfront_top, ass_top, thigh_center, 1);
		AddSplineMesh( calfback_top, calfback_bottom, calf_center, 6, 1);
		AddSplineMesh( calffront_bottom, calffront_top, calf_center, 6, 1);
		CapSplineMesh( calffront_top, calfback_top, calf_center, 1);
		CapSplineMesh( calfback_bottom, calffront_bottom, calf_center, 1);
		
		belly_bottom.ly += Mathf.Abs( sinx(frame-30) )*1.6f*bodyfat;
		groin_top.ly += Mathf.Abs( sinx(frame-30) )*1.6f*bodyfat;
		
		//Draw torso
		AddSplineMesh( highback_top, highback_bottom, torso_center, 4, 1);
		AddSplineMesh( lowback_top, lowback_bottom, torso_center, 6, 1);
		CapSplineMesh( lowback_bottom, groin_bottom, torso_center, 1);
		AddSplineMesh( groin_bottom, groin_top, torso_center, 10, 1);
		AddSplineMesh( belly_bottom, belly_top, torso_center, 10, 1);
		AddSplineMesh( chest_bottom, chest_top, torso_center, 4, 1);
		CapSplineMesh( chest_top, highback_top, torso_center, 1);
		
		//Set parents to left arm
		bicepfront_top.parent = bicep_left;
		bicepback_top.parent = bicep_left;
		bicepback_bottom.parent = bicep_left;
		bicepfront_bottom.parent = bicep_left;
		bicep_center.parent = bicep_left;
		armfront_top.parent = bicep_left;
		armback_top.parent = bicep_left;
		armback_bottom.parent = arm_left;
		armfront_bottom.parent = arm_left;
		arm_center.parent = arm_left;
		
		//Draw left arm
		AddSplineMesh( bicepback_top, bicepback_bottom, bicep_center, 6, 1);
		AddSplineMesh( bicepfront_bottom, bicepfront_top, bicep_center, 6, 1);
		CapSplineMesh( bicepback_bottom, bicepfront_bottom, bicep_center, 1);
		CapSplineMesh( bicepfront_top, bicepback_top, bicep_center, 0);
		AddSplineMesh( armback_top, armback_bottom, arm_center, 6, 1);
		AddSplineMesh( armfront_bottom, armfront_top, arm_center, 6, 1);
		CapSplineMesh( armfront_top, armback_top, arm_center, 1);
		CapSplineMesh( armback_bottom, armfront_bottom, arm_center, 1);
		
		//Set parents to right arm
		bicepfront_top.parent = bicep_right;
		bicepback_top.parent = bicep_right;
		bicepback_bottom.parent = bicep_right;
		bicepfront_bottom.parent = bicep_right;
		bicep_center.parent = bicep_right;
		armfront_top.parent = bicep_right;
		armback_top.parent = bicep_right;
		armback_bottom.parent = arm_right;
		armfront_bottom.parent = arm_right;
		arm_center.parent = arm_right;
		
		//Draw right arm
		AddSplineMesh( bicepback_top, bicepback_bottom, bicep_center, 6, 1);
		AddSplineMesh( bicepfront_bottom, bicepfront_top, bicep_center, 6, 1);
		CapSplineMesh( bicepback_bottom, bicepfront_bottom, bicep_center, 1);
		CapSplineMesh( bicepfront_top, bicepback_top, bicep_center, 0);
		AddSplineMesh( armback_top, armback_bottom, arm_center, 6, 1);
		AddSplineMesh( armfront_bottom, armfront_top, arm_center, 6, 1);
		CapSplineMesh( armfront_top, armback_top, arm_center, 1);
		CapSplineMesh( armback_bottom, armfront_bottom, arm_center, 1);
		
		CreateMyMesh();
	}
	
	float CycleFrame( float current, float delta )
	{
		float output = current+delta;
		if(output>=360f){output-=360f;}
		if(output<0f){output+=360f;}
		return output;
	}
	
	GameObject NewBone(Vector3 lpos, GameObject newpar, string newname)
	{
		GameObject newbone;
		newbone = Instantiate(bone_prefab,Vector3.zero,Quaternion.identity) as GameObject;
		newbone.transform.parent = newpar.transform;
		newbone.transform.localPosition = lpos;
		newbone.transform.localRotation = Quaternion.identity;
		newbone.name = newname;
		return newbone;
	}
	
	void EmptyMyMesh()
	{
		verts.Clear();
		norms.Clear ();
		tris.Clear ();
	}
	
	void CreateMyMesh()
	{
		GetComponent<MeshFilter>().mesh.vertices = verts.ToArray();
		GetComponent<MeshFilter>().mesh.normals = norms.ToArray();
		GetComponent<MeshFilter>().mesh.triangles = tris.ToArray();
	}
	
	void AddSplineMesh( SplineHandle handle1, SplineHandle handle2, SplineHandle center, int count , int winding)
	{
		//Vector3 centerPos = center.GetStart ();
		int thiscenter = verts.Count;
		verts.Add ( center.GetStart () );
		norms.Add ( new Vector3(0f,0f,-1f) );
		for(int i=0;i<count;i++)
		{
			float v = (float)i*(1f/((float)count-1f));
			int thisvert = verts.Count;
			
			Vector3 start1 = handle1.GetStart ();
			Vector3 start2 = handle2.GetStart ();
			Vector3 end1 = handle1.GetEnd();
			Vector3 end2 = handle2.GetEnd ();
			Vector3 norm1 = handle1.GetNormal();
			Vector3 norm2 = handle2.GetNormal();
			
			Vector3 vertPos = Util.Spline4 ( start1 , end1 , end2 , start2 , v );
			verts.Add( vertPos );
			norms.Add ( Vector3.Normalize(Vector3.Lerp (norm1,norm2,v)) );
			
			if(i>0)
			{
				tris.Add (thiscenter);
				tris.Add (thisvert+Mathf.Min (0,winding));
				tris.Add (thisvert-Mathf.Max (0,winding));
			}
		}
	}
	
	void CapSplineMesh( SplineHandle handle1, SplineHandle handle2, SplineHandle center, int captype)
	{
		int thiscenter = verts.Count;
		verts.Add ( center.GetStart () );
		norms.Add ( new Vector3(0f,0f,-1f) );
		
		Vector3 start1 = handle1.GetStart ();
		Vector3 start2 = handle2.GetStart ();
		
		verts.Add ( start1 );
		norms.Add (handle1.GetNormal() );
		
		verts.Add ( Vector3.Lerp(start1,start2,0.5f) );
		if(captype==1)
		{
			norms.Add ( new Vector3(0f,0f,-1f) );
		}
		if(captype==0)
		{
			norms.Add ( Vector3.Lerp(handle1.GetNormal(),handle2.GetNormal(),0.5f) );
		}
		
		verts.Add ( start2 );
		norms.Add ( handle2.GetNormal() );
		
		tris.Add (thiscenter);
		tris.Add (thiscenter+2);
		tris.Add (thiscenter+1);
		
		tris.Add (thiscenter);
		tris.Add (thiscenter+3);
		tris.Add (thiscenter+2);
		
	}
	
	float sinx( float input )
	{
		return Mathf.Sin (input*Mathf.Deg2Rad);
	}
	
	float cosx( float input )
	{
		return Mathf.Cos (input*Mathf.Deg2Rad);
	}
}
