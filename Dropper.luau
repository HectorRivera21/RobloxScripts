local drop = script.Parent
local original = workspace.robuxOG
local Players = game:GetService("Players")
local Speed = 8
local ClickDetector = game.Workspace.SpeedClicker.ClickDetector




function MakeRobux()
	local copy = original:Clone()
	copy.Parent = workspace.Money
	copy.CFrame = drop.CFrame
	copy.Position = copy.Position + Vector3.new(0, -1,0)
	--wait(5)
	--copy:Destroy()
end
function SpeedUp(click)
	local leaderstats = click.leaderstats
	print(leaderstats.Money.Value)
	if leaderstats.Money.Value >= 100 then 
		Speed = Speed - 1
		leaderstats.Money.Value = leaderstats.Money.Value - 100
	end
end
ClickDetector.MouseClick:Connect(function(click)
	SpeedUp(click)
		
	end) 
while true do
	wait(Speed)
	MakeRobux()
end