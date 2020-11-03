using UnityEngine;
using System.Collections.Generic;

#if UNITY_EDITOR
using UnityEditor;
#endif

#if UNITY_EDITOR
// 用来检测有变化的lua文件
class LuaFileModifyCheck: AssetPostprocessor 
{
	public static List<string> allHotFixFiles = new List<string>();

	static void OnPostprocessAllAssets (string[] importedAssets, string[] deletedAssets, string[] movedAssets, string[] movedFromAssetPaths) 
	{
		foreach (var path in importedAssets)
		{
			if(!path.EndsWith(".lua")) return;
			// 去掉路径前面的 Assets/DOW/Client/Lua/
			string filePath = path.Remove(0, 22);
			Debug.LogError("filePath  =  "+ filePath);
			filePath = filePath.Replace(".lua", "");
			if(allHotFixFiles.Contains(filePath)) return;
			allHotFixFiles.Add(filePath);
		}
	}

	public static void ClearHotFixFiles()
	{
		allHotFixFiles.Clear();
	}

	public static List<string> GetHotFixFiles()
	{
		return allHotFixFiles; 
	}
}
#endif
