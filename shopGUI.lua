local shop = script.Parent
local ground = workspace:FindFirstChild("Ground")
local shopGUIRange = workspace:FindFirstChild("ShopGUIRange")

-- open shop gui / when touched union
local function openShopGui(otherpart)
	local player = game.Players:GetPlayerFromCharacter(otherpart.Parent)
	if not player then return end
	local PGUI = player.PlayerGui
	local PShopGui = PGUI:WaitForChild("shop")
	--print(PShopGui.Name)
	PShopGui.Enabled = true		
	--print(PShopGui.Enabled)
end

-- close shop gui / when touched ground
local function closeShopGui(otherpart)
	local player = game.Players:GetPlayerFromCharacter(otherpart.Parent)
	if not player then return end
	local PGUI = player.PlayerGui
	local PShopGui = PGUI:WaitForChild("shop")
	PShopGui.Enabled = false
	--print(PShopGui.Enabled)
end

shopGUIRange.Touched:Connect(openShopGui)
shop.Touched:Connect(openShopGui)
ground.Touched:Connect(closeShopGui)

