local function modifySettings(player)
    for _, item in pairs(player.Backpack:GetChildren()) do
        if item:IsA("Tool") and item:FindFirstChild("Settings") and item.Settings:IsA("ModuleScript") then
            local settingsModule = require(item.Settings)
            if type(settingsModule) == "table" then
                -- Aquí puedes modificar las configuraciones que necesites
                settingsModule.BaseDamage = 9999999999999999999999999999999999999999999999999999999999999999999999999999 -- Cambia el daño base a 20
                settingsModule.FireRate = 0.05 -- Aumenta la cadencia de fuego
            end
        end
    end
end

game.Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function()
        modifySettings(player)
    end)
end)
