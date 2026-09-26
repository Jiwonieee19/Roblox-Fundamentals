print("Hello KillBrick!")

local killbrick = script.Parent

--Applying the previous topics in events and childs

killbrick.Touched:Connect(function(otherPart)
	--detect if its the player (humanoid)
	local humanoid = otherPart.Parent:FindFirstChild("Humanoid")
	
	if humanoid then
		humanoid.Health = 0
	end
	--can do alot of things with this!
end)