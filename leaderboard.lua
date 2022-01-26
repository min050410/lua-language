local function onPlayerAdded(player)
    local leader = Instance.new("Folder")
    leader.Name = "leaderstats"
    leader.Parent = player

    local won = Instance.new("IntValue")
    won.Name = "won"
    won.Value = 0
    won.Parent = leader
end

game.Players.PlayerAdded:Connect(onPlayerAdded)