print("Hello PArent and Child!")

--[[specifically about FindFirstChild and WaitForChild, Undestand the Structure of the Studio/Game
o organize thing here in stuido, we have model and folder, 
model is group of Parts act as one PArt, folder just organize things (script, parts, etc)
]]

--FindFirstChild (inside a model so gamay rang parts nga searchan sa algo)
--this removes the directory calling, gamr.workspace.model.part.properties, but both of those below works the same
--local model = game.Workspace.Model

--we are inside the base model
local model = script.Parent
local bodySquare = model.BodySqaure
--so even though 4 kabuok ang same name ani, ang natawag/na-embed ani na function kay si firstchild
--going back to this thought, so mag forloop nsd if want all child with same name, like in properties script we do

bodySquare.Material = "Brick"
bodySquare.BrickColor = BrickColor.new("Really red")

local bodySquareFind = model:FindFirstChild("BodySqaureFind")
--for the advantage aning findfirstchild, is boolean iyang e throw, so if wala, then false, if naa, then ktong part ang sulod sa variable

if bodySquareFind then
	bodySquareFind.Material = "Leather"
	bodySquareFind.BrickColor = BrickColor.new("Cocoa")
else
	print("WALA IMONG GI PANGITA, so dli amg throw ug error, rather naka false si variable: ", bodySquareFind)
	--ohh naka null pala (nil)
end



--WaitForChild will look for a specific obejct in a game for a specific priod of time, and if doesnt exist, just continue the rest of the code
local waitpart = model:WaitForChild("BodySqaureWait")
--if wla nag exist, tas gi RUN, makita ang error nga dugay mo pop up since gi check tanan naa sa dula nga object
print("DILI NI MA PRINT NOT UNTIL MAKITA WAITPART, if dli, ddtoa ra taman eh")
--haha, makita ra siya after gi paste, ky gitangal as cut for proof purposes
waitpart.BrickColor = BrickColor.new("Hot pink")


--KillBrick, the script is inside killbrick part