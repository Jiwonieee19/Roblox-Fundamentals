print("Hello Break & Continue!")


--BREAK
--removing the ,1 since increment is +1 in default
for i = 1, 1000 do
	print("this statement is shii")
	if i == 10 then
		break
	end
end

local count = 1

while count <= 1000 do
	print("Printing the while loop break")
	if count == 50 then
		break
	end
	count += 1
end


--CONTINUE
for j = 1, 20 do
	if j == 10 then
		print("Skipping the 10")
		continue
	end
	print("Normal forloop: ", j)
end