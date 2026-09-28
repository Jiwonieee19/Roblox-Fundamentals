local mainGame = game.Workspace:FindFirstChild("MainGame")
local coins = mainGame:FindFirstChild("Coins")

-- actually wala ni sa tuts, pero loophole siya ky pede makuha ang coin na wla nag start
local buttons = mainGame:FindFirstChild("Buttons")
--local stage
--local started = buttons.stage1:FindFirstChild("starter")

game.Players.PlayerAdded:Connect(function(player)
	local leaderstats = Instance.new("Folder")
	leaderstats.Name = "leaderstats"
	leaderstats.Parent = player
	
	local coins = Instance.new("IntValue")
	coins.Name = "Coins"
	coins.Value = 0
	coins.Parent = leaderstats
end)

for _, coin in pairs(coins:GetChildren()) do
	
	local stage = buttons:FindFirstChild(coin.Name)
	local started = stage:FindFirstChild("starter")
		
	coin.Touched:Connect(function(otherPart)
		local human = otherPart.Parent:FindFirstChild("Humanoid")
		local player = game.Players:GetPlayerFromCharacter(otherPart.Parent)
		local touched = coin:FindFirstChild("touch")
		
		if human and player and touched and touched.Value == false and started.Value == true then
			touched.Value = true
			local randomAmount = math.random(1, 10)
			player.leaderstats.Coins.Value += randomAmount
			coin.Transparency = 1
			print("NA touched ang coin biskag off pa ang start button?")
		end
	end)
end