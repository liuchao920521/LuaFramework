require "TestTool";
Main = {};
local M = Main;

--场景切换通知
function Main.OnLevelWasLoaded(level)
	collectgarbage("collect")
	Time.timeSinceLevelLoad = 0
end

function Main.OnApplicationQuit()
end

function Main.Init()
	require("GameManager").New();
end

function Main.SetComponent(Text,Button)
	
end

function Main.Log()
	print("1111..")
end

return Main