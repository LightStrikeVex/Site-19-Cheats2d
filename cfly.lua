-- Verifica si la variable helios está activada o no
if getgenv().helios == nil then
    getgenv().helios = false
end

-- Cambia el estado de helios y muestra el mensaje de notificación
if getgenv().helios == true then
    game.StarterGui:SetCore('SendNotification', { Title = "Toggle", Text = "Deactivated", Duration = 3})
else
    game.StarterGui:SetCore('SendNotification', { Title = "Toggle", Text = "Activated", Duration = 3})
end

-- Inicia o detiene el cfly dependiendo del valor de helios
if getgenv().helios == false then
    getgenv().helios = true

    -- Activar cfly
    local CFspeed = 50
    local CFloop
    local character = game.Players.LocalPlayer.Character
    if character and character:FindFirstChild("Humanoid") then
        local humanoid = character:FindFirstChildOfClass('Humanoid')
        humanoid.PlatformStand = true

        local Head = character:WaitForChild("Head")
        Head.Anchored = true

        if CFloop then CFloop:Disconnect() end
        CFloop = game:GetService("RunService").Heartbeat:Connect(function(deltaTime)
            local moveDirection = humanoid.MoveDirection * (CFspeed * deltaTime)
            local headCFrame = Head.CFrame
            local cameraCFrame = workspace.CurrentCamera.CFrame
            local cameraOffset = headCFrame:ToObjectSpace(cameraCFrame).Position
            cameraCFrame = cameraCFrame * CFrame.new(-cameraOffset.X, -cameraOffset.Y, -cameraOffset.Z + 1)
            local cameraPosition = cameraCFrame.Position
            local headPosition = headCFrame.Position

            local objectSpaceVelocity = CFrame.new(cameraPosition, Vector3.new(headPosition.X, cameraPosition.Y, headPosition.Z)):VectorToObjectSpace(moveDirection)
            Head.CFrame = CFrame.new(headPosition) * (cameraCFrame - cameraPosition) * CFrame.new(objectSpaceVelocity)
        end)
    end
else
    -- Desactivar cfly
    getgenv().helios = false
    local character = game.Players.LocalPlayer.Character
    if character then
        local humanoid = character:FindFirstChildOfClass('Humanoid')
        humanoid.PlatformStand = false
        local Head = character:WaitForChild("Head")
        Head.Anchored = false
    end
end
