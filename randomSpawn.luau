MAX_VALUE = 100
-- define name of what we want to spawn
local partClassName = "Part"

-- function def spawn random
function SpawnRandomPart()
	-- math.random to generate random xyz values positions for the part
	local x = math.random(0,MAX_VALUE)
	local y = math.random(0,0)
	local z = math.random(0,MAX_VALUE)

	-- create a new instance of the part class
	local part = Instance.new(partClassName)

	-- set position of part to random position generated
	part.Position = Vector3.new(x, y, z)
	part.Color = Color3.new(0,1,0)
	-- now parent part to workspace to appear it in the game world
	part.Parent = game.Workspace
	
end
-- now we need to call the function in the for loop to spawn mutiple parts
local numParts = 0

while numParts <= MAX_VALUE do
	wait(1)
	SpawnRandomPart()
	numParts = numParts + 1
end