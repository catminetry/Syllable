-- Syllable - 手机优化版
-- 适用于《Rooms: Revisited》
-- 作者：DeepSeek Chat

-- 初始通知
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Syllable",
    Text = "加载中...",
    Duration = 3
})

-- 创建安全地面
local function createGODPart()
    local part = Instance.new("Part")
    part.Size = Vector3.new(100, 1, 100)
    part.Name = "GOD"
    part.Parent = game.Workspace
    part.CFrame = CFrame.new(-234.13714599609375, 206.11968994140625, 28.109851837158203)
    part.Anchored = true
    print("安全地面已创建")
end
createGODPart()

-- 获取玩家
local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- 创建手机版UI界面
local function createMobileUI()
    -- 主界面
    local mobileUI = Instance.new("ScreenGui")
    mobileUI.Name = "SyllableMobileUI"
    mobileUI.ResetOnSpawn = false
    mobileUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    mobileUI.Parent = player.PlayerGui

    -- 最小化按钮 (始终显示在左上角)
    local menuBtn = Instance.new("TextButton")
    menuBtn.Name = "MenuButton"
    menuBtn.Size = UDim2.new(0.08, 0, 0.08, 0)
    menuBtn.Position = UDim2.new(0.01, 0, 0.01, 0)
    menuBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    menuBtn.BackgroundTransparency = 0.2
    menuBtn.Text = "☰"
    menuBtn.TextColor3 = Color3.fromRGB(220, 220, 220)
    menuBtn.TextSize = 24
    menuBtn.Font = Enum.Font.GothamBold
    menuBtn.ZIndex = 10
    
    -- 圆角效果
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0.2, 0)
    corner.Parent = menuBtn
    
    menuBtn.Parent = mobileUI

    -- 主功能面板 (初始隐藏)
    local mainPanel = Instance.new("Frame")
    mainPanel.Name = "MainPanel"
    mainPanel.Size = UDim2.new(0.35, 0, 0.4, 0)
    mainPanel.Position = UDim2.new(0.02, 0, 0.1, 0)
    mainPanel.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    mainPanel.BackgroundTransparency = 0.15
    mainPanel.BorderSizePixel = 0
    mainPanel.Visible = false
    
    -- 面板圆角
    local panelCorner = Instance.new("UICorner")
    panelCorner.CornerRadius = UDim.new(0.1, 0)
    panelCorner.Parent = mainPanel
    
    mainPanel.Parent = mobileUI

    -- 标题栏
    local titleBar = Instance.new("Frame")
    titleBar.Name = "TitleBar"
    titleBar.Size = UDim2.new(1, 0, 0.12, 0)
    titleBar.Position = UDim2.new(0, 0, 0, 0)
    titleBar.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    titleBar.BorderSizePixel = 0
    titleBar.Parent = mainPanel
    
    local titleLabel = Instance.new("TextLabel")
    titleLabel.Name = "TitleLabel"
    titleLabel.Size = UDim2.new(0.8, 0, 0.8, 0)
    titleLabel.Position = UDim2.new(0.1, 0, 0.1, 0)
    titleLabel.BackgroundTransparency = 1
    titleLabel.Text = "音节功能菜单"
    titleLabel.TextColor3 = Color3.fromRGB(220, 220, 220)
    titleLabel.TextSize = 18
    titleLabel.Font = Enum.Font.GothamBold
    titleLabel.Parent = titleBar

    -- 关闭按钮
    local closeBtn = Instance.new("TextButton")
    closeBtn.Name = "CloseButton"
    closeBtn.Size = UDim2.new(0.15, 0, 0.8, 0)
    closeBtn.Position = UDim2.new(0.82, 0, 0.1, 0)
    closeBtn.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
    closeBtn.Text = "×"
    closeBtn.TextColor3 = Color3.fromRGB(220, 220, 220)
    closeBtn.TextSize = 20
    closeBtn.Font = Enum.Font.GothamBold
    closeBtn.Parent = titleBar
    
    local closeBtnCorner = Instance.new("UICorner")
    closeBtnCorner.CornerRadius = UDim.new(0.2, 0)
    closeBtnCorner.Parent = closeBtn

    -- 功能按钮容器
    local buttonsFrame = Instance.new("ScrollingFrame")
    buttonsFrame.Name = "ButtonsFrame"
    buttonsFrame.Size = UDim2.new(0.95, 0, 0.85, 0)
    buttonsFrame.Position = UDim2.new(0.025, 0, 0.15, 0)
    buttonsFrame.BackgroundTransparency = 1
    buttonsFrame.ScrollBarThickness = 4
    buttonsFrame.ScrollBarImageColor3 = Color3.fromRGB(100, 100, 100)
    buttonsFrame.CanvasSize = UDim2.new(0, 0, 2.5, 0)
    buttonsFrame.Parent = mainPanel

    local uiListLayout = Instance.new("UIListLayout")
    uiListLayout.Padding = UDim.new(0, 8)
    uiListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    uiListLayout.Parent = buttonsFrame

    -- 创建功能按钮
    local function createFeatureButton(name, text)
        local button = Instance.new("TextButton")
        button.Name = name
        button.Size = UDim2.new(0.9, 0, 0.08, 0)
        button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
        button.BackgroundTransparency = 0.3
        button.Text = text
        button.TextColor3 = Color3.fromRGB(240, 240, 240)
        button.TextSize = 14
        button.Font = Enum.Font.Gotham
        
        local btnCorner = Instance.new("UICorner")
        btnCorner.CornerRadius = UDim.new(0.15, 0)
        btnCorner.Parent = button
        
        -- 悬停效果
        button.MouseEnter:Connect(function()
            game:GetService("TweenService"):Create(
                button,
                TweenInfo.new(0.15),
                {BackgroundTransparency = 0.1}
            ):Play()
        end)
        
        button.MouseLeave:Connect(function()
            game:GetService("TweenService"):Create(
                button,
                TweenInfo.new(0.15),
                {BackgroundTransparency = 0.3}
            ):Play()
        end)
        
        button.Parent = buttonsFrame
        
        return button
    end

    -- 创建所有功能按钮
    local buttons = {
        {name = "DoorESP", text = "门高亮 [G]"},
        {name = "LockerESP", text = "储物柜高亮 [R]"},
        {name = "CoinESP", text = "硬币高亮 [K]"},
        {name = "Fullbright", text = "全亮模式 [T]"},
        {name = "SpeedBoost", text = "移动加速 [H]"},
        {name = "A60Warning", text = "A60警告 [M]"},
        {name = "A200Warning", text = "A200警告 [L]"},
        {name = "InstantPP", text = "即时交互 [P]"},
        {name = "DeleteA70", text = "删除A70 [J]"},
        {name = "DeleteA25", text = "删除A25 [U]"},
        {name = "DeleteA90", text = "删除A90 [V]"}
    }

    local buttonRefs = {}
    for _, btn in ipairs(buttons) do
        buttonRefs[btn.name] = createFeatureButton(btn.name, btn.text)
    end

    -- 欢迎信息
    local welcomeLabel = Instance.new("TextLabel")
    welcomeLabel.Name = "WelcomeLabel"
    welcomeLabel.Size = UDim2.new(0.9, 0, 0.08, 0)
    welcomeLabel.BackgroundTransparency = 1
    welcomeLabel.Text = "你好! " .. player.Name
    welcomeLabel.TextColor3 = Color3.fromRGB(0, 170, 0)
    welcomeLabel.TextSize = 14
    welcomeLabel.Font = Enum.Font.Gotham
    welcomeLabel.Parent = buttonsFrame
    
    -- 关闭UI提示
    local closeUILabel = Instance.new("TextLabel")
    closeUILabel.Name = "CloseUILabel"
    closeUILabel.Size = UDim2.new(0.9, 0, 0.08, 0)
    closeUILabel.BackgroundTransparency = 1
    closeUILabel.Text = "关闭菜单 [Q]"
    closeUILabel.TextColor3 = Color3.fromRGB(220, 220, 220)
    closeUILabel.TextSize = 14
    closeUILabel.Font = Enum.Font.Gotham
    closeUILabel.Parent = buttonsFrame
    
    -- 更新提示
    local updateLabel = Instance.new("TextLabel")
    updateLabel.Name = "UpdateLabel"
    updateLabel.Size = UDim2.new(0.9, 0, 0.08, 0)
    updateLabel.BackgroundTransparency = 1
    updateLabel.Text = "更多功能即将更新..."
    updateLabel.TextColor3 = Color3.fromRGB(220, 220, 220)
    updateLabel.TextSize = 14
    updateLabel.Font = Enum.Font.Gotham
    updateLabel.Parent = buttonsFrame

    -- 菜单按钮功能
    local isMenuOpen = false
    
    menuBtn.MouseButton1Click:Connect(function()
        isMenuOpen = not isMenuOpen
        mainPanel.Visible = isMenuOpen
        menuBtn.Text = isMenuOpen and "◄" or "☰"
    end)
    
    closeBtn.MouseButton1Click:Connect(function()
        isMenuOpen = false
        mainPanel.Visible = false
        menuBtn.Text = "☰"
    end)

    return mobileUI, buttonRefs
end

-- 创建UI并获取按钮引用
local mobileUI, buttons = createMobileUI()

-- 循环检测间隔（秒）
local CHECK_INTERVAL = 1

-- 门高亮功能
local doorHighlightEnabled = false
local function toggleDoorHighlight()
    doorHighlightEnabled = not doorHighlightEnabled
    buttons.DoorESP.Text = doorHighlightEnabled and "门高亮 [G] ✓" or "门高亮 [G]"
    
    -- 当关闭高亮时，移除所有高亮效果
    if not doorHighlightEnabled then
        for _, part in ipairs(workspace:GetDescendants()) do
            if part.Name == "Door" and part:IsA("BasePart") then
                local parent = part.Parent
                if parent and parent.Name == "Door_Model" then
                    local highlight = part:FindFirstChild("DoorHighlight")
                    if highlight then highlight:Destroy() end
                    
                    local billboard = part:FindFirstChild("DoorNameDisplay")
                    if billboard then billboard:Destroy() end
                end
            end
        end
    end
end

-- 门高亮循环检测
spawn(function()
    while true do
        wait(CHECK_INTERVAL)
        if doorHighlightEnabled then
            for _, part in ipairs(workspace:GetDescendants()) do
                if part.Name == "Door" and part:IsA("BasePart") then
                    local parent = part.Parent
                    if parent and parent.Name == "Door_Model" then
                        -- 检查是否已有高亮
                        if not part:FindFirstChild("DoorHighlight") then
                            local highlight = Instance.new("Highlight")
                            highlight.Name = "DoorHighlight"
                            highlight.Adornee = part
                            highlight.FillColor = Color3.new(1, 0, 0)
                            highlight.FillTransparency = 0.8
                            highlight.OutlineColor = Color3.new(1, 0, 0)
                            highlight.OutlineTransparency = 0.2
                            highlight.Enabled = true
                            highlight.Parent = part
                            
                            -- 添加文字标签
                            if not part:FindFirstChild("DoorNameDisplay") then
                                local billboardGui = Instance.new("BillboardGui")
                                billboardGui.Name = "DoorNameDisplay"
                                billboardGui.Adornee = part
                                billboardGui.Size = UDim2.new(0, 200, 0, 50)
                                billboardGui.StudsOffset = Vector3.new(0, 2, 0)
                                billboardGui.AlwaysOnTop = true
                                billboardGui.Enabled = true
                                billboardGui.Parent = part
                                
                                local textLabel = Instance.new("TextLabel")
                                textLabel.Name = "DoorName"
                                textLabel.Size = UDim2.new(1, 0, 1, 0)
                                textLabel.BackgroundTransparency = 1
                                textLabel.Text = "门"
                                textLabel.TextColor3 = Color3.new(1, 1, 1)
                                textLabel.TextSize = 24
                                textLabel.Font = Enum.Font.SourceSansBold
                                textLabel.Parent = billboardGui
                            end
                        end
                    end
                end
            end
        end
    end
end)

-- 储物柜高亮功能
local lockerHighlightEnabled = false
local function toggleLockerHighlight()
    lockerHighlightEnabled = not lockerHighlightEnabled
    buttons.LockerESP.Text = lockerHighlightEnabled and "储物柜高亮 [R] ✓" or "储物柜高亮 [R]"
    
    -- 当关闭高亮时，移除所有标签
    if not lockerHighlightEnabled then
        for _, model in ipairs(workspace:GetDescendants()) do
            if model.Name == "Lockers" and model:IsA("Model") then
                local parent = model.Parent
                if parent and parent.Name == "Lockers" and parent:IsA("Folder") then
                    local billboard = model:FindFirstChild("LockerNameDisplay")
                    if billboard then billboard:Destroy() end
                end
            end
        end
    end
end

-- 储物柜高亮循环检测
spawn(function()
    while true do
        wait(CHECK_INTERVAL)
        if lockerHighlightEnabled then
            for _, model in ipairs(workspace:GetDescendants()) do
                if model.Name == "Lockers" and model:IsA("Model") then
                    local parent = model.Parent
                    if parent and parent.Name == "Lockers" and parent:IsA("Folder") then
                        -- 检查是否已有标签
                        if not model:FindFirstChild("LockerNameDisplay") then
                            local billboardGui = Instance.new("BillboardGui")
                            billboardGui.Name = "LockerNameDisplay"
                            billboardGui.Adornee = model
                            billboardGui.Size = UDim2.new(0, 200, 0, 50)
                            billboardGui.StudsOffset = Vector3.new(0, 2, 0)
                            billboardGui.AlwaysOnTop = true
                            billboardGui.Enabled = true
                            billboardGui.Parent = model
                            
                            local textLabel = Instance.new("TextLabel")
                            textLabel.Name = "LockerName"
                            textLabel.Size = UDim2.new(1, 0, 1, 0)
                            textLabel.BackgroundTransparency = 1
                            textLabel.Text = "储物柜"
                            textLabel.TextColor3 = Color3.new(0, 1, 0)
                            textLabel.TextSize = 24
                            textLabel.Font = Enum.Font.SourceSansBold
                            textLabel.Parent = billboardGui
                        end
                    end
                end
            end
        end
    end
end)

-- 硬币高亮功能
local coinHighlightEnabled = false
local function toggleCoinHighlight()
    coinHighlightEnabled = not coinHighlightEnabled
    buttons.CoinESP.Text = coinHighlightEnabled and "硬币高亮 [K] ✓" or "硬币高亮 [K]"
    
    -- 当关闭高亮时，移除所有高亮效果和标签
    if not coinHighlightEnabled then
        for _, part in ipairs(workspace:GetDescendants()) do
            if part.Name == "Cube" and part:IsA("MeshPart") then
                local parent = part.Parent
                if parent and parent.Name == "CoinPile" and parent:IsA("Model") then
                    local highlight = part:FindFirstChild("CoinHighlight")
                    if highlight then highlight:Destroy() end
                    
                    local billboard = part:FindFirstChild("CoinNameDisplay")
                    if billboard then billboard:Destroy() end
                end
            end
        end
    end
end

-- 硬币高亮循环检测
spawn(function()
    while true do
        wait(CHECK_INTERVAL)
        if coinHighlightEnabled then
            for _, part in ipairs(workspace:GetDescendants()) do
                if part.Name == "Cube" and part:IsA("MeshPart") then
                    local parent = part.Parent
                    if parent and parent.Name == "CoinPile" and parent:IsA("Model") then
                        -- 检查是否已有高亮
                        if not part:FindFirstChild("CoinHighlight") then
                            local highlight = Instance.new("Highlight")
                            highlight.Name = "CoinHighlight"
                            highlight.Adornee = part
                            highlight.FillColor = Color3.new(0, 1, 0)
                            highlight.FillTransparency = 0.8
                            highlight.OutlineColor = Color3.new(0, 1, 0)
                            highlight.OutlineTransparency = 0.2
                            highlight.Enabled = true
                            highlight.Parent = part
                            
                            -- 添加文字标签
                            if not part:FindFirstChild("CoinNameDisplay") then
                                local billboardGui = Instance.new("BillboardGui")
                                billboardGui.Name = "CoinNameDisplay"
                                billboardGui.Adornee = part
                                billboardGui.Size = UDim2.new(0, 200, 0, 50)
                                billboardGui.StudsOffset = Vector3.new(0, 2, 0)
                                billboardGui.AlwaysOnTop = true
                                billboardGui.Enabled = true
                                billboardGui.Parent = part
                                
                                local textLabel = Instance.new("TextLabel")
                                textLabel.Name = "CoinName"
                                textLabel.Size = UDim2.new(1, 0, 1, 0)
                                textLabel.BackgroundTransparency = 1
                                textLabel.Text = "硬币堆"
                                textLabel.TextColor3 = Color3.new(1, 1, 1)
                                textLabel.TextSize = 24
                                textLabel.Font = Enum.Font.SourceSansBold
                                textLabel.Parent = billboardGui
                            end
                        end
                    end
                end
            end
        end
    end
end)

-- 全亮模式
local fullbrightEnabled = false
local originalLightingSettings = {}
local function toggleFullbright()
    fullbrightEnabled = not fullbrightEnabled
    buttons.Fullbright.Text = fullbrightEnabled and "全亮模式 [T] ✓" or "全亮模式 [T]"
    
    if fullbrightEnabled then
        -- 保存原始光照设置
        originalLightingSettings.Brightness = game.Lighting.Brightness
        originalLightingSettings.ClockTime = game.Lighting.ClockTime
        originalLightingSettings.FogEnd = game.Lighting.FogEnd
        originalLightingSettings.GlobalShadows = game.Lighting.GlobalShadows
        originalLightingSettings.OutdoorAmbient = game.Lighting.OutdoorAmbient
        
        -- 应用全亮设置
        game.Lighting.Brightness = 2
        game.Lighting.ClockTime = 14
        game.Lighting.FogEnd = 100000
        game.Lighting.GlobalShadows = false
        game.Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
        game.Lighting.Atmosphere:Destroy()
    else
        -- 恢复原始设置
        if originalLightingSettings.Brightness then
            game.Lighting.Brightness = originalLightingSettings.Brightness
            game.Lighting.ClockTime = originalLightingSettings.ClockTime
            game.Lighting.FogEnd = originalLightingSettings.FogEnd
            game.Lighting.GlobalShadows = originalLightingSettings.GlobalShadows
            game.Lighting.OutdoorAmbient = originalLightingSettings.OutdoorAmbient
        end
    end
end

-- 移动加速
local speedBoostEnabled = false
local character = player.Character or player.CharacterAdded:Wait()
local originalWalkSpeed = character:FindFirstChildOfClass("Humanoid").WalkSpeed
local function toggleSpeedBoost()
    speedBoostEnabled = not speedBoostEnabled
    buttons.SpeedBoost.Text = speedBoostEnabled and "移动加速 [H] ✓" or "移动加速 [H]"
    
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        humanoid.WalkSpeed = speedBoostEnabled and 35 or originalWalkSpeed
    end
end

-- 角色变化时重新应用速度
player.CharacterAdded:Connect(function(newChar)
    character = newChar
    local humanoid = character:WaitForChild("Humanoid")
    originalWalkSpeed = humanoid.WalkSpeed
    
    if speedBoostEnabled then
        humanoid.WalkSpeed = 35
    end
end)

-- A60警告系统
local a60WarningEnabled = false
local function toggleA60Warning()
    a60WarningEnabled = not a60WarningEnabled
    buttons.A60Warning.Text = a60WarningEnabled and "A60警告 [M] ✓" or "A60警告 [M]"
end

-- A200警告系统
local a200WarningEnabled = false
local function toggleA200Warning()
    a200WarningEnabled = not a200WarningEnabled
    buttons.A200Warning.Text = a200WarningEnabled and "A200警告 [L] ✓" or "A200警告 [L]"
end

-- 即时交互功能
local instantPPEnabled = false
local originalPromptSettings = {}
local function toggleInstantPP()
    instantPPEnabled = not instantPPEnabled
    buttons.InstantPP.Text = instantPPEnabled and "即时交互 [P] ✓" or "即时交互 [P]"
    
    local function setupPrompt(prompt)
        if prompt:IsA("ProximityPrompt") then
            if not originalPromptSettings[prompt] then
                originalPromptSettings[prompt] = {
                    HoldDuration = prompt.HoldDuration,
                    RequiresLineOfSight = prompt.RequiresLineOfSight,
                    MaxActivationDistance = prompt.MaxActivationDistance
                }
            end
            
            if instantPPEnabled then
                prompt.HoldDuration = 0 -- 设置为即时交互
            else
                -- 恢复原始设置
                local original = originalPromptSettings[prompt]
                prompt.HoldDuration = original.HoldDuration
                prompt.RequiresLineOfSight = original.RequiresLineOfSight
                prompt.MaxActivationDistance = original.MaxActivationDistance
            end
        end
    end
    
    -- 处理所有现有prompt
    for _, descendant in ipairs(workspace:GetDescendants()) do
        setupPrompt(descendant)
    end
end

-- 删除A70
local function deleteA70()
    for _, model in ipairs(workspace:GetDescendants()) do
        if model:IsA("Model") and model.Name == "LockerMimicNew" then
            model:Destroy()
        end
    end
    
    -- 操作反馈
    buttons.DeleteA70.Text = "删除A70 [J] ✓"
    wait(1.5)
    buttons.DeleteA70.Text = "删除A70 [J]"
end

-- 删除A25
local function deleteA25()
    local entitiesFolder = workspace:WaitForChild("Entities")
    for _, child in ipairs(entitiesFolder:GetChildren()) do
        if child.Name == "Warp" then
            child:Destroy()
        end
    end
    
    -- 操作反馈
    buttons.DeleteA25.Text = "删除A25 [U] ✓"
    wait(1.5)
    buttons.DeleteA25.Text = "删除A25 [U]"
end

--删A90
local function deleteA90()
    game:GetService("Players").LocalPlayer.PlayerGui.A90:Destroy()
    game:GetService("Players").LocalPlayer.PlayerGui.A902:Destroy()
end



-- 绑定按钮功能
buttons.DoorESP.MouseButton1Click:Connect(toggleDoorHighlight)
buttons.LockerESP.MouseButton1Click:Connect(toggleLockerHighlight)
buttons.CoinESP.MouseButton1Click:Connect(toggleCoinHighlight)
buttons.Fullbright.MouseButton1Click:Connect(toggleFullbright)
buttons.SpeedBoost.MouseButton1Click:Connect(toggleSpeedBoost)
buttons.A60Warning.MouseButton1Click:Connect(toggleA60Warning)
buttons.A200Warning.MouseButton1Click:Connect(toggleA200Warning)
buttons.InstantPP.MouseButton1Click:Connect(toggleInstantPP)
buttons.DeleteA70.MouseButton1Click:Connect(deleteA70)
buttons.DeleteA25.MouseButton1Click:Connect(deleteA25)
buttons.DeleteA90.MouseButton1Click:Connect(deleteA90)

-- 键盘快捷键
local UserInputService = game:GetService("UserInputService")
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    
    if input.KeyCode == Enum.KeyCode.G then
        toggleDoorHighlight()
    elseif input.KeyCode == Enum.KeyCode.R then
        toggleLockerHighlight()
    elseif input.KeyCode == Enum.KeyCode.K then
        toggleCoinHighlight()
    elseif input.KeyCode == Enum.KeyCode.T then
        toggleFullbright()
    elseif input.KeyCode == Enum.KeyCode.H then
        toggleSpeedBoost()
    elseif input.KeyCode == Enum.KeyCode.M then
        toggleA60Warning()
    elseif input.KeyCode == Enum.KeyCode.L then
        toggleA200Warning()
    elseif input.KeyCode == Enum.KeyCode.P then
        toggleInstantPP()
    elseif input.KeyCode == Enum.KeyCode.J then
        deleteA70()
    elseif input.KeyCode == Enum.KeyCode.U then
        deleteA25()
    elseif input.KeyCode == Enum.KeyCode.V then
        deleteA90()
    elseif input.KeyCode == Enum.KeyCode.Q then
        -- 关闭UI
        mobileUI.MainPanel.Visible = false
        mobileUI.MenuButton.Text = "☰"
    end
end)

-- 声音文件夹和警告系统
local SoundsFolder = Instance.new("Folder")
SoundsFolder.Parent = game.Workspace
SoundsFolder.Name = "SoundsFolder"

-- 警告音效
local function getGitSoundId(GithubSoundPath, AssetName)
    local Url = GithubSoundPath

    if not isfile(AssetName..".mp3") then 
        writefile(AssetName..".mp3", game:HttpGet(Url)) 
    end

    local Sound = Instance.new("Sound")
    Sound.SoundId = getcustomasset(AssetName..".mp3", true)
    return Sound 
end

local warningSound = getGitSoundId("https://github.com/LLGCAllIWantIsYou/green-fog/blob/main/Warning.MP3?raw=true", "WARN")
warningSound.Name = "WARN"
warningSound.Parent = SoundsFolder
warningSound.Volume = 0.6
warningSound.Pitch = 0.5

local noteSound = getGitSoundId("https://github.com/LLGCAllIWantIsYou/green-fog/blob/main/mixkit-cowbell-sharp-hit-1743.mp3?raw=true", "NOTE")
noteSound.Name = "NOTE"
noteSound.Parent = SoundsFolder
noteSound.Volume = 0.6
noteSound.Pitch = 0.5

-- A60检测协程
spawn(function()
    while true do
        wait(1)
        if a60WarningEnabled and workspace.Entities:FindFirstChild("APoopy") then
            warningSound:Play()
            
            local TextChatService = game:GetService("TextChatService")
            local function sendMessageToChannel(channelName, message)
                local textChannelContainer = TextChatService:FindFirstChild("TextChannels")
                local channel = textChannelContainer:FindFirstChild(channelName)
                channel:SendAsync(message)
            end
            sendMessageToChannel("A60", "A60出现了!")
            
            local message = Instance.new("Message")
            message.Parent = workspace
            message.Text = "警告: A60出现!"
            wait(3)
            message:Destroy()
        end
    end
end)

-- A60移除检测
workspace.Entities.ChildRemoved:Connect(function(child)
    if child.Name == "APoopy" and a60WarningEnabled then
        noteSound:Play()
        
        local TextChatService = game:GetService("TextChatService")
        local function sendMessageToChannel(channelName, message)
            local textChannelContainer = TextChatService:FindFirstChild("TextChannels")
            local channel = textChannelContainer:FindFirstChild(channelName)
            channel:SendAsync(message)
        end
        sendMessageToChannel("A60", "A60已消失")
        
        local message = Instance.new("Message")
        message.Parent = workspace
        message.Text = "A60已消失"
        wait(3)
        message:Destroy()
    end
end)

-- A200检测协程
spawn(function()
    while true do
        wait(1)
        if a200WarningEnabled and workspace.Entities:FindFirstChild("ATwoo") then
            warningSound:Play()
            
            local TextChatService = game:GetService("TextChatService")
            local function sendMessageToChannel(channelName, message)
                local textChannelContainer = TextChatService:FindFirstChild("TextChannels")
                local channel = textChannelContainer:FindFirstChild(channelName)
                channel:SendAsync(message)
            end
            sendMessageToChannel("A200", "A200出现了!")
            
            local message = Instance.new("Message")
            message.Parent = workspace
            message.Text = "警告: A200出现!"
            wait(3)
            message:Destroy()
        end
    end
end)

-- A200移除检测
workspace.Entities.ChildRemoved:Connect(function(child)
    if child.Name == "ATwoo" and a200WarningEnabled then
        noteSound:Play()
        
        local TextChatService = game:GetService("TextChatService")
        local function sendMessageToChannel(channelName, message)
            local textChannelContainer = TextChatService:FindFirstChild("TextChannels")
            local channel = textChannelContainer:FindFirstChild(channelName)
            channel:SendAsync(message)
        end
        sendMessageToChannel("A200", "A200已消失")
        
        local message = Instance.new("Message")
        message.Parent = workspace
        message.Text = "A200已消失"
        wait(3)
        message:Destroy()
    end
end)

-- 即时交互的新对象检测
workspace.DescendantAdded:Connect(function(descendant)
    if instantPPEnabled and descendant:IsA("ProximityPrompt") then
        descendant.HoldDuration = 0
    end
end)

-- 加载完成通知
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "音节脚本",
    Text = "加载完成",
    Duration = 3
})

print("脚本加载成功")
