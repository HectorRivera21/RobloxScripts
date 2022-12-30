function ChangeTimeOfDay()
	local currentTime = game.Lighting.ClockTime
	if currentTime == 12 then
		print('darkness overtakes')
		game.Lighting.TimeOfDay = 0
	else
		print('let there be light')
		game.Lighting.TimeOfDay = 12
	end
end

local ParentPart = script.Parent
local clickDetector = ParentPart.ClickDetector


clickDetector.MouseClick:Connect(function()
	ChangeTimeOfDay()
end)
