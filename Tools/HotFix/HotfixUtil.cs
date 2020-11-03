/******************************************************
* DESCRIPTION: Hotfix 热更新
*      2019 / 04 / 28
*			刘超
******************************************************/
using System.Runtime.InteropServices;
using UnityEngine;
using System.IO;
using System.Collections;
using System.Text;
using System;
using System.Collections.Generic;

#if UNITY_EDITOR
using UnityEditor;
#endif

#if UNITY_EDITOR
public static class HotfixUtil
{
	/// <summary>
	/// Lua代码热更新 (Ctrl + `)
	/// </summary>
	[MenuItem("Lua/HotFix %`")]
	static void HotFix()
	{
		System.Collections.Generic.List<string> allHotFixFiles = LuaFileModifyCheck.GetHotFixFiles();
		if (allHotFixFiles.Count < 1) return;
		if (allHotFixFiles.Count >= 20)
		{
			Debug.LogError("LC: 文件过多, 热更新代码失败 !!!");
			return;
		}
		WZQ.LuaManager luaMgr = WZQ.GameManager.GetLuaManager();

		foreach (string file in allHotFixFiles)
		{
			luaMgr.CallFunction("TestTool.hotfix_file", file);
		}

		LuaFileModifyCheck.ClearHotFixFiles();
	}
}
#endif
