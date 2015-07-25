using UnityEngine;
using System.Collections;

public class Anims_Generic : MonoBehaviour 
{
	protected delegate float Anim( float frame, float speed, float lerp );
	protected Anim AnimIdentity;
	protected Anim CurrentMoveAnim;
	protected Anim LastMoveAnim;
	protected Anim CurrentActionAnim;
	
	protected float MoveAnimFrame = 0f;
	protected float MoveAnimTransitionTime = 1f;
	protected float MoveAnimLerp = 0f;
	protected float ActionAnimFrame = 0f;
	protected bool DoActionAnim = false;
	protected bool LoopActionAnim = false;
	protected float ActionAnimTransitionTime = 1f;
	protected float ActionAnimLerp = 0f;
	protected bool CanInterruptAction = false;
	
	protected void SetAnimIdentity( Anims_Generic.Anim identity )
	{
		AnimIdentity = identity;
	}
	
	protected void SetMoveAnim( Anims_Generic.Anim moveAnim , float time)
	{
		LastMoveAnim = CurrentMoveAnim;
		CurrentMoveAnim = moveAnim;
		MoveAnimTransitionTime = time;
		if(MoveAnimTransitionTime>0f)
			MoveAnimLerp = 1f;
	}
	
	protected void SetActionAnim( Anims_Generic.Anim actionAnim , float time, bool shouldLoop, bool canInterrupt)
	{
		if(CanInterruptAction==false && DoActionAnim==true){return;}
		
		CurrentActionAnim = actionAnim;
		ActionAnimTransitionTime = time;
		DoActionAnim = true;
		ActionAnimFrame = 0f;
		LoopActionAnim = shouldLoop;
		CanInterruptAction = canInterrupt;
	}
	
	protected void EndActionAnim()
	{
		LoopActionAnim = false;
		DoActionAnim = false;
	}
	
	protected void ResetChildRotations( Transform parent , float lerp )
	{
		SetTransformRotation( parent, Quaternion.identity, lerp );
		int count = parent.childCount;
		if(count>0)
		{
			for(int i=0; i<count; i++)
			{
				ResetChildRotations( parent.GetChild(i) ,lerp);
			} 
		}
	}
	
	void Awake()
	{
		AnimIdentity = None;
		CurrentMoveAnim = None;
		LastMoveAnim = None;
		CurrentActionAnim = None;
	}
	
	protected float None( float frame, float speed, float lerp )
	{
		return frame;
	}
	
	protected void Animate()
	{
		AnimIdentity(0f,1f,1f);
		
		if(MoveAnimLerp>0f)
		{
			MoveAnimFrame = LastMoveAnim( MoveAnimFrame, MoveAnimLerp, 1f );
			MoveAnimFrame = CurrentMoveAnim( MoveAnimFrame, 1f - MoveAnimLerp, 1f - MoveAnimLerp );
		}
		else
		{
			MoveAnimFrame = CurrentMoveAnim( MoveAnimFrame, 1f, 1f );
		}
		
		ActionAnimFrame = CurrentActionAnim( ActionAnimFrame, 1f, ActionAnimLerp );
		
		if(MoveAnimFrame>1f){MoveAnimFrame-=1f;}
		
		if(ActionAnimFrame>=1f)
		{
			if(LoopActionAnim)
			{
				ActionAnimFrame -= 1f;
			}
			else
			{
				DoActionAnim = false;
			}
		}
		
		if(MoveAnimTransitionTime>0f){ MoveAnimLerp = Mathf.Max (0f,MoveAnimLerp - Time.deltaTime/MoveAnimTransitionTime); }
		if(DoActionAnim)
		{
			ActionAnimLerp = Mathf.Min ( 1f, ActionAnimLerp + Time.deltaTime/ActionAnimTransitionTime );
		}
		else
		{
			ActionAnimLerp = Mathf.Max ( 0f, ActionAnimLerp - Time.deltaTime/ActionAnimTransitionTime );
		}
	}

	protected void SetTransformRotation( Transform bone, Quaternion rotation, float lerp )
	{
		if(lerp==1f)
		{
			bone.localRotation = rotation;
		}
		else
		{
			bone.localRotation = Quaternion.Lerp(bone.localRotation,rotation,lerp);
		}
	}
	protected void SetTransformPosition( Transform bone, Vector3 position, float lerp )
	{
		if(lerp==1f)
		{
			bone.localPosition = position;
		}
		else
		{
			bone.localPosition = Vector3.Lerp(bone.localPosition,position,lerp);
		}
	}
	
	public Quaternion Ang(float x, float y, float z)
	{
		return Quaternion.Euler( new Vector3(x,y,z) );
	}
	public float Sin( float angle )
	{
		return Mathf.Sin( angle*Mathf.Deg2Rad );
	}
	public float Cos( float angle )
	{
		return Mathf.Cos( angle*Mathf.Deg2Rad );
	}
}
