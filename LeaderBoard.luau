-- Accessing coppies of part 
local part =  game.Workspace.Robuxdropper.robuxOG
-- listener for touching the part
part.Touched:Connect(function(hit)
    -- check if part was touch by player
    if hit.Parent:FindFirstChild("Humanoid") then
        -- get player who touched the part
        local player = game.Players:GetPlayerFromCharacter(hit.Parent)
        -- players current score
        local score = player:GetRoleInGroup(game.GroupId)
        -- add 1 to score
        score = score + 1
        -- update the players score in the leader board 
        game.leaderboards:SetAsync(game.GroupId, player, score)
        -- delete the part touched
        part:Destroy()
    end
end)