local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICornerFrame = Instance.new("UICorner")

-- Кнопки функций
local ChamsButton = Instance.new("TextButton")
local UICornerChams = Instance.new("UICorner")

-- ЭЛЕМЕНТЫ ВЫПАДАЮЩЕГО МЕНЮ (DROPDOWN) ДЛЯ ЧАМСОВ
local ChamsDropdownFrame = Instance.new("Frame")
local ChamsDropdownLayout = Instance.new("UIListLayout")
local ChamsDropdownCorner = Instance.new("UICorner")

local AimButton = Instance.new("TextButton")
local UICornerAim = Instance.new("UICorner")
local NoclipButton = Instance.new("TextButton")
local UICornerNoclip = Instance.new("UICorner")
local AntiFlingButton = Instance.new("TextButton")
local UICornerFling = Instance.new("UICorner")
local PickupButton = Instance.new("TextButton")
local UICornerPickup = Instance.new("UICorner")
local KillAuraButton = Instance.new("TextButton")
local UICornerKillAura = Instance.new("UICorner")
local SpeedButton = Instance.new("TextButton")
local UICornerSpeed = Instance.new("UICorner")

-- ЭЛЕМЕНТЫ ПОЛЗУНКОВ (SLIDERS)
local RangeSliderFrame = Instance.new("Frame")
local RangeSliderBar = Instance.new("Frame")
local RangeSliderButton = Instance.new("TextButton")
local RangeSliderLabel = Instance.new("TextLabel")
local UICornerRSF = Instance.new("UICorner")
local UICornerRSB = Instance.new("UICorner")
local UICornerRSBtn = Instance.new("UICorner")

local DelaySliderFrame = Instance.new("Frame")
local DelaySliderBar = Instance.new("Frame")
local DelaySliderButton = Instance.new("TextButton")
local DelaySliderLabel = Instance.new("TextLabel")
local UICornerDSF = Instance.new("UICorner")
local UICornerDSB = Instance.new("UICorner")
local UICornerDSBtn = Instance.new("UICorner")

-- Новый ползунок для Спидхака
local SpeedSliderFrame = Instance.new("Frame")
local SpeedSliderBar = Instance.new("Frame")
local SpeedSliderButton = Instance.new("TextButton")
local SpeedSliderLabel = Instance.new("TextLabel")
local UICornerSSF = Instance.new("UICorner")
local UICornerSSB = Instance.new("UICorner")
local UICornerSSBtn = Instance.new("UICorner")

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

ScreenGui.Name = "MM2_Ultimate_v6"
ScreenGui.Parent = game:GetService("CoreGui") or game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

-- ГЛАВНОЕ МЕНЮ[cite: 1]
local MainFrameHeight = 585
Frame.Parent = ScreenGui[cite: 1]
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)[cite: 1]
Frame.Position = UDim2.new(0.05, 0, 0.1, 0)[cite: 1]
Frame.Size = UDim2.new(0, 160, 0, MainFrameHeight)[cite: 1]
Frame.Active = true[cite: 1]
Frame.Draggable = true[cite: 1]
Frame.ClipsDescendants = false[cite: 1]

UICornerFrame.CornerRadius = UDim.new(0, 8)[cite: 1]
UICornerFrame.Parent = Frame[cite: 1]

-- НАДПИСЬ OCEL-HUB[cite: 1]
HeaderLabel.Name = "HeaderLabel"[cite: 1]
HeaderLabel.Parent = Frame[cite: 1]
HeaderLabel.BackgroundTransparency = 1[cite: 1]
HeaderLabel.Position = UDim2.new(0, 10, 0, 5)[cite: 1]
HeaderLabel.Size = UDim2.new(0, 110, 0, 25)[cite: 1]
HeaderLabel.Font = Enum.Font.SourceSansBold[cite: 1]
HeaderLabel.Text = "Ocel-hub"[cite: 1]
HeaderLabel.TextColor3 = Color3.fromRGB(255, 255, 255)[cite: 1]
HeaderLabel.TextSize = 18[cite: 1]
HeaderLabel.TextXAlignment = Enum.TextXAlignment.Left[cite: 1]

-- КНОПКА СВОРАЧИВАНИЯ[cite: 1]
CollapseButton.Name = "CollapseButton"[cite: 1]
CollapseButton.Parent = Frame[cite: 1]
CollapseButton.BackgroundTransparency = 1[cite: 1]
CollapseButton.Position = UDim2.new(0, 130, 0, 5)[cite: 1]
CollapseButton.Size = UDim2.new(0, 20, 0, 25)[cite: 1]
CollapseButton.Font = Enum.Font.SourceSansBold[cite: 1]
CollapseButton.Text = "-"[cite: 1]
CollapseButton.TextColor3 = Color3.fromRGB(255, 255, 255)[cite: 1]
CollapseButton.TextSize = 20[cite: 1]

-- КОНТЕЙНЕР ДЛЯ КНОПОК[cite: 1]
local ContentContainer = Instance.new("Frame")[cite: 1]
ContentContainer.Parent = Frame[cite: 1]
ContentContainer.BackgroundTransparency = 1[cite: 1]
ContentContainer.Position = UDim2.new(0, 0, 0, 35)[cite: 1]
ContentContainer.Size = UDim2.new(1, 0, 1, -35)[cite: 1]

local function ApplyButtonStyles(btn, corner, text, yPos)[cite: 1]
    btn.Parent = ContentContainer[cite: 1]
    btn.BackgroundColor3 = Color3.fromRGB(255, 60, 60)[cite: 1]
    btn.Position = UDim2.new(0, 10, 0, yPos)[cite: 1]
    btn.Size = UDim2.new(0, 140, 0, 35)[cite: 1]
    btn.Font = Enum.Font.SourceSansBold[cite: 1]
    btn.Text = text .. ": OFF"[cite: 1]
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)[cite: 1]
    btn.TextSize = 14[cite: 1]
    corner.CornerRadius = UDim.new(0, 6)[cite: 1]
    corner.Parent = btn[cite: 1]
end[cite: 1]

ApplyButtonStyles(ChamsButton, UICornerChams, "CHAMS", 0)[cite: 1]

-- Настройка выпадающего списка стилей чамсов
ChamsDropdownFrame.Name = "ChamsDropdownFrame"
ChamsDropdownFrame.Parent = ContentContainer
ChamsDropdownFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
ChamsDropdownFrame.Position = UDim2.new(0, 10, 0, 35)
ChamsDropdownFrame.Size = UDim2.new(0, 140, 0, 0)
ChamsDropdownFrame.ClipsDescendants = true
ChamsDropdownFrame.ZIndex = 20

ChamsDropdownLayout.Parent = ChamsDropdownFrame
ChamsDropdownLayout.SortOrder = Enum.SortOrder.LayoutOrder
ChamsDropdownLayout.Padding = UDim.new(0, 2)

ChamsDropdownCorner.CornerRadius = UDim.new(0, 6)
ChamsDropdownCorner.Parent = ChamsDropdownFrame

ApplyButtonStyles(AimButton, UICornerAim, "AIM", 40)[cite: 1]
ApplyButtonStyles(NoclipButton, UICornerNoclip, "NOCLIP", 80)[cite: 1]
ApplyButtonStyles(AntiFlingButton, UICornerFling, "ANTI-FLING", 120)[cite: 1]
ApplyButtonStyles(PickupButton, UICornerPickup, "AUTOPICKUP", 160)[cite: 1]
ApplyButtonStyles(KillAuraButton, UICornerKillAura, "KILL AURA", 200)[cite: 1]
ApplyButtonStyles(SpeedButton, UICornerSpeed, "SPEEDHACK", 240)[cite: 1]

-- НАСТРОЙКИ ФУНКЦИЙ ГЕЙМПЛЕЯ И ДЕФОЛТЫ[cite: 1]
_G.ChamsActive = false[cite: 1]
_G.ChamsType = "Box" 
_G.SilentAimActive = false[cite: 1]
_G.NoclipActive = false[cite: 1]
_G.AntiFlingActive = false[cite: 1]
_G.AutoPickupActive = false[cite: 1]
_G.KillAuraActive = false[cite: 1]
_G.SpeedActive = false[cite: 1]
_G.SpeedValue = 40[cite: 1]
_G.KillAuraRange = 15[cite: 1]
_G.KillAuraDelay = 0.1[cite: 1]

-- Кнопки стилей внутри Dropdown (Обновленные названия и новые режимы)
local ChamStyles = {"Box", "Wireframe", "Outline Borders", "Highlight Mesh", "Glow Outline"}
for i, styleName in ipairs(ChamStyles) do
    local StyleBtn = Instance.new("TextButton")
    StyleBtn.Name = styleName .. "Btn"
    StyleBtn.Parent = ChamsDropdownFrame
    StyleBtn.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    StyleBtn.Size = UDim2.new(1, 0, 0, 24)
    StyleBtn.Font = Enum.Font.SourceSansBold
    StyleBtn.Text = styleName
    StyleBtn.TextColor3 = Color3.fromRGB(230, 230, 230)
    StyleBtn.TextSize = 12
    StyleBtn.ZIndex = 21
    Instance.new("UICorner", StyleBtn).CornerRadius = UDim.new(0, 4)
    
    StyleBtn.MouseButton1Click:Connect(function()
        _G.ChamsType = styleName
        ChamsDropdownFrame:TweenSize(UDim2.new(0, 140, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.15, true)
        
        -- Динамическое обновление текста кнопки при смене стиля
        if _G.ChamsActive then
            ChamsButton.Text = "CHAMS: ON (" .. styleName .. ")"
        end
    end)
end

-- Открытие/закрытие списка стилей
ChamsButton.MouseButton1Down:Connect(function()
    if ChamsDropdownFrame.Size.Y.Offset == 0 then
        -- Рассчитываем высоту под 5 элементов
        ChamsDropdownFrame:TweenSize(UDim2.new(0, 140, 0, 128), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.15, true)
    else
        ChamsDropdownFrame:TweenSize(UDim2.new(0, 140, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.15, true)
    end
end)

-- ФУНКЦИЯ СОЗДАНИЯ И СТАБИЛИЗАЦИИ ПОЛЗУНКОВ[cite: 1]
local function CreateSlider(bgFrame, barFrame, btn, label, bgCorner, barCorner, btnCorner, text, yPos, currentVal, minVal, maxVal, sliderType)[cite: 1]
    bgFrame.Parent = ContentContainer[cite: 1]
    bgFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)[cite: 1]
    bgFrame.Position = UDim2.new(0, 10, 0, yPos)[cite: 1]
    bgFrame.Size = UDim2.new(0, 140, 0, 35)[cite: 1]
    bgCorner.CornerRadius = UDim.new(0, 6)[cite: 1]
    bgCorner.Parent = bgFrame[cite: 1]
    
    label.Parent = bgFrame[cite: 1]
    label.BackgroundTransparency = 1[cite: 1]
    label.Position = UDim2.new(0, 5, 0, 2)[cite: 1]
    label.Size = UDim2.new(1, -10, 0, 14)[cite: 1]
    label.Font = Enum.Font.SourceSansBold[cite: 1]
    label.Text = text .. ": " .. tostring(currentVal)[cite: 1]
    label.TextColor3 = Color3.fromRGB(255, 255, 255)[cite: 1]
    label.TextSize = 11[cite: 1]
    label.TextXAlignment = Enum.TextXAlignment.Left[cite: 1]
    
    barFrame.Parent = bgFrame[cite: 1]
    barFrame.BackgroundColor3 = Color3.fromRGB(80, 80, 80)[cite: 1]
    barFrame.Position = UDim2.new(0, 8, 0, 20)[cite: 1]
    barFrame.Size = UDim2.new(0, 124, 0, 6)[cite: 1]
    barCorner.CornerRadius = UDim.new(0, 3)[cite: 1]
    barCorner.Parent = barFrame[cite: 1]
    
    btn.Parent = barFrame[cite: 1]
    local startPercent = (currentVal - minVal) / (maxVal - minVal)[cite: 1]
    btn.Position = UDim2.new(startPercent, -5, 0.5, -5)[cite: 1]
    btn.Size = UDim2.new(0, 10, 0, 10)[cite: 1]
    btn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)[cite: 1]
    btn.Text = ""[cite: 1]
    btnCorner.CornerRadius = UDim.new(1, 0)[cite: 1]
    btnCorner.Parent = btn[cite: 1]
    
    local dragging = false[cite: 1]
    local function UpdateSliderPosition(inputX)[cite: 1]
        local barAbsolutePos = barFrame.AbsolutePosition.X[cite: 1]
        local barAbsoluteSize = barFrame.AbsoluteSize.X[cite: 1]
        local relativeX = math.clamp((inputX - barAbsolutePos) / barAbsoluteSize, 0, 1)[cite: 1]
        
        btn.Position = UDim2.new(relativeX, -5, 0.5, -5)[cite: 1]
        
        local val = minVal + (relativeX * (maxVal - minVal))[cite: 1]
        if sliderType == "Decimal" then[cite: 1]
            val = math.round(val * 100) / 100[cite: 1]
            _G.KillAuraDelay = val[cite: 1]
        elseif sliderType == "Speed" then[cite: 1]
            val = math.round(val)[cite: 1]
            _G.SpeedValue = val[cite: 1]
        else[cite: 1]
            val = math.round(val)[cite: 1]
            _G.KillAuraRange = val[cite: 1]
        end[cite: 1]
        label.Text = text .. ": " .. tostring(val)[cite: 1]
    end[cite: 1]
    
    btn.InputBegan:Connect(function(input)[cite: 1]
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then[cite: 1]
            dragging = true[cite: 1]
        end[cite: 1]
    end)
    game:GetService("UserInputService").InputEnded:Connect(function(input)[cite: 1]
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then[cite: 1]
            dragging = false[cite: 1]
        end[cite: 1]
    end)
    game:GetService("UserInputService").InputChanged:Connect(function(input)[cite: 1]
        if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then[cite: 1]
            UpdateSliderPosition(input.Position.X)[cite: 1]
        end[cite: 1]
    end)
end[cite: 1]

CreateSlider(RangeSliderFrame, RangeSliderBar, RangeSliderButton, RangeSliderLabel, UICornerRSF, UICornerRSB, UICornerRSBtn, "Range (Distance)", 285, _G.KillAuraRange, 5, 50, "Integer")[cite: 1]
CreateSlider(DelaySliderFrame, DelaySliderBar, DelaySliderButton, DelaySliderLabel, UICornerDSF, UICornerDSB, UICornerDSBtn, "Attack Delay (Sec)", 325, _G.KillAuraDelay, 0.01, 0.5, "Decimal")[cite: 1]
CreateSlider(SpeedSliderFrame, SpeedSliderBar, SpeedSliderButton, SpeedSliderLabel, UICornerSSF, UICornerSSB, UICornerSSBtn, "Speed Value", 365, _G.SpeedValue, 16, 150, "Speed")[cite: 1]

-- КНОПКИ ЦВЕТА[cite: 1]
BgColorButton.Name = "BgColorButton"[cite: 1]
BgColorButton.Parent = ContentContainer[cite: 1]
BgColorButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)[cite: 1]
BgColorButton.Position = UDim2.new(0, 10, 0, 415)[cite: 1]
BgColorButton.Size = UDim2.new(0, 140, 0, 30)[cite: 1]
BgColorButton.Font = Enum.Font.SourceSansBold[cite: 1]
BgColorButton.Text = "BG COLOR"[cite: 1]
BgColorButton.TextColor3 = Color3.fromRGB(255, 255, 255)[cite: 1]
BgColorButton.TextSize = 13[cite: 1]
UICornerBgBtn.CornerRadius = UDim.new(0, 6)[cite: 1]
UICornerBgBtn.Parent = BgColorButton[cite: 1]

TxtColorButton.Name = "TxtColorButton"[cite: 1]
TxtColorButton.Parent = ContentContainer[cite: 1]
TxtColorButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)[cite: 1]
TxtColorButton.Position = UDim2.new(0, 10, 0, 450)[cite: 1]
TxtColorButton.Size = UDim2.new(0, 140, 0, 30)[cite: 1]
TxtColorButton.Font = Enum.Font.SourceSansBold[cite: 1]
TxtColorButton.Text = "TXT COLOR"[cite: 1]
TxtColorButton.TextColor3 = Color3.fromRGB(255, 255, 255)[cite: 1]
TxtColorButton.TextSize = 13[cite: 1]
UICornerTxtBtn.CornerRadius = UDim.new(0, 6)[cite: 1]
UICornerTxtBtn.Parent = TxtColorButton[cite: 1]

-- ПАЛИТРА[cite: 1]
PaletteFrame.Name = "PaletteFrame"[cite: 1]
PaletteFrame.Parent = Frame[cite: 1]
PaletteFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)[cite: 1]
PaletteFrame.Size = UDim2.new(0, 110, 0, 140)[cite: 1]
PaletteFrame.Visible = false[cite: 1]
PaletteCorner.CornerRadius = UDim.new(0, 6)[cite: 1]
PaletteCorner.Parent = PaletteFrame[cite: 1]
UIGridLayout.Parent = PaletteFrame[cite: 1]
UIGridLayout.CellPadding = UDim2.new(0, 5, 0, 5)[cite: 1]
UIGridLayout.CellSize = UDim2.new(0, 30, 0, 30)[cite: 1]
UIGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center[cite: 1]
UIGridLayout.VerticalAlignment = Enum.VerticalAlignment.Center[cite: 1]

local PopularColors = {[cite: 1]
    Color3.fromRGB(255, 255, 255), Color3.fromRGB(30, 30, 30), Color3.fromRGB(255, 0, 0),[cite: 1]
    Color3.fromRGB(0, 255, 0), Color3.fromRGB(0, 120, 255), Color3.fromRGB(255, 255, 0),[cite: 1]
    Color3.fromRGB(0, 255, 255), Color3.fromRGB(255, 0, 255), Color3.fromRGB(255, 165, 0),[cite: 1]
    Color3.fromRGB(128, 0, 128), Color3.fromRGB(255, 192, 203), Color3.fromRGB(170, 255, 0)[cite: 1]
}[cite: 1]
local currentTargetMode = "None"[cite: 1]
for _, color in ipairs(PopularColors) do[cite: 1]
    local ColorBtn = Instance.new("TextButton")[cite: 1]
    ColorBtn.Text = ""[cite: 1]
    ColorBtn.BackgroundColor3 = color[cite: 1]
    ColorBtn.Parent = PaletteFrame[cite: 1]
    Instance.new("UICorner", ColorBtn).CornerRadius = UDim.new(0, 4)[cite: 1]
    
    ColorBtn.MouseButton1Click:Connect(function()[cite: 1]
        if currentTargetMode == "BG" then[cite: 1]
            Frame.BackgroundColor3 = color[cite: 1]
        elseif currentTargetMode == "TXT" then[cite: 1]
            HeaderLabel.TextColor3 = color[cite: 1]
            CollapseButton.TextColor3 = color[cite: 1]
            ChamsButton.TextColor3 = color[cite: 1]
            AimButton.TextColor3 = color[cite: 1]
            NoclipButton.TextColor3 = color[cite: 1]
            AntiFlingButton.TextColor3 = color[cite: 1]
            PickupButton.TextColor3 = color[cite: 1]
            KillAuraButton.TextColor3 = color[cite: 1]
            SpeedButton.TextColor3 = color[cite: 1]
            RangeSliderLabel.TextColor3 = color[cite: 1]
            DelaySliderLabel.TextColor3 = color[cite: 1]
            SpeedSliderLabel.TextColor3 = color[cite: 1]
            BgColorButton.TextColor3 = color[cite: 1]
            TxtColorButton.TextColor3 = color[cite: 1]
        end[cite: 1]
    end)[cite: 1]
end[cite: 1]

BgColorButton.MouseButton1Click:Connect(function()[cite: 1]
    if PaletteFrame.Visible and currentTargetMode == "BG" then[cite: 1]
        PaletteFrame.Visible = false[cite: 1]
        currentTargetMode = "None"[cite: 1]
    else[cite: 1]
        PaletteFrame.Visible = true[cite: 1]
        currentTargetMode = "BG"[cite: 1]
        PaletteFrame.Position = UDim2.new(1, 10, 0, 260)[cite: 1]
    end[cite: 1]
end)[cite: 1]

TxtColorButton.MouseButton1Click:Connect(function()[cite: 1]
    if PaletteFrame.Visible and currentTargetMode == "TXT" then[cite: 1]
        PaletteFrame.Visible = false[cite: 1]
        currentTargetMode = "None"[cite: 1]
    else[cite: 1]
        PaletteFrame.Visible = true[cite: 1]
        currentTargetMode = "TXT"[cite: 1]
        PaletteFrame.Position = UDim2.new(1, 10, 0, 290)[cite: 1]
    end[cite: 1]
end)[cite: 1]

local MenuCollapsed = false[cite: 1]
CollapseButton.MouseButton1Click:Connect(function()[cite: 1]
    MenuCollapsed = not MenuCollapsed[cite: 1]
    if MenuCollapsed then[cite: 1]
        ContentContainer.Visible = false[cite: 1]
        PaletteFrame.Visible = false[cite: 1]
        ChamsDropdownFrame.Size = UDim2.new(0, 140, 0, 0)
        currentTargetMode = "None"[cite: 1]
        Frame:TweenSize(UDim2.new(0, 160, 0, 35), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.2, true)[cite: 1]
        CollapseButton.Text = "+"[cite: 1]
    else[cite: 1]
        Frame:TweenSize(UDim2.new(0, 160, 0, MainFrameHeight), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.2, true)[cite: 1]
        task.wait(0.1)[cite: 1]
        ContentContainer.Visible = true[cite: 1]
        CollapseButton.Text = "-"[cite: 1]
    end[cite: 1]
end)[cite: 1]

local Colors = {[cite: 1]
    Murderer = Color3.fromRGB(255, 0, 0),[cite: 1]
    Sheriff  = Color3.fromRGB(0, 120, 255),[cite: 1]
    Innocent = Color3.fromRGB(0, 255, 0),[cite: 1]
    GunDrop  = Color3.fromRGB(185, 0, 255)
}[cite: 1]

local Players = game:GetService("Players")[cite: 1]
local LocalPlayer = Players.LocalPlayer[cite: 1]
local Camera = workspace.CurrentCamera[cite: 1]
local UserInputService = game:GetService("UserInputService")[cite: 1]
local RunService = game:GetService("RunService")[cite: 1]

local function GetRole(player)[cite: 1]
    if not player then return "Innocent" end[cite: 1]
    local bpack = player:FindFirstChild("Backpack")[cite: 1]
    local char = player.Character[cite: 1]
    if (bpack and bpack:FindFirstChild("Knife")) or (char and char:FindFirstChild("Knife")) then[cite: 1]
        return "Murderer"[cite: 1]
    elseif (bpack and (bpack:FindFirstChild("Gun") or bpack:FindFirstChild("Revolver"))) or[cite: 1]
           (char and (char:FindFirstChild("Gun") or char:FindFirstChild("Revolver"))) then[cite: 1]
        return "Sheriff"[cite: 1]
    end[cite: 1]
    return "Innocent"[cite: 1]
end[cite: 1]

-- Функция полной и чистой очистки чамсов
local function ClearChams(object)
    if not object then return end
    for _, obj in ipairs(object:GetDescendants()) do
        if obj.Name == "MM2_ChamInstance" then 
            obj:Destroy() 
        end
    end
end

-- Функция генерации чамсов с полным фиксом наслоения
local function ApplyChamObject(part, color)
    -- Очищаем парты перед накладыванием нового стиля
    for _, old in ipairs(part:GetChildren()) do
        if old.Name == "MM2_ChamInstance" then old:Destroy() end
    end
    
    if _G.ChamsType == "Box" then
        local box = Instance.new("BoxHandleAdornment")
        box.Name = "MM2_ChamInstance"
        box.Size = part.Size + Vector3.new(0.02, 0.02, 0.02)
        box.AlwaysOnTop = true
        box.ZIndex = 5
        box.Adornee = part
        box.Color3 = color
        box.Transparency = 0.5
        box.Parent = part
        
    elseif _G.ChamsType == "Wireframe" then
        -- НАСТОЯЩИЙ ВАРФРЕЙМ: Заливка персонажа + 3D сетка поверх ребер
        local box = Instance.new("BoxHandleAdornment")
        box.Name = "MM2_ChamInstance"
        box.Size = part.Size + Vector3.new(0.01, 0.01, 0.01)
        box.AlwaysOnTop = true
        box.ZIndex = 5
        box.Adornee = part
        box.Color3 = color
        box.Transparency = 0.65 -- Полупрозрачная заливка тела
        box.Parent = part
        
        local selection = Instance.new("SelectionBox")
        selection.Name = "MM2_ChamInstance"
        selection.Color3 = color
        selection.SurfaceColor3 = color
        selection.SurfaceTransparency = 1 -- Прозрачные грани сетки
        selection.Transparency = 0 -- Яркие ребра (линии) сетки
        selection.Adornee = part
        selection.Parent = part

    elseif _G.ChamsType == "Outline Borders" then
        -- Только сетка по контуру без сплошного цвета внутри
        local selection = Instance.new("SelectionBox")
        selection.Name = "MM2_ChamInstance"
        selection.Color3 = color
        selection.SurfaceColor3 = color
        selection.SurfaceTransparency = 1
        selection.Transparency = 0
        selection.Adornee = part
        selection.Parent = part

    elseif _G.ChamsType == "Highlight Mesh" or _G.ChamsType == "Glow Outline" then
        local model = part:FindFirstAncestorOfClass("Model") or part:FindFirstAncestorOfClass("Tool") or part
        if model and not model:FindFirstChild("MM2_ChamInstance") then
            local highlight = Instance.new("Highlight")
            highlight.Name = "MM2_ChamInstance"
            highlight.FillColor = color
            highlight.OutlineColor = color
            highlight.FillTransparency = (_G.ChamsType == "Glow Outline") and 1 or 0.3
            highlight.OutlineTransparency = 0
            highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlight.Parent = model
        end
    end
end

-- Основной цикл рендеринга чамсов (Игроки + Пистолет на полу)
task.spawn(function()
    while true do
        task.wait(0.2)
        if _G.ChamsActive then
            -- Чамсы на игроков
            for _, player in ipairs(Players:GetPlayers()) do
                if player ~= LocalPlayer and player.Character then
                    local role = GetRole(player)
                    local color = Colors[role]
                    
                    if _G.ChamsType == "Highlight Mesh" or _G.ChamsType == "Glow Outline" then
                        if not player.Character:FindFirstChild("MM2_ChamInstance") then
                            ApplyChamObject(player.Character, color)
                        end
                    else
                        -- Перед переключением с Highlight чистим модельку
                        if player.Character:FindFirstChild("MM2_ChamInstance") then 
                            player.Character.MM2_ChamInstance:Destroy() 
                        end
                        for _, part in ipairs(player.Character:GetChildren()) do
                            if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
                                ApplyChamObject(part, color)
                            end
                        end
                    end
                end
            end
            
            -- Чамсы на выпавший пистолет (GunDrop)
            local drop = workspace:FindFirstChild("GunDrop")
            if drop then
                if _G.ChamsType == "Highlight Mesh" or _G.ChamsType == "Glow Outline" then
                    ApplyChamObject(drop, Colors.GunDrop)
                else
                    if drop:FindFirstChild("MM2_ChamInstance") then drop.MM2_ChamInstance:Destroy() end
                    for _, part in ipairs(drop:GetDescendants()) do
                        if part:IsA("BasePart") then
                            ApplyChamObject(part, Colors.GunDrop)
                        end
                    end
                end
            end
        end
    end
end)

-- Поток NOCLIP[cite: 1]
RunService.Stepped:Connect(function()[cite: 1]
    if _G.NoclipActive and LocalPlayer.Character then[cite: 1]
        for _, part in ipairs(LocalPlayer.Character:GetChildren()) do[cite: 1]
            if part:IsA("BasePart") then part.CanCollide = false end[cite: 1]
        end[cite: 1]
    end[cite: 1]
end)[cite: 1]

-- ANTI-FLING[cite: 1]
RunService.Heartbeat:Connect(function()[cite: 1]
    if _G.AntiFlingActive and LocalPlayer.Character then[cite: 1]
        local myHrp = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")[cite: 1]
        if myHrp then[cite: 1]
            if myHrp.Velocity.Magnitude > 75 or myHrp.RotVelocity.Magnitude > 75 then[cite: 1]
                myHrp.Velocity = Vector3.new(0, 0, 0)[cite: 1]
                myHrp.RotVelocity = Vector3.new(0, 0, 0)[cite: 1]
            end[cite: 1]
        end[cite: 1]
        for _, player in ipairs(Players:GetPlayers()) do[cite: 1]
            if player ~= LocalPlayer and player.Character then[cite: 1]
                for _, part in ipairs(player.Character:GetChildren()) do[cite: 1]
                    if part:IsA("BasePart") then[cite: 1]
                        part.CanCollide = false[cite: 1]
                        part.Velocity = Vector3.new(0, 0, 0)[cite: 1]
                        part.RotVelocity = Vector3.new(0, 0, 0)[cite: 1]
                    end[cite: 1]
                end[cite: 1]
            end[cite: 1]
        end[cite: 1]
    end[cite: 1]
end)[cite: 1]

-- ПОТОК SPEEDHACK[cite: 1]
RunService.Heartbeat:Connect(function()[cite: 1]
    if _G.SpeedActive and LocalPlayer.Character then[cite: 1]
        local humanoid = LocalPlayer.Character:FindFirstChildOfClass("Humanoid")[cite: 1]
        if humanoid then humanoid.WalkSpeed = _G.SpeedValue end[cite: 1]
    else[cite: 1]
        if LocalPlayer.Character then[cite: 1]
            local humanoid = LocalPlayer.Character:FindFirstChildOfClass("Humanoid")[cite: 1]
            if humanoid and humanoid.WalkSpeed ~= 16 then humanoid.WalkSpeed = 16 end[cite: 1]
        end[cite: 1]
    end[cite: 1]
end)[cite: 1]

-- АВТОПОДБОР ПИСТОЛЕТА[cite: 1]
task.spawn(function()[cite: 1]
    while true do[cite: 1]
        task.wait(0.1)[cite: 1]
        if _G.AutoPickupActive and GetRole(LocalPlayer) ~= "Murderer" and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then[cite: 1]
            local gunInstance = nil[cite: 1]
            local drop = workspace:FindFirstChild("GunDrop")[cite: 1]
            if drop then[cite: 1]
                gunInstance = drop[cite: 1]
            else[cite: 1]
                for _, obj in ipairs(workspace:GetDescendants()) do[cite: 1]
                    if obj.Name == "GunDrop" or (obj:IsA("TouchTransmitter") and obj.Parent and obj.Parent.Name == "LeftHand") then[cite: 1]
                        if obj:IsA("BasePart") then[cite: 1]
                            gunInstance = obj[cite: 1]
                            break[cite: 1]
                        elseif obj.Parent:IsA("BasePart") then[cite: 1]
                            gunInstance = obj.Parent[cite: 1]
                            break[cite: 1]
                        end[cite: 1]
                    end[cite: 1]
                end[cite: 1]
            end[cite: 1]
            
            if gunInstance and gunInstance:IsA("BasePart") then[cite: 1]
                local hrp = LocalPlayer.Character.HumanoidRootPart[cite: 1]
                local oldCFrame = hrp.CFrame[cite: 1]
                local checkTime = 0[cite: 1]
                while gunInstance and gunInstance.Parent and checkTime < 0.3 do[cite: 1]
                    hrp.CFrame = gunInstance.CFrame[cite: 1]
                    RunService.Heartbeat:Wait()[cite: 1]
                    checkTime = checkTime + game:GetService("RunService").Heartbeat:Wait()[cite: 1]
                end[cite: 1]
                hrp.CFrame = oldCFrame[cite: 1]
                task.wait(0.5)[cite: 1]
            end[cite: 1]
        end[cite: 1]
    end[cite: 1]
end)[cite: 1]

-- АИМБОТ И ЦЕЛИ[cite: 1]
local function GetClosestTarget()[cite: 1]
    local myRole = GetRole(LocalPlayer)[cite: 1]
    local closestPlayer = nil[cite: 1]
    local shortestDistance = math.huge[cite: 1]
    for _, player in ipairs(Players:GetPlayers()) do[cite: 1]
        if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then[cite: 1]
            local targetRole = GetRole(player)[cite: 1]
            local validTarget = false[cite: 1]
            if myRole == "Murderer" and targetRole ~= "Murderer" then[cite: 1]
                validTarget = true[cite: 1]
            elseif (myRole == "Sheriff" or myRole == "Innocent") and targetRole == "Murderer" then[cite: 1]
                validTarget = true[cite: 1]
            end[cite: 1]
            local humanoid = player.Character:FindFirstChildOfClass("Humanoid")[cite: 1]
            if validTarget and humanoid and humanoid.Health > 0 then[cite: 1]
                local distance = (LocalPlayer.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude[cite: 1]
                if distance < shortestDistance then[cite: 1]
                    shortestDistance = distance[cite: 1]
                    closestPlayer = player[cite: 1]
                end[cite: 1]
            end[cite: 1]
        end[cite: 1]
    end[cite: 1]
    return closestPlayer[cite: 1]
end[cite: 1]

local function IsHoldingWeapon()[cite: 1]
    local char = LocalPlayer.Character[cite: 1]
    if char then[cite: 1]
        local tool = char:FindFirstChildOfClass("Tool")[cite: 1]
        if tool and (tool.Name:lower():find("knife") or tool.Name:lower():find("gun") or tool.Name:lower():find("revolver")) then[cite: 1]
            return true[cite: 1]
        end[cite: 1]
    end[cite: 1]
    return false[cite: 1]
end[cite: 1]

RunService.RenderStepped:Connect(function()[cite: 1]
    if _G.SilentAimActive and IsHoldingWeapon() then[cite: 1]
        if UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) then[cite: 1]
            local target = GetClosestTarget()[cite: 1]
            if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then[cite: 1]
                Camera.CFrame = CFrame.new(Camera.CFrame.Position, target.Character.HumanoidRootPart.Position)[cite: 1]
            end[cite: 1]
        end[cite: 1]
    end[cite: 1]
end)[cite: 1]

-- ПОТОК КИЛЛАУРЫ[cite: 1]
task.spawn(function()[cite: 1]
    while true do[cite: 1]
        task.wait(_G.KillAuraDelay)[cite: 1]
        if _G.KillAuraActive and GetRole(LocalPlayer) == "Murderer" and LocalPlayer.Character then[cite: 1]
            local knife = LocalPlayer.Character:FindFirstChild("Knife") or LocalPlayer.Backpack:FindFirstChild("Knife")[cite: 1]
            if knife then[cite: 1]
                if knife.Parent == LocalPlayer.Backpack then knife.Parent = LocalPlayer.Character end[cite: 1]
                local handle = knife:FindFirstChild("Handle")[cite: 1]
                local myHrp = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")[cite: 1]
                if myHrp and handle then[cite: 1]
                    for _, player in ipairs(Players:GetPlayers()) do[cite: 1]
                        if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then[cite: 1]
                            local targetHrp = player.Character.HumanoidRootPart[cite: 1]
                            local distance = (myHrp.Position - targetHrp.Position).Magnitude[cite: 1]
                            local humanoid = player.Character:FindFirstChildOfClass("Humanoid")[cite: 1]
                            if distance <= _G.KillAuraRange and humanoid and humanoid.Health > 0 then[cite: 1]
                                local stabRemote = knife:FindFirstChild("Stab") or knife:FindFirstChild("StabServer")[cite: 1]
                                if stabRemote and stabRemote:IsA("RemoteEvent") then stabRemote:FireServer() end[cite: 1]
                                if firetouchinterest then[cite: 1]
                                    firetouchinterest(handle, targetHrp, 0)[cite: 1]
                                    firetouchinterest(handle, targetHrp, 1)[cite: 1]
                                end[cite: 1]
                            end[cite: 1]
                        end[cite: 1]
                    end[cite: 1]
                end[cite: 1]
            end[cite: 1]
        end[cite: 1]
    end[cite: 1]
end)[cite: 1]

-- ОБРАБОТКА НАЖАТИЙ КНОПКИ CHAMS (ФИКС ЧЕКБОКСА)
ChamsButton.MouseButton1Click:Connect(function()
    _G.ChamsActive = not _G.ChamsActive
    
    if _G.ChamsActive then
        ChamsButton.Text = "CHAMS: ON (" .. _G.ChamsType .. ")"
        ChamsButton.BackgroundColor3 = Color3.fromRGB(60, 255, 60)
    else
        ChamsButton.Text = "CHAMS: OFF"
        ChamsButton.BackgroundColor3 = Color3.fromRGB(255, 60, 60)
        
        -- Полное принудительное уничтожение визуалов во избежание багов
        for _, player in ipairs(Players:GetPlayers()) do 
            if player.Character then ClearChams(player.Character) end 
        end
        local drop = workspace:FindFirstChild("GunDrop")
        if drop then ClearChams(drop) end
    end
end)

-- Остальные кнопки[cite: 1]
AimButton.MouseButton1Click:Connect(function() _G.SilentAimActive = not _G.SilentAimActive AimButton.Text = _G.SilentAimActive and "AIM: ON" or "AIM: OFF" AimButton.BackgroundColor3 = _G.SilentAimActive and Color3.fromRGB(60, 255, 60) or Color3.fromRGB(255, 60, 60) end)[cite: 1]
NoclipButton.MouseButton1Click:Connect(function() _G.NoclipActive = not _G.NoclipActive NoclipButton.Text = _G.NoclipActive and "NOCLIP: ON" or "NOCLIP: OFF" NoclipButton.BackgroundColor3 = _G.NoclipActive and Color3.fromRGB(60, 255, 60) or Color3.fromRGB(255, 60, 60) end)[cite: 1]
AntiFlingButton.MouseButton1Click:Connect(function() _G.AntiFlingActive = not _G.AntiFlingActive AntiFlingButton.Text = _G.AntiFlingActive and "ANTI-FLING: ON" or "ANTI-FLING: OFF" AntiFlingButton.BackgroundColor3 = _G.AntiFlingActive and Color3.fromRGB(60, 255, 60) or Color3.fromRGB(255, 60, 60) end)[cite: 1]
PickupButton.MouseButton1Click:Connect(function() _G.AutoPickupActive = not _G.AutoPickupActive PickupButton.Text = _G.AutoPickupActive and "AUTOPICKUP: ON" or "AUTOPICKUP: OFF" PickupButton.BackgroundColor3 = _G.AutoPickupActive and Color3.fromRGB(60, 255, 60) or Color3.fromRGB(255, 60, 60) end)[cite: 1]
KillAuraButton.MouseButton1Click:Connect(function() _G.KillAuraActive = not _G.KillAuraActive KillAuraButton.Text = _G.KillAuraActive and "KILL AURA: ON" or "KILL AURA: OFF" KillAuraButton.BackgroundColor3 = _G.KillAuraActive and Color3.fromRGB(60, 255, 60) or Color3.fromRGB(255, 60, 60) end)[cite: 1]
SpeedButton.MouseButton1Click:Connect(function() _G.SpeedActive = not _G.SpeedActive SpeedButton.Text = _G.SpeedActive and "SPEEDHACK: ON" or "SPEEDHACK: OFF" SpeedButton.BackgroundColor3 = _G.SpeedActive and Color3.fromRGB(60, 255, 60) or Color3.fromRGB(255, 60, 60) end)[cite: 1]
