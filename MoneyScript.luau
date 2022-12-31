wait (2)
local Players = game:GetService("Players")
local money = script.Parent
local function KeepScore(hit)
	local partParent = hit.parent
	local humanoid = partParent:FindFirstChildWhichIsA("Humanoid")
	if humanoid then
		money:Destroy()
		local player = Players:GetPlayerFromCharacter(partParent)
		local leaderstats = player.leaderstats
		local moneyStat = leaderstats and leaderstats:FindFirstChild("Money")
		if moneyStat then 
			moneyStat.Value = moneyStat.Value + 1 
		end
	end
	
end

	
money.Touched:Connect(function(hit)KeepScore(hit)end)
