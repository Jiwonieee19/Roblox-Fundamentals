print("Hello Tables!")
--2 types of table, Arrays and Dictionaries

--[[

--ARRAY
--it actually starts in 1 here rather than 0
local myArray = {24, "Hi", true, 12}
--print(myArray[1])

--table. just explore the other function here
table.insert(myArray, "Added First")
table.remove(myArray, 1)
local find = table.find(myArray, "Added First")
--the find returns the index rather than the value

--.length is same as the #
for i = 1, #myArray do
	print(myArray[i])
end

if find then
	print("NAA SI, INDEX: ", find)
	print("VALUE: ", myArray[find])
end

]]

--[[

--DICTIONARY
print("BELOW ARE RESULTS/OUTPUT IN DICTIONARY EXPERIMENT!")
--key left, value right

--first approach, using key as data type
local menu = {
	["McFloat"] = 49,
	["1pc Chicken"] = 109,
	["Fries"] = 59,
	["McPie"] = 49
}

print("McPie Price: ", menu["McPie"])
print("McFloat Price: ", menu["McFloat"])

menu["McFloat"] = 79

print("McFloat Price: ", menu["McFloat"])


--second approach, using key as variable
local menu2 = {
	PepsiFloat = 69,
	JabiFries = 59,
	JabiChicken = 99
}

print("JabiFries Price: ",  menu2.JabiFries)

menu2.JabiFries = 79
print("JabiFries Price: ",  menu2.JabiFries)

]]

--PairLoops, pairs() and ipairs() == forEachLoop Java
local menu3 = {
	["Bloodlust Axe"] = 1200,
	["Athena Shield"] = 2000,
	["Rapid Boots"] = 500
}

--pairs()
--menuItem is a variablr for the key, the price is for the value
for menuItem, price in pairs(menu3) do
	print(menuItem, price)
	--pairs just randomly pick who/s gonna print firdt/iterate first
end


--ipairs()
local ipairArray = {10,20,30}
--menuItem is a variablr for the key, the price is for the value
for index, amount in ipairs(ipairArray) do
	print(index, amount)
	--ipairs can be seequential but hell nah, not in the hashset/map, only in array
end
for _, amount in ipairs(ipairArray) do
	print(amount)
	--if index varaible is not needed in the function
end


--REAL USAGE IN WORKSPACE
local model = game.Workspace.JAPAN
for _, part in ipairs(model:GetChildren()) do
	print(part.Name) 
	--prints all the children but not the grandchildren and etc
end