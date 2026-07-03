local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICornerFrame = Instance.new("UICorner")
-- Кнопки функций
local ChamsButton = Instance.new("TextButton")
local UICornerChams = Instance.new("UICorner")
local AimButton = Instance.new("TextButton")
local UICornerAim = Instance.new("UICorner")
local NoclipButton = Instance.new("TextButton")
local UICornerNoclip = Instance.new("UICorner")
local AntiFlingButton = Instance.new("TextButton")
local UICornerFling = Instance.new("UICorner")
local PickupButton = Instance.new("TextButton")
local UICornerPickup = Instance.new("UICorner")

-- Элементы управления меню
local HeaderLabel = Instance.new("TextLabel")
local CollapseButton = Instance.new("TextButton")
-- Кнопки кастомизации цвета
local BgColorButton = Instance.new("TextButton")
local UICornerBgBtn = Instance.new("UICorner")
local TxtColorButton = Instance.new("TextButton")
local UICornerTxtBtn = Instance.new("UICorner")
-- Фрейм палитры
local PaletteFrame = Instance.new("Frame")
local UIGridLayout = Instance.new("UIGridLayout")
local PaletteCorner = Instance.new("UICorner")

ScreenGui.Name = "MM2_Ultimate_v4"
ScreenGui.Parent = game:GetService("CoreGui") or game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

-- ГЛАВНОЕ МЕНЮ
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.Position = UDim2.new(0.05, 0, 0.1, 0)
Frame.Size = UDim2.new(0, 160, 0, 375) -- Высота скорректирована под 5 кнопок
Frame.Active = true
Frame.Draggable = true
Frame.ClipsDescendants = false
UICornerFrame.CornerRadius = UDim.new(0, 8)
UICornerFrame.Parent = Frame

-- НАДПИСЬ OCEL-HUB
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

-- КОНТЕЙНЕР ДЛЯ КНОПОК
local ContentContainer = Instance.new("Frame")
ContentContainer.Parent = Frame
ContentContainer.BackgroundTransparency = 1
ContentContainer.Position = UDim2.new(0, 0, 0, 35)
ContentContainer.Size = UDim2.new(1, 0, 1, -35)

local function ApplyButtonStyles(btn, corner, text, yPos)
    btn.Parent = ContentContainer
    btn.BackgroundColor3 = Color3.fromRGB(255, 60, 60)
    btn.Position = UDim2.new(0, 10, 0, yPos)
    btn.Size = UDim2.new(0, 140, 0, 35)
    btn.Font = Enum.Font.SourceSansBold
    btn.Text = text .. ": OFF"
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.TextSize = 14
    corner.CornerRadius = UDim.new(0, 6)
    corner.Parent = btn
end

ApplyButtonStyles(ChamsButton, UICornerChams, "CHAMS", 0)
ApplyButtonStyles(AimButton, UICornerAim, "AIM", 40)
ApplyButtonStyles(NoclipButton, UICornerNoclip, "NOCLIP", 80)
ApplyButtonStyles(AntiFlingButton, UICornerFling, "ANTI-FLING", 120)
ApplyButtonStyles(PickupButton, UICornerPickup, "AUTOPICKUP", 160)

-- КНОПКИ ЦВЕТА
BgColorButton.Name = "BgColorButton"
BgColorButton.Parent = ContentContainer
BgColorButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
BgColorButton.Position = UDim2.new(0, 10, 0, 210)
BgColorButton.Size = UDim2.new(0, 140, 0, 30)
BgColorButton.Font = Enum.Font.SourceSansBold
BgColorButton.Text = "BG COLOR"
BgColorButton.TextColor3 = Color3.fromRGB(255, 255, 255)
BgColorButton.TextSize = 13
UICornerBgBtn.CornerRadius = UDim.new(0, 6)
UICornerBgBtn.Parent = BgColorButton

TxtColorButton.Name = "TxtColorButton"
TxtColorButton.Parent = ContentContainer
TxtColorButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
TxtColorButton.Position = UDim2.new(0, 10, 0, 245)
TxtColorButton.Size = UDim2.new(0, 140, 0, 30)
TxtColorButton.Font = Enum.Font.SourceSansBold
TxtColorButton.Text = "TXT COLOR"
TxtColorButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TxtColorButton.TextSize = 13
UICornerTxtBtn.CornerRadius = UDim.new(0, 6)
UICornerTxtBtn.Parent = TxtColorButton

-- ПАЛИТРА
PaletteFrame.Name = "PaletteFrame"
PaletteFrame.Parent = Frame
PaletteFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
PaletteFrame.Size = UDim2.new(0, 110, 0, 140)
PaletteFrame.Visible = false
PaletteCorner.CornerRadius = UDim.new(0, 6)
PaletteCorner.Parent = PaletteFrame
UIGridLayout.Parent = PaletteFrame
UIGridLayout.CellPadding = UDim2.new(0, 5, 0, 5)
UIGridLayout.CellSize = UDim2.new(0, 30, 0, 30)
UIGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIGridLayout.VerticalAlignment = Enum.VerticalAlignment.Center

local PopularColors = {
    Color3.fromRGB(255, 255, 255), Color3.fromRGB(30, 30, 30), Color3.fromRGB(255, 0, 0),
    Color3.fromRGB(0, 255, 0), Color3.fromRGB(0, 120, 255), Color3.fromRGB(255, 255, 0),
    Color3.fromRGB(0, 255, 255), Color3.fromRGB(255, 0, 255), Color3.fromRGB(255, 165, 0),
    Color3.fromRGB(128, 0, 128), Color3.fromRGB(255, 192, 203), Color3.fromRGB(170, 255, 0)
}

local currentTargetMode = "None"
for _, color in ipairs(PopularColors) do
    local ColorBtn = Instance.new("TextButton")
    ColorBtn.Text = ""
    ColorBtn.BackgroundColor3 = color
    ColorBtn.Parent = PaletteFrame
    Instance.new("UICorner", ColorBtn).CornerRadius = UDim.new(0, 4)
    
    ColorBtn.MouseButton1Click:Connect(function()
        if currentTargetMode == "BG" then
            Frame.BackgroundColor3 = color
        elseif currentTargetMode == "TXT" then
            HeaderLabel.TextColor3 = color
            CollapseButton.TextColor3 = color
            ChamsButton.TextColor3 = color
            AimButton.TextColor3 = color
            NoclipButton.TextColor3 = color
            AntiFlingButton.TextColor3 = color
            PickupButton.TextColor3 = color
            BgColorButton.TextColor3 = color
            TxtColorButton.TextColor3 = color
        end
    end)
end

BgColorButton.MouseButton1Click:Connect(function()
    if PaletteFrame.Visible and currentTargetMode == "BG" then
        PaletteFrame.Visible = false
        currentTargetMode = "None"
    else
        PaletteFrame.Visible = true
        currentTargetMode = "BG"
        PaletteFrame.Position = UDim2.new(1, 10, 0, 180)
    end
end)

TxtColorButton.MouseButton1Click:Connect(function()
    if PaletteFrame.Visible and currentTargetMode == "TXT" then
        PaletteFrame.Visible = false
        currentTargetMode = "None"
    else
        PaletteFrame.Visible = true
        currentTargetMode = "TXT"
        PaletteFrame.Position = UDim2.new(1, 10, 0, 210)
    end
end)

local MenuCollapsed = false
CollapseButton.MouseButton1Click:Connect(function()
    MenuCollapsed = not MenuCollapsed
    if MenuCollapsed then
        ContentContainer.Visible = false
        PaletteFrame.Visible = false
        currentTargetMode = "None"
        Frame:TweenSize(UDim2.new(0, 160, 0, 35), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.2, true)
        CollapseButton.Text = "+"
    else
        Frame:TweenSize(UDim2.new(0, 160, 0, 375), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.2, true)
        task.wait(0.1)
        ContentContainer.Visible = true
        CollapseButton.Text = "-"
    end
end)

-- НАСТРОЙКИ ФУНКЦИЙ ГЕЙМПЛЕЯ
_G.ChamsActive = false
_G.SilentAimActive = false
_G.NoclipActive = false
_G.AntiFlingActive = false
_G.AutoPickupActive = false

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

-- Поток Чамсов
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
                            if existingCham then existingCham.Color3 = color else CreateBoxCham(part, color) end
                        end
                    end
                end
            end
        end
    end
end)

-- Поток NOCLIP
RunService.Stepped:Connect(function()
    if _G.NoclipActive and LocalPlayer.Character then
        for _, part in ipairs(LocalPlayer.Character:GetChildren()) do
            if part:IsA("BasePart") then part.CanCollide = false end
        end
    end
end)

-- НАСТОЯЩИЙ ANTI-FLING (Физическое подавление импульса)
RunService.Heartbeat:Connect(function()
    if _G.AntiFlingActive and LocalPlayer.Character then
        local myHrp = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        if myHrp then
            -- Если скорость резко возрастает из-за удара флинг-бота, гасим ее
            if myHrp.Velocity.Magnitude > 75 or myHrp.RotVelocity.Magnitude > 75 then
                myHrp.Velocity = Vector3.new(0, 0, 0)
                myHrp.RotVelocity = Vector3.new(0, 0, 0)
            end
        end
        -- Отключаем симуляцию передачи массы и векторов от чужих хитбоксов
        for _, player in ipairs(Players:GetPlayers()) do
            if player ~= LocalPlayer and player.Character then
                for _, part in ipairs(player.Character:GetChildren()) do
                    if part:IsA("BasePart") then
                        part.CanCollide = false
                        part.Velocity = Vector3.new(0, 0, 0)
                        part.RotVelocity = Vector3.new(0, 0, 0)
                    end
                end
            end
        end
    end
end)

-- ИСПРАВЛЕННЫЙ И НАДЕЖНЫЙ АВТОПОДБОР ПИСТОЛЕТА
task.spawn(function()
    while true do
        task.wait(0.1)
        if _G.AutoPickupActive and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            local targetGun = nil
            
            -- Поиск во всех возможных вариациях спавна пистолета в MM2
            local gunDrop = workspace:FindFirstChild("GunDrop")
            if gunDrop then
                targetGun = gunDrop
            else
                for _, obj in ipairs(workspace:GetChildren()) do
                    if (obj.Name == "GunPickup" or obj:IsA("Tool") and (obj.Name:lower():find("gun") or obj.Name:lower():find("revolver"))) and obj:IsA("BasePart") then
                        targetGun = obj
                        break
                    elseif obj:IsA("Model") and (obj.Name:lower():find("gun") or obj.Name:lower():find("pickup")) then
                        local part = obj:FindFirstChildWhichIsA("BasePart")
                        if part then targetGun = part break end
                    end
                end
            end
            
            if targetGun then
                local hrp = LocalPlayer.Character.HumanoidRootPart
                local oldCFrame = hrp.CFrame
                -- Телепорт строго на хитбокс пистолета
                hrp.CFrame = targetGun.CFrame
                task.wait(0.15)
                -- Возврат обратно, если пистолет подобрался успешно
                if not targetGun.Parent or targetGun:FindFirstChild("Player") then
                    hrp.CFrame = oldCFrame
                end
            end
        end
    end
end)

-- АИМБОТ И ЦЕЛИ
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
                Camera.CFrame = CFrame.new(Camera.CFrame.Position, target.Character.HumanoidRootPart.Position)
            end
        end
    end
end)

-- ОБРАБОТКА НАЖАТИЙ КНОПОК И СМЕНА ТЕКСТА
ChamsButton.MouseButton1Click:Connect(function()
    _G.ChamsActive = not _G.ChamsActive
    ChamsButton.Text = _G.ChamsActive and "CHAMS: ON" or "CHAMS: OFF"
    ChamsButton.BackgroundColor3 = _G.ChamsActive and Color3.fromRGB(60, 255, 60) or Color3.fromRGB(255, 60, 60)
    if not _G.ChamsActive then
        for _, player in ipairs(Players:GetPlayers()) do if player.Character then ClearChams(player.Character) end end
    end
end)

AimButton.MouseButton1Click:Connect(function()
    _G.SilentAimActive = not _G.SilentAimActive
    AimButton.Text = _G.SilentAimActive and "AIM: ON" or "AIM: OFF"
    AimButton.BackgroundColor3 = _G.SilentAimActive and Color3.fromRGB(60, 255, 60) or Color3.fromRGB(255, 60, 60)
end)

NoclipButton.MouseButton1Click:Connect(function()
    _G.NoclipActive = not _G.NoclipActive
    NoclipButton.Text = _G.NoclipActive and "NOCLIP: ON" or "NOCLIP: OFF"
    NoclipButton.BackgroundColor3 = _G.NoclipActive and Color3.fromRGB(60, 255, 60) or Color3.fromRGB(255, 60, 60)
end)

AntiFlingButton.MouseButton1Click:Connect(function()
    _G.AntiFlingActive = not _G.AntiFlingActive
    AntiFlingButton.Text = _G.AntiFlingActive and "ANTI-FLING: ON" or "ANTI-FLING: OFF"
    AntiFlingButton.BackgroundColor3 = _G.AntiFlingActive and Color3.fromRGB(60, 255, 60) or Color3.fromRGB(255, 60, 60)
end)

PickupButton.MouseButton1Click:Connect(function()
    _G.AutoPickupActive = not _G.AutoPickupActive
    PickupButton.Text = _G.AutoPickupActive and "AUTOPICKUP: ON" or "AUTOPICKUP: OFF"
    PickupButton.BackgroundColor3 = _G.AutoPickupActive and Color3.fromRGB(60, 255, 60) or Color3.fromRGB(255, 60, 60)
end)
