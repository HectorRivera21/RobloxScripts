wait (2)
leaderstats = game.Players.glorbusporpus.leaderstats
local money = script.Parent
local function KeepScore(hit, player)
	if hit.Parent:FindFirstChildWhichIsA("Humanoid") then 
		leaderstats.Money.Value = leaderstats.Money.Value + 1
		money:Destroy()
	end
end

	
money.Touched:Connect(function(hit)KeepScore(hit)end)