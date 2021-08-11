for i,v in pairs(game.Players:GetPlayers()) do
    if i~=1 then
    for i = 1,18 do
    game:GetService("Players").LocalPlayer.Character.Punch.RemoteEvent:FireServer(v.Character.HumanoidRootPart)
end
end
end