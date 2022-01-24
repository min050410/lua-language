local exit = script.Parent
local PShopGui = exit.Parent

local function leftClick()
	print(PShopGui.Name)
	PShopGui.Enabled = false
	PShopGui:SetAttribute("dalay", true)
end

exit.MouseButton1Click:Connect(leftClick)
