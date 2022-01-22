local platform = script.Parent

local function disappear()
	for count = 1, 10, 1 do
		wait(0.1)
		platform.Transparency = count/10
	end
	platform.CanCollide = false
end

local function appear()
	platform.Transparency = 0
	for count = 10, 1, -1 do
		wait(0.1)
		platform.Transparency = count/10
	end
	platform.CanCollide = true
end

while true do
	wait(3)
	disappear()
	wait(3)
	appear()
end