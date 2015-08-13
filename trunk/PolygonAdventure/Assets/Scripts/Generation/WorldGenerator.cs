using UnityEngine;
using System.Collections;

public class WorldGenerator : MonoBehaviour
{
	void Start()
	{
		World.InitWorld();
		
		Debug.Log ( World.name );
	}
}

public static class Gen
{
	public static float WorldSeed = 5f;
	private static float lastResult = WorldSeed;
	
	public static float Val( float x )
	{
		lastResult = (lastResult*1103515245f*x +12345f + lastResult)%(564357f*x + lastResult);
		return ( ((x*lastResult/6573f) + 32768f*lastResult) % 1000f )/1000f;
	}
	public static bool Bool( float x , float weight )
	{
		float test = Val( x );
		if(test<weight)
			return false;
		else
			return true;
	}
	public static bool Bool( float x )
	{
		//Default 50/50 chance
		return Bool(x,0.5f);
	}
}

public static class Names
{
	public static string[] vowels = new string[] {"a","e","i","o","u","y","ae","ea","io","ei","ie"};
	public static string[] consonants = new string[] {"b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","z","ch","sh","th","zh","hk","gr","ck","ll"};
	
	public static string RandomVowel( float seed )
	{
		return vowels[ Mathf.RoundToInt( Gen.Val( seed )*(float)(vowels.Length-1) ) ];
	}
	public static string RandomConsonant( float seed )
	{
		return consonants[ Mathf.RoundToInt( Gen.Val( seed )*(float)(consonants.Length-1) ) ];
	}
	public static string Capitalize( string input )
	{
		return char.ToUpper(input[0]) + input.Substring(1);
	}
}

public static class World
{
	public static string name = "";
	
	public static void InitWorld()
	{
		name = GenerateWorldName( Gen.WorldSeed );
	}
	
	private static string GenerateWorldName( float seed )
	{
		string name = "";
		int namelength = Mathf.FloorToInt( 3f + Mathf.Pow( Gen.Val( seed ) ,5f)*5f );
		bool lastWasVowel = Gen.Bool( seed , 0.3f);
		for( int i=0; i<namelength; i++)
		{
			if(lastWasVowel==true)
			{
				lastWasVowel = false;
				name += Names.RandomConsonant( (float)(seed*i + seed) );
			}
			else
			{
				lastWasVowel = true;
				name += Names.RandomVowel( (float)(seed*i + seed) );
			}
		}
		name = Names.Capitalize( name );
		
		return name;
	}
}