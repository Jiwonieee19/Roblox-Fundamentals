--local mainGame = game.Workspace.MainGame
--local buttons = mainGame.Buttons
--local gates = mainGame.Gates

local mainGame = game.Workspace:WaitForChild("MainGame")
local buttons = mainGame:WaitForChild("Buttons")
local gates = mainGame:WaitForChild("Gates")

local function startStage(button, started)
	--print("HELLU")
	local gate = gates:FindFirstChild(button.Name)
	local duration = button:FindFirstChild("duration")
	
	started.Value = true
	if gate then
		gate.Transparency = 0.4
		gate.CanCollide = false
	end

	local timer = duration.Value
	while timer > 0 do
		print(timer)
		task.wait(1)
		timer -= 1
	end
	--task.wait(duration.Value) --easiest but if you dont need the countdown
	
	started.Value = false
	gate.Transparency = 0
	gate.CanCollide = true
end

for _, button in pairs(buttons:GetChildren()) do
	button.Touched:Connect(function(otherPart)
		local human = otherPart.Parent:FindFirstChild("Humanoid")
		local started = button:FindFirstChild("starter")
		
		if human and started and started.Value == false then
			startStage(button, started)
		end
	end)
end