using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
namespace WZQ
{
	public class GameManager : MonoBehaviour
	{
		static LuaManager luaMgr = null;
		public Text logText;
		public Button updateBtn;
		// Start is called before the first frame update
		void Start()
		{
			Init();
		}

		// Update is called once per frame
		void Update()
		{

		}

		void Init()
		{
			Debug.Log("***********初始化***************");
			DontDestroyOnLoad(gameObject);  //防止销毁自己		
			luaMgr = gameObject.GetComponent<LuaManager>();
			//把组件传给lua
			TransferToLua();
			//注册点击事件
			updateBtn.onClick.AddListener(OnClickBtn);
		}

		void TransferToLua()
		{
			if (luaMgr != null)
			{
				luaMgr.SetComponent(logText,updateBtn);
			}
		}

		void OnClickBtn()
		{
			luaMgr.CallFunction("Main.Log");
		}

		public static LuaManager GetLuaManager()
		{
			return luaMgr;
		}

	}
}
