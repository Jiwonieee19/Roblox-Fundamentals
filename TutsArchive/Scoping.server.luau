print("Hello Scoping!")

local myAmazingBaseplate = game.Workspace.Baseplate

local function changeBaseplateColor()
	local favColor = "Green"
	print(favColor)
end

changeBaseplateColor()

--so local is just accesable to its codeblock or where it is declared
--while global can be anywhere, outside the script or outside the codeblock

--global is no local on it
favColor2 = nil

function changeBaseplateColor2()
	favColor2 = "Red"
	--the reason why we cant initialize it here gaina coz local function should only declared local variables
	local tryy = "try if pede naay local variable sa global function"
	print(tryy)
end

changeBaseplateColor2()
--run the function first so the variable value will be updated
print(favColor2)