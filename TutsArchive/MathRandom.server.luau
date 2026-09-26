print("Hello MathRandom!")

--between the range (min, max) surely returns the Min to Max
local ranNum = math.random(0,2)

print(ranNum)

--so the tuts use the random as minmax of rgb for colors and then using it to change the color of baseplate

local JapanGate = game.Workspace.JAPAN
JapanGate.roof.Part.BrickColor = BrickColor.new("Really red")


local base = game.Workspace.Baseplate

while true do
	local redVal = math.random(0,255)
	local greenVal = math.random(0,255)
	local blueVal = math.random(0,255)
	
	base.Color = Color3.fromRGB(redVal,greenVal,blueVal)
	task.wait(2)
end

--also if empty ang () its a default binary, 0 and 1