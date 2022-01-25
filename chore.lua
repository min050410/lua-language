local proximityPrompt = script.Parent

local function Earn(player)
	local won = player.leaderstats:WaitForChild("won")
	won.Value = won.Value + 10
	local Barrel = proximityPrompt.Parent
	Barrel.Union1.Transparency = 1
	Barrel.Union2.Transparency = 1
	Barrel.Union1.CanCollide = false
	Barrel.Union2.CanCollide = false
	proximityPrompt.Parent = nil
	local hideBarrel = workspace.HideBarrel
	hideBarrel.Union1.Transparency = 0
	hideBarrel.Union2.Transparency = 0
end

proximityPrompt.TriggerEnded:Connect(Earn)
