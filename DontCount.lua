local spawn = script.Parent
local Players = game:GetService("Players")

local isTouched = false

spawn.Touched:Connect(function(otherParts)
	local parentParts = otherParts.Parent
	local playerList = Players:GetPlayers()
	for currentPlayer = 1, #playerList  do
		local player = playerList[currentPlayer]
		if player.Name == parentParts.Name then
			local points = player.leaderstats.Points
			points.Value = 0
		end
	end
	isTouched = true
	for count = 1, 10, 1 do
		wait(0.1)
		spawn.Transparency = count/10
	end
	spawn.CanCollide = false
	wait(3)
	spawn.Transparency = 0
	spawn.CanCollide = true
	isTouched = false
end)

