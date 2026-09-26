print("Hello Loops!")

--FOR LOOPS
for forCount = 1,4,1 do
	print("For Count: ", forCount)
end

--WHILE LOOPS
local whileCount = 1

while whileCount < 3 do
	print("While Count: ", whileCount)
	whileCount += 1
end

--DECREMENT FORLOOP (WORKS ON WHILE TOO)
for DecrementCount = 5, 2, -1 do
	print("Decrement: ", DecrementCount)
end

--NESTED LOOP (WORK ON BOTH LOOP)
for nested1 = 1,3,1 do
	print("Nested Outside: ", nested1)
	print(" ")
	for nested2 = 1,2,1 do
		print("Nested Inside: ", nested2)
	end
end

--Learning Objective: loop in something in game
local baseplate = game.Workspace.Baseplate

for Counter = 1, 5, 1 do
	baseplate.BrickColor = BrickColor.new("Really red")
	
	--wait statement, a lot of function inside the task. btw
	task.wait(1)
	
	baseplate.BrickColor = BrickColor.new("Gold")
	task.wait(1)
end

--Assignment in Advance tuts: simutaneously working the 2 loops that is not nested