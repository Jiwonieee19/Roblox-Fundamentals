print("Hello Functions!")

local lavaBlock = game.Workspace.LavaBlock

lavaBlock.Transparency = 0.5

--cration of the function
local function changeTransparency(parent, number)
	if (number == 1) then
		parent.Transparency = 0.9
	end
end
--using the function
changeTransparency(lavaBlock, 1)