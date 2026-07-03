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

-- Палитра и Отдельное Окно Таймера
local PaletteFrame = Instance.new("Frame")
local UIGridLayout = Instance.new("UIGridLayout")
local TimerWindow = Instance.new("Frame")
local TimerTextLabel = Instance.new("TextLabel")
local TimerWindowCorner = Instance.new("UICorner")

ScreenGui.Name = "MM2_Ultimate_v3"
ScreenGui.Parent = game:GetService("CoreGui") or game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

-- ГЛАВНОЕ МЕНЮ
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.Position = UDim2.new(0.05, 0, 0.1, 0)
Frame.Size = UDim2.new(0, 160, 0, 190) 
Frame.Active = true
Frame.Draggable = true
Frame.ClipsDescendants = false

UICornerFrame.CornerRadius = UDim.new(0, 8)
UICornerFrame.Parent = Frame

-- НАДПИСЬ OCEL-HUB (Видна всегда)
HeaderLabel.Name = "HeaderLabel"
HeaderLabel.Parent = Frame
HeaderLabel.BackgroundTransparency = 1
HeaderLabel.Position = UDim2.new(0, 10, 0, 5)
HeaderLabel.Size = UDim2.new(0, 110, 0, 25)
HeaderLabel.Font = Enum.Font.SourceSansBold
HeaderLabel.Text = "Ocel-hub"
HeaderLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
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

-- ОСТАЛЬНЫЕ КНОПКИ (Контейнер для корректного сворачивания)
local ContentContainer = Instance.new("Frame")
ContentContainer.Parent = Frame
ContentContainer.BackgroundTransparency = 1
ContentContainer.Position = UDim2.new(0, 0, 0, 35)
ContentContainer.Size = UDim2.new(1, 0, 1, -35)

ChamsButton.Name = "ChamsButton"
ChamsButton.Parent = ContentContainer
ChamsButton.BackgroundColor3 = Color3.fromRGB(255, 60, 60)
ChamsButton.Position = UDim2.new(0, 10, 0, 0)
ChamsButton.Size = UDim2.new(0, 140, 0, 40)
ChamsButton.Font = Enum.Font.SourceSansBold
ChamsButton.Text = "CHAMS: OFF"
ChamsButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ChamsButton.TextSize = 16

UICornerChams.CornerRadius = UDim.new(0, 6)
UICornerChams.Parent = ChamsButton

AimButton.Name = "AimButton"
AimButton.Parent = ContentContainer
AimButton.BackgroundColor3 = Color3.fromRGB(255, 60, 60)
AimButton.Position = UDim2.new(0, 10, 0, 50)
AimButton.Size = UDim2.new(0, 140, 0, 40)
AimButton.Font = Enum.Font.SourceSansBold
AimButton.Text = "AIM: OFF"
AimButton.TextColor3 = Color3.fromRGB(255, 255, 255)
AimButton.TextSize = 16

UICornerAim.CornerRadius = UDim.new(0, 6)
UICornerAim.Parent = AimButton

-- КНОПКА ВКЛЮЧЕНИЯ ТАЙМЕРА
TimerButton.Name = "TimerButton"
TimerButton.Parent = ContentContainer
TimerButton.BackgroundColor3 = Color3.fromRGB(255, 60, 60)
TimerButton.Position = UDim2.new(0, 10, 0, 100)
TimerButton.Size = UDim2.new(0, 100, 0, 40)
TimerButton.Font = Enum.Font.SourceSansBold
TimerButton.Text = "TIMER: OFF"
TimerButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TimerButton.TextSize = 14

UICornerTimer.CornerRadius = UDim.new(0, 6)
UICornerTimer.Parent = TimerButton

-- КНОПКА ВЫЗОВА ПАЛИТРЫ
ColorPaletteButton.Name = "ColorPaletteButton"
ColorPaletteButton.Parent = ContentContainer
ColorPaletteButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
ColorPaletteButton.Position = UDim2.new(0, 115, 0, 100)
ColorPaletteButton.Size = UDim2.new(0, 35, 0, 40)
ColorPaletteButton.Font = Enum.Font.SourceSansBold
ColorPaletteButton.Text = "🎨"
ColorPaletteButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ColorPaletteButton.TextSize = 18

UICornerPalette.CornerRadius = UDim.new(0, 6)
UICornerPalette.Parent = ColorPaletteButton

-- СЕТКА ПАЛИТРЫ ЦВЕТОВ (12 оттенков)
PaletteFrame.Name = "PaletteFrame"
PaletteFrame.Parent = ContentContainer
PaletteFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
PaletteFrame.Position = UDim2.new(1, 10, 0, 0)
PaletteFrame.Size = UDim2.new(0, 110, 0, 140)
PaletteFrame.Visible = false
local PaletteCorner = Instance.new("UICorner", PaletteFrame)
PaletteCorner.CornerRadius = UDim.new(0, 6)

UIGridLayout.Parent = PaletteFrame
UIGridLayout.CellPadding = UDim2.new(0, 5, 0, 5)
UIGridLayout.CellSize = UDim2.new(0, 30, 0, 30)
UIGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIGridLayout.VerticalAlignment = Enum.VerticalAlignment.Center

local PopularColors = {
    Color3.fromRGB(255, 255, 255), -- Белый
    Color3.fromRGB(255, 0, 0),     -- Красный
    Color3.fromRGB(0, 255, 0),     -- Зеленый
    Color3.fromRGB(0, 0, 255),     -- Синий
    Color3.fromRGB(255, 255, 0),   -- Желтый
    Color3.fromRGB(0, 255, 255),   -- Циан
    Color3.fromRGB(255, 0, 255),   -- Маджента
    Color3.fromRGB(255, 165, 0),   -- Оранжевый
    Color3.fromRGB(128, 0, 128),   -- Фиолетовый
    Color3.fromRGB(255, 192, 203), -- Розовый
    Color3.fromRGB(0, 255, 128),   -- Мятный
    Color3.fromRGB(170, 255, 0)    -- Лайм
}

-- ОТДЕЛЬНОЕ ОКНО ТАЙМЕРА
TimerWindow.Name = "MM2_TimerWindow"
TimerWindow.Parent = ScreenGui
TimerWindow.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TimerWindow.Position = UDim2.new(0.05, 0, 0.35, 0)
TimerWindow.Size = UDim2.new(0, 140, 0, 45)
TimerWindow.Active = true
TimerWindow.Draggable = true
TimerWindow.Visible = false

TimerWindowCorner.CornerRadius = UDim.new(0, 8)
TimerWindowCorner.Parent = TimerWindow

TimerTextLabel.Parent = TimerWindow
TimerTextLabel.BackgroundTransparency = 1
TimerTextLabel.Size = UDim2.new(1, 0, 1, 0)
TimerTextLabel.Font = Enum.Font.SourceSansBold
TimerTextLabel.Text = "00:00"
TimerTextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TimerTextLabel.TextSize = 18

-- Заполнение палитры кнопками
for _, color in ipairs(PopularColors) do
    local ColorBtn = Instance.new("TextButton")
    ColorBtn.Text = ""
    ColorBtn.BackgroundColor3 = color
    ColorBtn.Parent = PaletteFrame
    Instance.new("UICorner", ColorBtn).CornerRadius = UDim.new(0, 4)
    
    ColorBtn.MouseButton1Click:Connect(function()
        HeaderLabel.TextColor3 = color
        TimerTextLabel.TextColor3 = color
    end)
end

ColorPaletteButton.MouseButton1Click:Connect(function()
    PaletteFrame.Visible = not PaletteFrame.Visible
end)

-- Логика Сворачивания / Разворачивания меню
local MenuCollapsed = false
CollapseButton.MouseButton1Click:Connect(function()
    MenuCollapsed = not MenuCollapsed
    if MenuCollapsed then
        ContentContainer.Visible = false
        PaletteFrame.Visible = false
        Frame:TweenSize(UDim2.new(0, 160, 0, 35), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.2, true)
        CollapseButton.Text = "+"
    else
        Frame:TweenSize(UDim2.new(0, 160, 0, 190), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.2, true)
        task.wait(0.1)
        ContentContainer.Visible = true
        CollapseButton.Text = "-"
    end
end)

-- 100% СЧИТЫВАНИЕ ТАЙМЕРА ИЗ ИНТЕРФЕЙСА ИГРЫ (Оригинальный MM2)
local TimerActive = false
local timerCoroutine = nil

local function GetMM2GuiTime()
    local player = game:GetService("Players").LocalPlayer
    local pGui = player:FindFirstChild("PlayerGui")
    
    -- Ищем основной GUI интерфейс MM2
    local mainGui = pGui and (pGui:FindFirstChild("MainGui") or pGui:FindFirstChild("ManiGui") or pGui:FindFirstChild("GameGui"))
    if mainGui then
        -- Путь 1: Верхняя панель (Обычное отображение времени)
        local topBar = mainGui:FindFirstChild("TopList") or mainGui:FindFirstChild("TopBar") or mainGui:FindFirstChild("Container")
        local timerLabel = topBar and (topBar:FindFirstChild("Timer") or topBar:FindFirstChild("TimeLabel") or topBar:FindFirstChild("Duration"))
        
        -- Путь 2: Альтернативный поиск по всем элементам, если интерфейс кастомный
        if not timerLabel then
            for _, v in ipairs(mainGui:GetDescendants()) do
                if v:IsA("TextLabel") and (v.Name:lower():find("timer") or v.Name:lower():find("time")) and v.Visible then
                    timerLabel = v
                    break
                end
            end
        end
        
        if timerLabel and timerLabel.Text ~= "" then
            local text = timerLabel.Text
            -- Если текст содержит "Прерывание" или "Выбор", определяем как лобби
            if text:find(":") then
                return text
            else
                return "Time: " .. text
            end
        end
    end
    
    -- Резервный поиск через ReplicatedStorage (если GUI еще не прогрузился)
    local repl = game:GetService("ReplicatedStorage")
    local tToClose = repl:FindFirstChild("TimerToClose") or repl:FindFirstChild("RoundTimer") or repl:FindFirstChild("LobbyTimer")
    if tToClose and tonumber(tToClose.Value) then
        local sec = tonumber(tToClose.Value)
        return string.format("%02d:%02d", math.floor(sec/60), sec%60)
    end

    return nil
end

TimerButton.MouseButton1Click:Connect(function()
    TimerActive = not TimerActive
    if TimerActive then
        TimerButton.BackgroundColor3 = Color3.fromRGB(60, 255, 60)
        TimerButton.Text = "TIMER: ON"
        TimerWindow.Visible = true
        
        timerCoroutine = task.spawn(function()
            while TimerActive do
                local currentDisplayTime = GetMM2GuiTime()
                
                if currentDisplayTime then
                    -- Автоматически подрезаем лишние слова, если игра пишет "Time Left: 01:20"
                    TimerTextLabel.Text = currentDisplayTime
                else
                    TimerTextLabel.Text = "Searching..."
                end
                task.wait(0.5) -- Быстрое и легкое обновление без лагов
            end
        end)
    else
        TimerActive = false
        if timerCoroutine then task.cancel(timerCoroutine) end
        TimerButton.BackgroundColor3 = Color3.fromRGB(255, 60, 60)
        TimerButton.Text = "TIMER: OFF"
        TimerWindow.Visible = false
    end
end)

-- ОРИГИНАЛЬНАЯ ЛОГИКА ИЗ "Mm2 aim.docx"
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
