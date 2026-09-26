print("Hello If-Else!")

local var = 0

if var == 2 then
	print("Variable is really equivarent to 2")

elseif var == 3 then
	print("Variable is really equivalent to 3")

else
	print("not here")
end

--Learning Objective in if-else using all the funda so far

--Variable and Properties
local firstBlock = game.Workspace.LavaBlock
local secondBlock = game.Workspace.LimeStonBlock
local thirdBlock = game.Workspace.RockBlock

--Functions, Parameter, and ifelse
local function checkBlock(param1)
	if param1 ~= nil then
		firstBlock.Material = param1
		secondBlock.Material = param1
		thirdBlock.Material = param1
		--printing
		print("All Blocks convert to ", param1)
	else
		--returning value
		return "hatdog"
	end
end

--DataType
local testValue = "CeramicTiles"

--Argument
checkBlock(testValue)