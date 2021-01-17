local Player = game:GetService("Players").LocalPlayer
local Char = Player.Character
local HRP = Char.HumanoidRootPart

toggled = false
game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.G then
        toggled = not toggled
        game:GetService("RunService").RenderStepped:Connect(function()
            if toggled == true then
                game.Lighting.TimeOfDay = 12
                game.Lighting.Brightness = 7
            end
        end)
        print(toggled)
        repeat wait()
            for _,v in pairs(game.Workspace.Custom["-1"]:GetChildren()) do 
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                    if Char.Humanoid.Health >= 11 then
                        HRP.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,3,0)
                    end
                end
            end
        until not toggled
        game.Lighting.GlobalShadows = true
    end
end)
--credits to HTDBarsi, Zinity, Stitch the elite and Abel
