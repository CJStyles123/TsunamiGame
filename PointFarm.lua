local connection

function Farm()
if getgenv().Toggle then
connection = game.RunService.Stepped:Connect(function()
if getgenv().Toggle then
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9, 40, -1013)
firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").ScriptImportance.WinnersTunnel.WinnersPart, 0)
firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").ScriptImportance.WinnersTunnel.WinnersPart, 1)
for i,v in pairs(game:GetService("Workspace").CurrentPointCoins:GetDescendants()) do
if v:IsA("TouchTransmitter") then
firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, v.Parent, 1)
end
end
end
if not getgenv().Toggle then
connection:Disconnect()
end
end)
end
end

if getgenv().Toggle then
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["GAME_MAP"].EasterEggs.PlayAreaFloorPartLeft.CFrame + Vector3.new(0,3,0)
end

task.wait(1)

Farm()

game.Players.LocalPlayer.CharacterAdded:Connect(function(char)
if getgenv().Toggle then
getgenv().Toggle = false
char:WaitForChild("HumanoidRootPart").CFrame = game:GetService("Workspace")["GAME_MAP"].EasterEggs.PlayAreaFloorPartLeft.CFrame + Vector3.new(0,3,0)
task.wait(1)
getgenv().Toggle = true
Farm()
end
end)
