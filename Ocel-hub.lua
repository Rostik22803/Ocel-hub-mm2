local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICornerFrame = Instance.new("UICorner")
local ChamsButton = Instance.new("TextButton")
local UICornerChams = Instance.new("UICorner")
local AimButton = Instance.new("TextButton")
local UICornerAim = Instance.new("UICorner")

-- Новые элементы меню
local HeaderLabel = Instance.new("TextLabel")
local CollapseButton = Instance.new("TextButton")
local TimerButton = Instance.new("TextButton")
local UICornerTimer = Instance.new("UICorner")
local ColorPaletteButton = Instance.new("TextButton")
local UICornerPalette = Instance.new("UICorner")

ScreenGui.Name = "MM2_Ultimate_v3"
ScreenGui.Parent = game:GetService("CoreGui") or game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

-- Увеличили размер Frame, чтобы всё поместилось
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.Position = UDim2.new(0.05, 0, 0.1, 0)
Frame.Size = UDim2.new(0, 160, 0, 240) -- Высота увеличена со 110 до 240
Frame.Active = true
Frame.Draggable = true
Frame.ClipsDescendants = true

UICornerFrame.CornerRadius = UDim.new(0, 8)
UICornerFrame.Parent = Frame

-- НАДПИСЬ OCEL-HUB (Заголовок)
HeaderLabel.Name = "HeaderLabel"
HeaderLabel.Parent = Frame
HeaderLabel.BackgroundTransparency = 1
HeaderLabel.Position = UDim2.new(0, 10, 0, 5)
HeaderLabel.Size = UDim2.new(0, 110, 0, 25)
HeaderLabel.Font = Enum.Font.SourceSansBold
HeaderLabel.Text = "Ocel-hub"
HeaderLabel.TextColor3 = Color3.fromRGB(255, 255, 255) -- Начальный белый
HeaderLabel.TextSize = 18
HeaderLabel.TextXAlignment = Enum.TextXAlignment.Left

-- КНОПКА СВОРАЧИВАНИЯ
CollapseButton.Name = "CollapseButton"
CollapseButton.Parent = Frame
CollapseButton.BackgroundTransparency = 1
CollapseButton.Position = UDim2.new(0, 130, 0, 5)
CollapseButton.Size = UDim2.new(0, 20, 0, 25)
CollapseButton.Font = Enum.Font.SourceSansBold
CollapseButton.Text = "-"
CollapseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CollapseButton.TextSize = 20

-- Сдвигаем старые кнопки ниже из-за заголовка
ChamsButton.Name = "ChamsButton"
ChamsButton.Parent = Frame
ChamsButton.BackgroundColor3 = Color3.fromRGB(255, 60, 60)
ChamsButton.Position = UDim2.new(0, 10, 0, 35)
ChamsButton.Size = UDim2.new(0, 140, 0, 40)
ChamsButton.Font = Enum.Font.SourceSansBold
ChamsButton.Text = "CHAMS: OFF"
ChamsButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ChamsButton.TextSize = 16

UICornerChams.CornerRadius = UDim.new(0, 6)
UICornerChams.Parent = ChamsButton

AimButton.Name = "AimButton"
AimButton.Parent = Frame
AimButton.BackgroundColor3 = Color3.fromRGB(255, 60, 60)
AimButton.Position = UDim2.new(0, 10, 0, 85)
AimButton.Size = UDim2.new(0, 140, 0, 40)
AimButton.Font = Enum.Font.SourceSansBold
AimButton.Text = "AIM: OFF"
AimButton.TextColor3 = Color3.fromRGB(255, 255, 255)
AimButton.TextSize = 16

UICornerAim.CornerRadius = UDim.new(0, 6)
UICornerAim.Parent = AimButton

-- КНОПКА ТАЙМЕРА
TimerButton.Name = "TimerButton"
TimerButton.Parent = Frame
TimerButton.BackgroundColor3 = Color3.fromRGB(255, 60, 60)
TimerButton.Position = UDim2.new(0, 10, 0, 135)
TimerButton.Size = UDim2.new(0, 100, 0, 40) -- Меньше по ширине, чтобы влезла палитра
TimerButton.Font = Enum.Font.SourceSansBold
TimerButton.Text = "TIMER: OFF"
TimerButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TimerButton.TextSize = 14

UICornerTimer.CornerRadius = UDim.new(0, 6)
UICornerTimer.Parent = TimerButton

-- КНОПКА ПАЛИТРЫ ЦВЕТОВ
ColorPaletteButton.Name = "ColorPaletteButton"
ColorPaletteButton.Parent = Frame
ColorPaletteButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
ColorPaletteButton.Position = UDim2.new(0, 115, 0, 135)
ColorPaletteButton.Size = UDim2.new(0, 35, 0, 40)
ColorPaletteButton.Font = Enum.Font.SourceSansBold
ColorPaletteButton.Text = "🎨"
ColorPaletteButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ColorPaletteButton.TextSize = 18

UICornerPalette.CornerRadius = UDim.new(0, 6)
UICornerPalette.Parent = ColorPaletteButton

-- Логика Сворачивания / Разворачивания меню
local MenuCollapsed = false
CollapseButton.MouseButton1Click:Connect(function()
    MenuCollapsed = not MenuCollapsed
    if MenuCollapsed then
        Frame:TweenSize(UDim2.new(0, 160, 0, 35), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.3, true)
        CollapseButton.Text = "+"
    else
        Frame:TweenSize(UDim2.new(0, 160, 0, 190), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.3, true)
        CollapseButton.Text = "-"
    end
end)

-- Логика Смены Цветов (Палитра)
local TextColors = {
    Color3.fromRGB(255, 255, 255), -- Белый
    Color3.fromRGB(0, 255, 255),   -- Циан (Голубой)
    Color3.fromRGB(255, 255, 0),   -- Желтый
    Color3.fromRGB(255, 105, 180), -- Розовый
    Color3.fromRGB(170, 85, 255)   -- Фиолетовый
}
local currentColorIndex = 1

ColorPaletteButton.MouseButton1Click:Connect(function()
    currentColorIndex = currentColorIndex + 1
    if currentColorIndex > #TextColors then
        currentColorIndex = 1
    end
    local newColor = TextColors[currentColorIndex]
    
    -- Меняем цвета текста у таймера и заголовка
    TimerButton.TextColor3 = newColor
    HeaderLabel.TextColor3 = newColor
end)

-- Логика работы таймера
local TimerActive = false
local timerCoroutine = nil

local function FormatTime(seconds)
    local mins = math.floor(seconds / 60)
    local secs = seconds % 60
    return string.format("%02d:%02d", mins, secs)
end

-- Попытка найти реальное время раунда в MM2
local function GetMM2Time()
    local repl = game:GetService("ReplicatedStorage")
    -- В разных версиях MM2 значение может лежать в разных местах:
    local remotes = repl:FindFirstChild("Remotes")
    local gameplay = remotes and remotes:FindFirstChild("Gameplay")
    local roundTimer = gameplay and gameplay:FindFirstChild("RoundTimer") or repl:FindFirstChild("TimerToClose") or repl:FindFirstChild("RoundTimer")
    
    if roundTimer and (roundTimer:IsA("IntValue") or roundTimer:IsA("NumberValue") or roundTimer:IsA("StringValue")) then
        return tonumber(roundTimer.Value) or 0
    end
    return nil
end

TimerButton.MouseButton1Click:Connect(function()
    TimerActive = not TimerActive
    if TimerActive then
        TimerButton.BackgroundColor3 = Color3.fromRGB(60, 255, 60)
        
        -- Запуск цикла обновления времени
        timerCoroutine = task.spawn(function()
            local fakeTimer = 180 -- Фейк таймер на 3 минуты, если реальный не найден в структурах
            while TimerActive do
                local realTime = GetMM2Time()
                if realTime then
                    TimerButton.Text = "TIME: " .. FormatTime(realTime)
                else
                    TimerButton.Text = FormatTime(fakeTimer)
                    if fakeTimer > 0 then fakeTimer = fakeTimer - 1 else fakeTimer = 180 end
                end
                task.wait(1)
            end
        end)
    else
        TimerActive = false
        if timerCoroutine then task.cancel(timerCoroutine) end
        TimerButton.BackgroundColor3 = Color3.fromRGB(255, 60, 60)
        TimerButton.Text = "TIMER: OFF"
    end
end)

-- [Оригинальный код логики Чамсов и Аимбота оставлен без изменений]
_G.ChamsActive = false
_G.SilentAimActive = false
local Colors = {
    Murderer = Color3.fromRGB(255, 0, 0),
    Sheriff  = Color3.fromRGB(0, 120, 255),
    Innocent = Color3.fromRGB(0, 255, 0)
}
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local function GetRole(player)
    if not player then return "Innocent" end
    local bpack = player:FindFirstChild("Backpack")
    local char = player.Character
    
    if (bpack and bpack:FindFirstChild("Knife")) or (char and char:FindFirstChild("Knife")) then
        return "Murderer"
    elseif (bpack and (bpack:FindFirstChild("Gun") or bpack:FindFirstChild("Revolver"))) or 
           (char and (char:FindFirstChild("Gun") or char:FindFirstChild("Revolver"))) then
        return "Sheriff"
    end
    return "Innocent"
end

local function ClearChams(char)
    if char then
        for _, obj in ipairs(char:GetDescendants()) do
            if obj.Name == "MM2_BoxCham" then obj:Destroy() end
        end
    end
end

local function CreateBoxCham(part, color)
    if part:FindFirstChild("MM2_BoxCham") then return end
    local box = Instance.new("BoxHandleAdornment")
    box.Name = "MM2_BoxCham"
    box.Size = part.Size + Vector3.new(0.04, 0.04, 0.04)
    box.AlwaysOnTop = true
    box.ZIndex = 5
    box.Adornee = part
    box.Color3 = color
    box.Transparency = 0.5
    box.Parent = part
end

task.spawn(function()
    while true do
        task.wait(0.3)
        if _G.ChamsActive then
            for _, player in ipairs(Players:GetPlayers()) do
                if player ~= LocalPlayer and player.Character then
                    local role = GetRole(player)
                    local color = Colors[role]
                    for _, part in ipairs(player.Character:GetChildren()) do
                        if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
                            local existingCham = part:FindFirstChild("MM2_BoxCham")
                            if existingCham then
                                existingCham.Color3 = color
                            else
                                CreateBoxCham(part, color)
                            end
                        end
                    end
                end
            end
        end
    end
end)

local function GetClosestTarget()
    local myRole = GetRole(LocalPlayer)
    local closestPlayer = nil
    local shortestDistance = math.huge
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local targetRole = GetRole(player)
            local validTarget = false
            if myRole == "Murderer" and targetRole ~= "Murderer" then
                validTarget = true
            elseif (myRole == "Sheriff" or myRole == "Innocent") and targetRole == "Murderer" then
                validTarget = true
            end
            local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
            if validTarget and humanoid and humanoid.Health > 0 then
                local distance = (LocalPlayer.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude
                if distance < shortestDistance then
                    shortestDistance = distance
                    closestPlayer = player
                end
            end
        end
    end
    return closestPlayer
end

local function IsHoldingWeapon()
    local char = LocalPlayer.Character
    if char then
        local tool = char:FindFirstChildOfClass("Tool")
        if tool and (tool.Name:lower():find("knife") or tool.Name:lower():find("gun") or tool.Name:lower():find("revolver")) then
            return true
        end
    end
    return false
end

RunService.RenderStepped:Connect(function()
    if _G.SilentAimActive and IsHoldingWeapon() then
        if UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) then
            local target = GetClosestTarget()
            if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
                local targetPos = target.Character.HumanoidRootPart.Position
                Camera.CFrame = CFrame.new(Camera.CFrame.Position, targetPos)
            end
        end
    end
end)

ChamsButton.MouseButton1Click:Connect(function()
    _G.ChamsActive = not _G.ChamsActive
    if _G.ChamsActive then
        ChamsButton.Text = "CHAMS: ON"
        ChamsButton.BackgroundColor3 = Color3.fromRGB(60, 255, 60)
    else
        ChamsButton.Text = "CHAMS: OFF"
        ChamsButton.BackgroundColor3 = Color3.fromRGB(255, 60, 60)
        for _, player in ipairs(Players:GetPlayers()) do
            if player.Character then ClearChams(player.Character) end
        end
    end
end)

AimButton.MouseButton1Click:Connect(function()
    _G.SilentAimActive = not _G.SilentAimActive
    if _G.SilentAimActive then
        AimButton.Text = "AIM: ON"
        AimButton.BackgroundColor3 = Color3.fromRGB(60, 255, 60)
    else
        AimButton.Text = "AIM: OFF"
        AimButton.BackgroundColor3 = Color3.fromRGB(255, 60, 60)
    end
end)
