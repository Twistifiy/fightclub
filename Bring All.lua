for i,v in pairs(game.Players:GetPlayers()) do
    if i~=1 then
    for i = 1,1 do
    game:GetService("Players").LocalPlayer.Character.Punch.RemoteEvent:FireServer(v.Character.HumanoidRootPart)
end
end
end
wait(0.1)
for i,v in pairs(game.Players:GetPlayers()) do
    if i~=1 then
    for i = 1,1 do
    game:GetService("ReplicatedStorage").Remotes.Pickup:FireServer(v.Character)
end
end
end



