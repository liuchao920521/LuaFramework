--[[
	测试工具

	TestTool.Stamp("function A")
	temp:A();
	TestTool.Print();
--]]

TestTool = {};
local M = TestTool;

local list = {};
--[[
	@public 时间戳记
--]]
function M.Stamp(pref)
	local meta = {};
	meta.time = os.clock();
	meta.pref = pref and pref or "";
	table.insert(list, meta);
end

--[[
	@public 如果有时间戳，打印出Stamp到Print的期间的消耗时间
			没有时间戳，打印系统时间
--]]
function M.Print()
	local meta = table.remove(list, table.maxn(list));
	if meta then
		local time = os.clock() - meta.time;
		if info then info("[" .. meta.pref .. "] cost time：" .. time) end
	else
		if info then info("os.clock : " .. os.clock()) end
	end
end

function M.hotfix_file(filename)
	require ("hotfix.hotfix_helper");
	hotfix_helper.hotfix_file(filename);
end

function M.do_clean_up()
	require ("hotfix.hotfix_helper");
	hotfix_helper.do_clean_up();
end

function CheckLuaGrammer(filename)
	require(filename);
end

return M