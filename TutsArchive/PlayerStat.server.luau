print("Hello PlayerStat!")

--creating instacnes with the game is running
--thr string inside the () is the class name of the object on the game
local newPart = Instance.new("Part")
newPart.Name = "ChangeName"
newPart.BrickColor = BrickColor.new("Royal blue")
--newPart.Position =
--assigning who will be its parent
newPart.Parent = game.Workspace

--[[
datatypes as game instances too (the BOolValue, NumValue, StrValue)
those can be using to add leader stat dynamically or playerstat like hp and mana

UNDERSTAND THE PLAYERS FOLDER
theres a default instacnes within the player, a backpack and etc
the diff is that in players folder, its the player object, while in players(name) workspace, its the character
]]

--LEADERBOARD/PALYERSTAT MAKING: 
--1st: ADD PLAYERS events
game.Players.PlayerAdded:Connect(function(player)
	--first is create leaderstat folder inside of each player
	local leaderStat = Instance.new("Folder")
	leaderStat.Name = "leaderstats"
	--it sohuld be leaderstats in lowercase so roblox know this is the leaderstats folder to be added to player
	leaderStat.Parent = player
	
	--[[
	add datatypes here na since nakita na sa pag run na nag exist ang folder,
	and actually automatic na siya mo gawas sa screen after mag add ug unsay ipamutang dria
	]]
	local coins = Instance.new("IntValue")
	coins.Name = "COins"
	coins.Value = 0
	coins.Parent = leaderStat
	
	local Status = Instance.new("StringValue")
	Status.Name = "STATUs"
	Status.Value = "Single"
	Status.Parent = leaderStat
	
	while true do
		task.wait(3)
		coins.Value = coins.Value + 3
	end
	
end)