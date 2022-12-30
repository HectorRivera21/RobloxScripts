game.Players.PlayerAdded:Connect(function(player)
	-- player leaderboard stats
	local folder = Instance.new("Folder", player)
	folder.Name = "leaderstats"
	-- money leadboard value 
	local Money = Instance.new("IntValue", folder)
	Money.Name = "Money"
end)