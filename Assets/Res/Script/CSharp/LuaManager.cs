using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using LuaInterface;
using System.IO;
using UnityEngine.UI;

namespace WZQ
{
	public class LuaManager : MonoBehaviour
	{
		private LuaState lua;
		private LuaLooper loop = null;
		private Text textComp;
		private Button btnComp;

		// Use this for initialization
		void Awake()
		{
			lua = new LuaState();
			lua.LuaSetTop(0);
			InitStart();
			LuaBinder.Bind(lua);
			DelegateFactory.Init();
			LuaCoroutine.Register(lua, this);
		}

		public void InitStart()
		{
			lua.Start();    //启动LUAVM
			StartMain();
			StartLooper();
		}

		void StartLooper()
		{
			loop = gameObject.AddComponent<LuaLooper>();
			loop.luaState = lua;
		}

		public void ExcuteMain()
		{
			StartMain();
		}

		public void SetComponent(Text text,Button btn)
		{
			textComp = text;
			btnComp = btn;
			CallFunction("Main.SetComponent", textComp, btnComp);
		}

		void StartMain()
		{
			lua.DoFile("Main.lua");
			lua.DoFile("OtherConfig.lua");
			Debug.LogError("StartMain");
		}

		public object[] DoFile(string filename)
		{
			return lua.DoFile(filename);
		}

		// Update is called once per frame
		public object[] CallFunction(string funcName, params object[] args)
		{
			LuaFunction func = lua.GetFunction(funcName);
			if (func != null)
			{
				return func.CallWithReturn(args);
			}
			return null;
		}
	}
}
