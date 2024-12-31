local Players = game:GetService("Players")
local player = Players.LocalPlayer

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ToggleMainPanelGui"
screenGui.ResetOnSpawn = false
screenGui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 150, 0, 50)
frame.Position = UDim2.new(1, -160, 0, 10)
frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
frame.Active = true
frame.Draggable = true
frame.Parent = screenGui

local button = Instance.new("TextButton")
button.Size = UDim2.new(1, 0, 1, 0)
button.Text = "Mostrar Cmdr Frame"
button.BackgroundColor3 = Color3.fromRGB(100, 100, 255)
button.TextColor3 = Color3.new(1, 1, 1)
button.Font = Enum.Font.SourceSansBold
button.TextScaled = true
button.Parent = frame

button.MouseButton1Click:Connect(function()
    local playerGui = player:FindFirstChild("PlayerGui")
    if playerGui then
        local cmdrGui = playerGui:FindFirstChild("Cmdr")
        if cmdrGui then
            local cmdrFrame = cmdrGui:FindFirstChild("Frame")
            if cmdrFrame then
                if not cmdrFrame.Visible then
                    cmdrFrame.Visible = true
                end
            else
                warn("No se encontró el Frame dentro de Cmdr en PlayerGui.")
            end
        else
            warn("No se encontró Cmdr en PlayerGui.")
        end
    else
        warn("No se encontró PlayerGui en el jugador.")
    end
end)
