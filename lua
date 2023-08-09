local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local RemoteEvents = ReplicatedStorage:WaitForChild("RemoteEvents") -- Assuming you have a folder named RemoteEvents

if LocalPlayer then
    LocalPlayer.Chatted:Connect(function(message)
        local command = string.lower(message)
        if command == ".spectate" then
            RemoteEvents.Playerloadedin:FireServer()
        end
    end)
end
