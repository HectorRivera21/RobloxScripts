wait (2)
local Players = game:GetService("Players")
local money = script.Parent
local function KeepScore(hit)
	local partParent = hit.parent
	local humanoid = partParent:FindFirstChildWhichIsA("Humanoid")
	
	if humanoid then
		-- FINDS THE PLAYER WHO HIT THE MONEY
		local player = Players:GetPlayerFromCharacter(partParent)
		-- FINDS THE TOOL IN THE PLAYER BACKPACK
		local tool = player.Backpack:FindFirstChild("Bag")
		if not tool then
			-- IF THE PLAYER HAS TOOL OUT THEN GIVE 5 MONEY
			money:Destroy()
			local leaderstats = player.leaderstats
			local moneyStat = leaderstats and leaderstats:FindFirstChild("Money")
			if moneyStat then 
				moneyStat.Value = moneyStat.Value + 5
			end	
		else
			-- IF PLAYER DOESNOT HAVE TOOL OUT THEN GIVE 1 DOLLAR
			money:Destroy()
			local leaderstats = player.leaderstats
			local moneyStat = leaderstats and leaderstats:FindFirstChild("Money")
			if moneyStat then 
				moneyStat.Value = moneyStat.Value + 1
			end	
		end	
	end
end

money.Touched:Connect(function(hit)KeepScore(hit)end)
