local buy = script.Parent
local PShopGui = buy.Parent.Parent

local player = PShopGui.Parent.Parent
local won = player.leaderstats.won
local backpack = player.Backpack

local locked = Instance.new("Folder")
locked.Name = "locked"
locked.Parent = player

-- locked weapons
backpack.ClassicSword.Parent = locked

-- won Value 임의로 설정
won.Value = 50

local function leftClick()
	print(won.Value)
	
	if(locked:FindFirstChild("ClassicSword")) then
		if (won.Value-10>=0 and locked.ClassicSword) then
			won.Value = won.Value-10
			locked.ClassicSword.Parent = backpack		
		else
			local error = PShopGui.Parent.Error
			error.error.Text = tostring(math.abs(won.Value-10)).." 원이 부족합니다"
			error.Enabled = true
			wait(2)
			error.Enabled = false
		end
	else
		local error = PShopGui.Parent.Error
		error.error.Text = "이미 구매한 아이템입니다"
		error.Enabled = true
		wait(2)
		error.Enabled = false
	end
end
	
buy.MouseButton1Click:Connect(leftClick)