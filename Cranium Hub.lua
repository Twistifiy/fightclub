
if game.PlaceId == 5678279798 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Fight Club", "Synapse")

    -- MAIN
    local Main = Window:NewTab("Server")
    local MainSection = Main:NewSection("Server Scripts")

    MainSection:NewButton("Bring All", "Equip punch tool. Next, click me.", function()
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
    end)

    MainSection:NewButton("Ragdoll/Kill All", "Equip punch tool. Next, click me.", function()
        for i,v in pairs(game.Players:GetPlayers()) do
            if i~=1 then
            for i = 1,18 do
            game:GetService("Players").LocalPlayer.Character.Punch.RemoteEvent:FireServer(v.Character.HumanoidRootPart)
        end
        end
        end
    end)

    MainSection:NewSlider("Speed", "Gotta go fast. Max speed is 300!", 300, 16, function(v)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
    end)

    MainSection:NewSlider("JumpPower", "Gotta fly high. Max JumpPower is 300!", 300, 50, function(v)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
    end)

    MainSection:NewButton("Inf Stamina", "Press me for inf stamina", function()
        while wait(1) do
            game.Workspace.LocalPlayer.Stamina.Value = 999999
            game.Workspace.LocalPlayer.Strength.Value = 99999
        end        
    end)
end
