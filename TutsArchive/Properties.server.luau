print("Hello Properties!")

--game.Workspace.JAPAN locating objects in Luau
game.Workspace.JAPAN.roof.Part.BrickColor = BrickColor.new("Really blue")
--works only in the first child

--generated, for reference purpose, moagi man sad tag loop diri sa luau tuts
for _, part in ipairs(game.Workspace.JAPAN.roof:GetChildren()) do
	if part:IsA("Part") then
		part.BrickColor = BrickColor.new("Really blue")
		
		
		part.Material = "Brick"
		part.Material = Enum.Material.Ice
		--both approach works the same
	end
end

local baseplate = game.Workspace.Baseplate
--this works too

baseplate.BrickColor = BrickColor.new("Really red")

--NOTE that the changes here will reflect during running the game and not directly on the editor view