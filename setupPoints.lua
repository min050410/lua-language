local Players = game:GetService("Players")

local function onCharacterAdded(character, player)
	player:SetAttribute("IsAlive", true)
	local humanoid = character:WaitForChild("Humanoid")
	humanoid.Died:Connect(function()
		local points = player.leaderstats.Points
		points.Value = 0
		player:SetAttribute("IsAlive", false)
	end)
end

local function onPlayerAdded(player)
	local leaderstats = Instance.new("Folder")
	leaderstats.Name = "leaderstats"
	leaderstats.Parent = player
	
	local points = Instance.new("IntValue")
	points.Name = "Points"
	points.Value = 0
	points.Parent = leaderstats
 
	player:SetAttribute("IsAlive", false)
	
	-- when character respone
	player.CharacterAdded:Connect(function(character)
		onCharacterAdded(character, player)
	end)
end

-- when player joins a game
Players.PlayerAdded:Connect(onPlayerAdded)

while true do
	wait(1)
	local playerList = Players:GetPlayers()
	for currentPlayer = 1, #playerList  do
		local player = playerList[currentPlayer]
		if player:GetAttribute("IsAlive") then
			local points = player.leaderstats.Points
			points.Value = points.Value + 1
		end
	end
end