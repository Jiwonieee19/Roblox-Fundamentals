print("Hello Math!, Parameter!, Arguments! and Return!")

--MATH
local sum = 4 + 5
print(sum)
--ofcourse we can use all the math we know here just like other language


--PARAMETER is the one used to catch the value
local function add (parameter1, parameter2)
	print(parameter1 + parameter2)
end


--ARGUMENTS is the one used to throw the value to the parameter
add(1,2)

--RETURN is the one used to return the value to the print
local function sub (parameter1, parameter2)
	return parameter1 - parameter2
end

print("HATDOG RESULT: ", sub(43,2))