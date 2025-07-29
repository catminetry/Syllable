-- 引入必要的服务
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

-- 获取本地玩家和PlayerGui
local localPlayer = Players.LocalPlayer
local playerGui = localPlayer:WaitForChild("PlayerGui")

-- 创建ScreenGui
local Keybind = Instance.new("ScreenGui")
Keybind.Name = "Keybind"
Keybind.Parent = playerGui
Keybind.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- 创建主容器
local Main = Instance.new("Frame")
local Frame = Instance.new("Frame")
local Label = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local UIListLayout = Instance.new("UIListLayout")
local Adoor = Instance.new("TextLabel")
local Blocker = Instance.new("TextLabel")
local Ccoin = Instance.new("TextLabel")
local Dfb = Instance.new("TextLabel")
local Ews = Instance.new("TextLabel")
local FWA = Instance.new("TextLabel")
local Gwaa = Instance.new("TextLabel")
local Htsp = Instance.new("TextLabel")
local ID70 = Instance.new("TextLabel")
local JD25 = Instance.new("TextLabel")
local KD90 = Instance.new("TextLabel")
local LD90B = Instance.new("TextLabel")
local Oply = Instance.new("TextLabel")
local Mzlo = Instance.new("TextLabel")
local Nzpd = Instance.new("TextLabel")

-- 设备自适应UI调整函数
local function updateUIForDevice()
    local screenSize = playerGui.AbsoluteSize
    local isSmallScreen = screenSize.X < 800 or screenSize.Y < 600
    local scaleFactor = math.min(screenSize.X / 1920, screenSize.Y / 1080)
    local buttonHeight = isSmallScreen and 24 or 30
    local fontSize = isSmallScreen and 12 or 14
    local padding = isSmallScreen and 8 or 10
    local widthPercent = isSmallScreen and 0.4 or 0.25

    -- 更新Main容器
    Main.Name = "Main"
    Main.Parent = Keybind
    Main.AnchorPoint = Vector2.new(0.5, 0)
    Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Main.BackgroundTransparency = 1.000
    Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Main.BorderSizePixel = 0
    Main.Position = UDim2.new(0.5, 0, 0.1, 0)
    Main.Size = UDim2.new(widthPercent, 0, 0, 0)

    -- 更新Frame
    Frame.Parent = Main
    Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Frame.BackgroundTransparency = 0.8
    Frame.BorderColor3 = Color3.fromRGB(255, 255, 255)
    Frame.BorderSizePixel = 1
    Frame.Position = UDim2.new(0, 0, 0, 0)
    Frame.Size = UDim2.new(1, 0, 0, 0)
    Frame.AutomaticSize = Enum.AutomaticSize.Y

    -- 更新标题Label
    Label.Name = "Label"
    Label.Parent = Frame
    Label.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
    Label.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Label.BorderSizePixel = 0
    Label.Size = UDim2.new(1, 0, 0, buttonHeight)
    Label.Font = Enum.Font.SourceSans
    Label.Text = "Syllable(Rooms: Revisited)"
    Label.TextColor3 = Color3.fromRGB(255, 255, 255)
    Label.TextSize = fontSize
    Label.TextXAlignment = Enum.TextXAlignment.Center

    -- 更新关闭按钮
    TextButton.Parent = Label
    TextButton.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
    TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextButton.BorderSizePixel = 0
    TextButton.Position = UDim2.new(1, -buttonHeight, 0, 0)
    TextButton.Size = UDim2.new(0, buttonHeight, 0, buttonHeight)
    TextButton.Font = Enum.Font.SourceSansBold
    TextButton.Text = "X"
    TextButton.TextColor3 = Color3.fromRGB(165, 0, 0)
    TextButton.TextSize = fontSize

    -- 更新UIListLayout
    UIListLayout.Parent = Frame
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0, padding)

    -- 更新按钮通用函数
    local function updateButton(button, text, layoutOrder)
        button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        button.BackgroundTransparency = 0.5
        button.BorderColor3 = Color3.fromRGB(255, 255, 255)
        button.BorderSizePixel = 1
        button.Size = UDim2.new(1, 0, 0, buttonHeight)
        button.Font = Enum.Font.SourceSans
        button.Text = text
        button.TextColor3 = Color3.fromRGB(255, 0, 4)
        button.TextSize = fontSize
        button.LayoutOrder = layoutOrder
        button.Parent = Frame
    end

    -- 更新各个按钮
    updateButton(Adoor, "Door esp       [G]", 1)
    updateButton(Blocker, "Locker esp  [R]", 2)
    updateButton(Ccoin, "Coin(Pile) esp   [K]", 3)
    updateButton(Dfb, "Fullbright   [T]", 4)
    updateButton(Ews, "Loopspeed(35)   [H]", 5)
    updateButton(FWA, "Warn A60   [M]", 6)
    updateButton(Gwaa, "Warn A200   [L]", 7)
    updateButton(Htsp, "InstantPP   [P]", 8)
    updateButton(ID70, "Delete A70   [J]", 9)
    updateButton(JD25, "Delete A25   [U]", 10)
    updateButton(KD90, "Delete A90   [Z]", 11)
    -- 其他按钮...
end

-- 初始化UI
updateUIForDevice()

-- 监听屏幕大小变化
playerGui:GetPropertyChangedSignal("AbsoluteSize"):Connect(updateUIForDevice)
-- 初始化UI
updateUIForDevice()

-- 监听屏幕大小变化
playerGui:GetPropertyChangedSignal("AbsoluteSize"):Connect(updateUIForDevice)

-- 确保Keybind的父级设置正确
Keybind.Parent = playerGui
Keybind.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- 确保所有按钮使用updateButton函数设置
updateButton(Adoor, "Door esp       [G]", 1)
updateButton(Blocker, "Locker esp  [R]", 2)
updateButton(Ccoin, "Coin(Pile) esp   [K]", 3)
updateButton(Dfb, "Fullbright   [T]", 4)
updateButton(Ews, "Loopspeed(35)   [H]", 5)
updateButton(FWA, "Warn A60   [M]", 6)
updateButton(Gwaa, "Warn A200   [L]", 7)
updateButton(Htsp, "InstantPP   [P]", 8)
updateButton(ID70, "Delete A70   [J]", 9)
updateButton(JD25, "Delete A25   [U]", 10)
updateButton(KD90, "Delete A90", 11)
updateButton(LD90B, "Delete A90b", 12)

-- 特殊样式按钮
updateButton(Oply, "Hello!", 13)
Oply.TextColor3 = Color3.fromRGB(0, 170, 0)

updateButton(Mzlo, "Close This UI [Q]", 14)
Mzlo.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
Mzlo.TextColor3 = Color3.fromRGB(255, 255, 255)

updateButton(Nzpd, "More update soon...", 15)
Nzpd.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
Nzpd.TextColor3 = Color3.fromRGB(255, 255, 255)

-- Scripts:

-- 关闭按钮功能
local function setupCloseButton()
    TextButton.MouseButton1Click:Connect(function()
        Keybind.Enabled = false
    end)
end
setupCloseButton()

-- 个性化问候语
local function setupGreeting()
    Oply.Text = "Hello! " .. localPlayer.Name
    Oply.TextColor3 = Color3.fromRGB(0, 170, 0)
end
setupGreeting()

-- 帧可拖动功能
local function setupDraggableFrame()
    Frame.Active = true
    Frame.Draggable = true
end
setupDraggableFrame()

-- Q键切换UI显示
local function setupToggleKeybind()
    local UserInputService = game:GetService("UserInputService")
    UserInputService.InputBegan:Connect(function(input, gameProcessed)
        if gameProcessed then return end
        if input.KeyCode == Enum.KeyCode.Q then
            Keybind.Enabled = not Keybind.Enabled
        end
    end)
end
setupToggleKeybind()





local Workspace = game:GetService("Workspace")
local UserInputService = game:GetService("UserInputService")

-- 功能开关状态
local isEnabled = true

-- 文字配置
local TEXT_CONFIG = {
    Color = Color3.new(0, 1, 0), -- 绿色文字
    Size = 24,                   -- 文字大小
    Font = Enum.Font.SourceSansBold -- 字体
}

-- 切换功能开关
local function toggleFeature()
    isEnabled = not isEnabled
    
    -- 更新所有储物柜的文字显示状态
    for _, descendant in ipairs(Workspace:GetDescendants()) do
        if descendant.Name == "Lockers" and descendant:IsA("Model") then
            local parent = descendant.Parent
            if parent and parent.Name == "Lockers" and parent:IsA("Folder") then
                local billboardGui = descendant:FindFirstChild("LockerNameDisplay")
                
                if billboardGui then
                    billboardGui.Enabled = isEnabled
                end
            end
        end
    end
end

-- 监听G键按下事件
UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if not gameProcessedEvent and input.KeyCode == Enum.KeyCode.R then
        toggleFeature()
    end
end)

-- 查找并添加文字显示
local function addTextDisplay()
    if not isEnabled then
        return
    end
    
    -- 遍历workspace中的所有对象
    for _, descendant in ipairs(Workspace:GetDescendants()) do
        -- 检查是否是名为"Locker"的模型
        if descendant.Name == "Lockers" and descendant:IsA("Model") then
            -- 检查其父项是否名为"Locker"的Folder
            local parent = descendant.Parent
            if parent and parent.Name == "Lockers" and parent:IsA("Folder") then
                -- 检查是否已经有文字显示
                if not descendant:FindFirstChild("LockerNameDisplay") then
                    -- 创建BillboardGui显示储物柜的名字
                    local billboardGui = Instance.new("BillboardGui")
                    billboardGui.Name = "LockerNameDisplay"
                    billboardGui.Adornee = descendant
                    billboardGui.Size = UDim2.new(0, 200, 0, 50)
                    billboardGui.StudsOffset = Vector3.new(0, 2, 0)
                    billboardGui.AlwaysOnTop = true
                    billboardGui.Enabled = isEnabled
                    billboardGui.Parent = descendant
                    
                    -- 创建TextLabel
                    local textLabel = Instance.new("TextLabel")
                    textLabel.Name = "LockerName"
                    textLabel.Size = UDim2.new(1, 0, 1, 0)
                    textLabel.BackgroundTransparency = 1
                    textLabel.Text = descendant.Name
                    textLabel.TextColor3 = TEXT_CONFIG.Color
                    textLabel.TextSize = TEXT_CONFIG.Size
                    textLabel.Font = TEXT_CONFIG.Font
                    textLabel.Parent = billboardGui
                    
                    
                end
            end
        end
    end
end

-- 监听workspace中添加新对象的事件
Workspace.DescendantAdded:Connect(function(descendant)
    if not isEnabled then
        return
    end
    
    -- 检查是否是名为"Locker"的模型
    if descendant.Name == "Lockers" and descendant:IsA("Model") then
        -- 检查其父项是否名为"Locker"的Folder
        local parent = descendant.Parent
        if parent and parent.Name == "Lockers" and parent:IsA("Folder") then
            -- 检查是否已经有文字显示
            if not descendant:FindFirstChild("LockerNameDisplay") then
                -- 创建BillboardGui显示储物柜的名字
                local billboardGui = Instance.new("BillboardGui")
                billboardGui.Name = "LockerNameDisplay"
                billboardGui.Adornee = descendant
                billboardGui.Size = UDim2.new(0, 200, 0, 50)
                billboardGui.StudsOffset = Vector3.new(0, 2, 0)
                billboardGui.AlwaysOnTop = true
                billboardGui.Enabled = isEnabled
                billboardGui.Parent = descendant
                
                -- 创建TextLabel
                local textLabel = Instance.new("TextLabel")
                textLabel.Name = "LockerName"
                textLabel.Size = UDim2.new(1, 0, 1, 0)
                textLabel.BackgroundTransparency = 1
                textLabel.Text = descendant.Name
                textLabel.TextColor3 = TEXT_CONFIG.Color
                textLabel.TextSize = TEXT_CONFIG.Size
                textLabel.Font = TEXT_CONFIG.Font
                textLabel.Parent = billboardGui
                
                
            end
        end
    end
end)

-- 初始执行添加文字函数
addTextDisplay()






local Workspace = game:GetService("Workspace")
local UserInputService = game:GetService("UserInputService")

-- 功能开关状态
local isEnabled = true

-- 高亮配置
local HIGHLIGHT_CONFIG = {
    FillColor = Color3.new(0, 1, 0), -- 绿色填充
    FillTransparency = 0.8,         -- 半透明
    OutlineColor = Color3.new(0, 1, 0), -- 绿色边框
    OutlineTransparency = 0.2       -- 边框透明度
}

-- 切换功能开关
local function toggleFeature()
    isEnabled = not isEnabled
    
    -- 更新所有储物柜的高亮状态
    for _, descendant in ipairs(Workspace:GetDescendants()) do
        if descendant.Name == "Cube" and descendant:IsA("MeshPart") then
            local parent = descendant.Parent
            if parent and parent.Name == "CoinPile" and parent:IsA("Model") then
                local highlight = descendant:FindFirstChild("CoinHighlight")
                local billboardGui = descendant:FindFirstChild("CoinNameDisplay")
                
                if highlight then
                    highlight.Enabled = isEnabled
                end
                
                if billboardGui then
                    billboardGui.Enabled = isEnabled
                end
            end
        end
    end
end

-- 监听G键按下事件
UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if not gameProcessedEvent and input.KeyCode == Enum.KeyCode.K then
        toggleFeature()
    end
end)

-- 查找并高亮符合条件的Locker
local function highlightLockers()
    if not isEnabled then
        return
    end
    
    -- 遍历workspace中的所有对象
    for _, descendant in ipairs(Workspace:GetDescendants()) do
        -- 检查是否是名为"Locker"的模型
        if descendant.Name == "Cube" and descendant:IsA("MeshPart") then
            -- 检查其父项是否名为"Locker"的Folder
            local parent = descendant.Parent
            if parent and parent.Name == "CoinPile" and parent:IsA("Model") then
                -- 检查是否已经有高亮
                if not descendant:FindFirstChild("CoinHighlight") then
                    -- 直接将Highlight添加到Locker模型
                    local highlight = Instance.new("Highlight")
                    highlight.Name = "CoinHighlight"
                    highlight.Adornee = descendant
                    highlight.FillColor = HIGHLIGHT_CONFIG.FillColor
                    highlight.FillTransparency = HIGHLIGHT_CONFIG.FillTransparency
                    highlight.OutlineColor = HIGHLIGHT_CONFIG.OutlineColor
                    highlight.OutlineTransparency = HIGHLIGHT_CONFIG.OutlineTransparency
                    highlight.Enabled = isEnabled
                    highlight.Parent = descendant
                    
                    -- 创建BillboardGui显示储物柜的名字
                    local billboardGui = Instance.new("BillboardGui")
                    billboardGui.Name = "CoinNameDisplay"
                    billboardGui.Adornee = descendant
                    billboardGui.Size = UDim2.new(0, 200, 0, 50)
                    billboardGui.StudsOffset = Vector3.new(0, 2, 0)
                    billboardGui.AlwaysOnTop = true
                    billboardGui.Enabled = isEnabled
                    billboardGui.Parent = descendant
                    
                    -- 创建TextLabel
                    local textLabel = Instance.new("TextLabel")
                    textLabel.Name = "LockerName"
                    textLabel.Size = UDim2.new(1, 0, 1, 0)
                    textLabel.BackgroundTransparency = 1
                    textLabel.Text = descendant.Name
                    textLabel.TextColor3 = Color3.new(1, 1, 1)
                    textLabel.TextSize = 24
                    textLabel.Font = Enum.Font.SourceSansBold
                    textLabel.Parent = billboardGui
                    
                   
                end
            end
        end
    end
end

-- 监听workspace中添加新对象的事件
Workspace.DescendantAdded:Connect(function(descendant)
    if not isEnabled then
        return
    end
    
    -- 检查是否是名为"Locker"的模型
    if descendant.Name == "Cube" and descendant:IsA("MeshPart") then
        -- 检查其父项是否名为"Locker"的Folder
        local parent = descendant.Parent
        if parent and parent.Name == "CoinPile" and parent:IsA("Model") then
            -- 检查是否已经有高亮
            if not descendant:FindFirstChild("CoinHighlight") then
                -- 直接将Highlight添加到Locker模型
                local highlight = Instance.new("Highlight")
                highlight.Name = "CoinHighlight"
                highlight.Adornee = descendant
                highlight.FillColor = HIGHLIGHT_CONFIG.FillColor
                highlight.FillTransparency = HIGHLIGHT_CONFIG.FillTransparency
                highlight.OutlineColor = HIGHLIGHT_CONFIG.OutlineColor
                highlight.OutlineTransparency = HIGHLIGHT_CONFIG.OutlineTransparency
                highlight.Enabled = isEnabled
                highlight.Parent = descendant
                
                -- 创建BillboardGui显示储物柜的名字
                local billboardGui = Instance.new("BillboardGui")
                billboardGui.Name = "CoinNameDisplay"
                billboardGui.Adornee = descendant
                billboardGui.Size = UDim2.new(0, 200, 0, 50)
                billboardGui.StudsOffset = Vector3.new(0, 2, 0)
                billboardGui.AlwaysOnTop = true
                billboardGui.Enabled = isEnabled
                billboardGui.Parent = descendant
                
                -- 创建TextLabel
                local textLabel = Instance.new("TextLabel")
                textLabel.Name = "CoinName"
                textLabel.Size = UDim2.new(1, 0, 1, 0)
                textLabel.BackgroundTransparency = 1
                textLabel.Text = descendant.Name
                textLabel.TextColor3 = Color3.new(1, 1, 1)
                textLabel.TextSize = 24
                textLabel.Font = Enum.Font.SourceSansBold
                textLabel.Parent = billboardGui
                
                
            end
        end
    end
end)

-- 初始执行高亮函数
highlightLockers()








local Workspace = game:GetService("Workspace")
local UserInputService = game:GetService("UserInputService")

-- 功能开关状态
local isEnabled = true

-- 高亮配置
local HIGHLIGHT_CONFIG = {
    FillColor = Color3.new(1, 0, 0), -- 红色填充
    FillTransparency = 0.8,         -- 半透明
    OutlineColor = Color3.new(1, 0, 0), -- 红色边框
    OutlineTransparency = 0.2       -- 边框透明度
}

-- 切换功能开关
local function toggleFeature()
    isEnabled = not isEnabled
    
    -- 更新所有门的高亮状态
    for _, descendant in ipairs(Workspace:GetDescendants()) do
        if descendant.Name == "Door" and descendant:IsA("BasePart") then
            local parent = descendant.Parent
            if parent and parent.Name == "Door_Model" then
                local highlight = descendant:FindFirstChild("DoorHighlight")
                local billboardGui = descendant:FindFirstChild("DoorNameDisplay")
                
                if highlight then
                    highlight.Enabled = isEnabled
                end
                
                if billboardGui then
                    billboardGui.Enabled = isEnabled
                end
            end
        end
    end
end

-- 监听G键按下事件
UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if not gameProcessedEvent and input.KeyCode == Enum.KeyCode.G then
        toggleFeature()
    end
end)

-- 查找并高亮符合条件的Door
local function highlightDoors()
    if not isEnabled then
        return
    end
    
    -- 遍历workspace中的所有对象
    for _, descendant in ipairs(Workspace:GetDescendants()) do
        -- 检查是否是名为"Door"的部件
        if descendant.Name == "Door" and descendant:IsA("BasePart") then
            -- 检查其父项是否名为"Door_Model"
            local parent = descendant.Parent
            if parent and parent.Name == "Door_Model" then
                -- 检查是否已经有高亮
                if not descendant:FindFirstChild("DoorHighlight") then
                    -- 创建Highlight用于填充高亮
                    local highlight = Instance.new("Highlight")
                    highlight.Name = "DoorHighlight"
                    highlight.Adornee = descendant
                    highlight.FillColor = HIGHLIGHT_CONFIG.FillColor
                    highlight.FillTransparency = HIGHLIGHT_CONFIG.FillTransparency
                    highlight.OutlineColor = HIGHLIGHT_CONFIG.OutlineColor
                    highlight.OutlineTransparency = HIGHLIGHT_CONFIG.OutlineTransparency
                    highlight.Enabled = isEnabled
                    highlight.Parent = descendant
                    
                    -- 创建BillboardGui显示门的名字
                    local billboardGui = Instance.new("BillboardGui")
                    billboardGui.Name = "DoorNameDisplay"
                    billboardGui.Adornee = descendant
                    billboardGui.Size = UDim2.new(0, 200, 0, 50)
                    billboardGui.StudsOffset = Vector3.new(0, 2, 0)
                    billboardGui.AlwaysOnTop = true
                    billboardGui.Enabled = isEnabled
                    billboardGui.Parent = descendant
                    
                    -- 创建TextLabel
                    local textLabel = Instance.new("TextLabel")
                    textLabel.Name = "DoorName"
                    textLabel.Size = UDim2.new(1, 0, 1, 0)
                    textLabel.BackgroundTransparency = 1
                    textLabel.Text = descendant.Name
                    textLabel.TextColor3 = Color3.new(1, 1, 1)
                    textLabel.TextSize = 24
                    textLabel.Font = Enum.Font.SourceSansBold
                    textLabel.Parent = billboardGui
                end
            end
        end
    end
end

-- 监听workspace变化，以便在添加新对象时也能高亮
Workspace.DescendantAdded:Connect(function(descendant)
    if descendant.Name == "Door" and descendant:IsA("BasePart") then
        local parent = descendant.Parent
        if parent and parent.Name == "Door_Model" then
            -- 检查是否已经有高亮
            if not descendant:FindFirstChild("DoorHighlight") then
                if isEnabled then
                    -- 创建Highlight用于填充高亮
                    local highlight = Instance.new("Highlight")
                    highlight.Name = "DoorHighlight"
                    highlight.Adornee = descendant
                    highlight.FillColor = HIGHLIGHT_CONFIG.FillColor
                    highlight.FillTransparency = HIGHLIGHT_CONFIG.FillTransparency
                    highlight.OutlineColor = HIGHLIGHT_CONFIG.OutlineColor
                    highlight.OutlineTransparency = HIGHLIGHT_CONFIG.OutlineTransparency
                    highlight.Enabled = isEnabled
                    highlight.Parent = descendant
                    
                    -- 创建BillboardGui显示门的名字
                    local billboardGui = Instance.new("BillboardGui")
                    billboardGui.Name = "DoorNameDisplay"
                    billboardGui.Adornee = descendant
                    billboardGui.Size = UDim2.new(0, 200, 0, 50)
                    billboardGui.StudsOffset = Vector3.new(0, 2, 0)
                    billboardGui.AlwaysOnTop = true
                    billboardGui.Enabled = isEnabled
                    billboardGui.Parent = descendant
                    
                    -- 创建TextLabel
                    local textLabel = Instance.new("TextLabel")
                    textLabel.Name = "DoorName"
                    textLabel.Size = UDim2.new(1, 0, 1, 0)
                    textLabel.BackgroundTransparency = 1
                    textLabel.Text = descendant.Name
                    textLabel.TextColor3 = Color3.new(1, 1, 1)
                    textLabel.TextSize = 24
                    textLabel.Font = Enum.Font.SourceSansBold
                    textLabel.Parent = billboardGui
                    
                end
            end
        end
    end
end)

-- 游戏加载时执行
game:GetService("Players").PlayerAdded:Connect(function(player)
    highlightDoors()
end)

-- 初始执行一次
highlightDoors()






local workspace = game:GetService("Workspace")
local UserInputService = game:GetService("UserInputService")

-- 等待Entities加载
local Entities = workspace:WaitForChild("Entities")

-- 功能默认打开
local isEnabled = true

-- 切换功能开关
local function toggleDelete()
    isEnabled = not isEnabled
end

-- 删除Warp对象函数
local function deleteWarp(child)
    if isEnabled and child.Name == "Warp" then
        child:Destroy()
    end
end

-- 监听Entities中添加的子对象
Entities.ChildAdded:Connect(deleteWarp)

-- 监听U键按下事件
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed and input.KeyCode == Enum.KeyCode.U then
        toggleDelete()
    end
end)





local Workspace = game:GetService("Workspace")
local UserInputService = game:GetService("UserInputService")

-- 功能开关状态
local isEnabled = true

-- 切换功能开关
local function toggleFeature()
    isEnabled = not isEnabled
end

-- 监听J键按下事件
UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if not gameProcessedEvent and input.KeyCode == Enum.KeyCode.J then
        toggleFeature()
    end
end)

local function removeModel(modelName)

    if not isEnabled then
        return
    end
    
    for _, descendant in ipairs(Workspace:GetDescendants()) do
        
        if descendant:IsA("Model") and descendant.Name == modelName then
            descendant:Destroy()
        end
    end
end

Workspace.DescendantAdded:Connect(function(descendant)
    if isEnabled and descendant:IsA("Model") and descendant.Name == "LockerMimicNew" then
        descendant:Destroy()
    end
end)

removeModel("LockerMimicNew")





local Lighting = game:GetService("Lighting")
local RunService = game:GetService("RunService")
local brightLoop

function FullBrught()
	local isEnabled = true
	local originalSettings = {}

	-- 保存原始光照设置
	local function saveOriginalSettings()
		originalSettings.Brightness = Lighting.Brightness
		originalSettings.ClockTime = Lighting.ClockTime
		originalSettings.FogEnd = Lighting.FogEnd
		originalSettings.GlobalShadows = Lighting.GlobalShadows
		originalSettings.OutdoorAmbient = Lighting.OutdoorAmbient
	end

	-- 恢复原始光照设置
	local function restoreOriginalSettings()
		if originalSettings.Brightness then
			Lighting.Brightness = originalSettings.Brightness
			Lighting.ClockTime = originalSettings.ClockTime
			Lighting.FogEnd = originalSettings.FogEnd
			Lighting.GlobalShadows = originalSettings.GlobalShadows
			Lighting.OutdoorAmbient = originalSettings.OutdoorAmbient
		end
	end

	local function brightFunc()
		if isEnabled then
			Lighting.Brightness = 2
			Lighting.ClockTime = 14
			Lighting.FogEnd = 100000
			Lighting.GlobalShadows = false
			Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
		end
	end

	local function toggleFullBrught()
		isEnabled = not isEnabled

		if isEnabled then
			if brightLoop then
				brightLoop:Disconnect()
			end
			brightLoop = RunService.RenderStepped:Connect(brightFunc)
		else
			if brightLoop then
				brightLoop:Disconnect()
				brightLoop = nil
			end
			restoreOriginalSettings()
		end
	end

	-- 初始化
	saveOriginalSettings()
	if brightLoop then
		brightLoop:Disconnect()
	end
	brightLoop = RunService.RenderStepped:Connect(brightFunc)

	-- 监听T键按下事件
	local UserInputService = game:GetService("UserInputService")
	UserInputService.InputBegan:Connect(function(input, gameProcessed)
		if not gameProcessed and input.KeyCode == Enum.KeyCode.T then
			toggleFullBrught()
		end
	end)
end
FullBrught()





local Workspace = game:GetService("Workspace")
local UserInputService = game:GetService("UserInputService")

-- 全局开关状态
local isEnabled = true
-- 存储原始设置的表
local originalPromptSettings = {}

-- 设置单个ProximityPrompt为瞬间交互或恢复原始设置
local function setupInstantPrompt(prompt)
    if prompt:IsA("ProximityPrompt") then
        -- 如果是首次处理此prompt，保存其原始设置
        if not originalPromptSettings[prompt] then
            originalPromptSettings[prompt] = {
                HoldDuration = prompt.HoldDuration,
                RequiresLineOfSight = prompt.RequiresLineOfSight,
                MaxActivationDistance = prompt.MaxActivationDistance
            }
        end

        -- 根据开关状态应用设置
        if isEnabled then
            local original = originalPromptSettings[prompt]
            prompt.HoldDuration = 0 -- 瞬间交互
            prompt.RequiresLineOfSight = original.RequiresLineOfSight
            prompt.MaxActivationDistance = original.MaxActivationDistance
        else
            -- 恢复原始设置
            local original = originalPromptSettings[prompt]
            prompt.HoldDuration = original.HoldDuration
            prompt.RequiresLineOfSight = original.RequiresLineOfSight
            prompt.MaxActivationDistance = original.MaxActivationDistance
        end
    end
end

-- 递归遍历并设置所有ProximityPrompt
local function setupAllPrompts(parent)
    -- 设置当前层级的ProximityPrompt
    for _, child in ipairs(parent:GetChildren()) do
        setupInstantPrompt(child)
    end

    -- 递归处理子层级
    for _, child in ipairs(parent:GetChildren()) do
        if child:IsA("Instance") then
            setupAllPrompts(child)
        end
    end
end

-- 切换功能开关
local function toggleInstantPrompt()
    isEnabled = not isEnabled
    -- 重新应用所有设置
    setupAllPrompts(Workspace)
end

-- 监听新添加的对象
Workspace.DescendantAdded:Connect(function(descendant)
    setupInstantPrompt(descendant)
end)

-- 监听P键按下事件
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed and input.KeyCode == Enum.KeyCode.P then
        toggleInstantPrompt()
    end
end)

-- 初始设置所有已存在的ProximityPrompt
setupAllPrompts(Workspace)






local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local speaker = Players.LocalPlayer
local Char = speaker.Character or workspace:FindFirstChild(speaker.Name)
local Human = Char and Char:FindFirstChildWhichIsA("Humanoid")
local DEFAULT_WALK_SPEED = Human and Human.WalkSpeed or 16  -- 默认步行速度
local isEnabled = true  -- 功能开关状态
local connections = {}  -- 存储连接

-- 更新步行速度
local function WalkSpeedChange()
	if isEnabled and Char and Human then
		Human.WalkSpeed = 35
	elseif Char and Human then
		Human.WalkSpeed = DEFAULT_WALK_SPEED
	end
end

-- 切换功能开关
local function toggleWalkSpeed()
	isEnabled = not isEnabled
	WalkSpeedChange()
end

-- 初始化函数
local function init()
	-- 确保Character和Humanoid存在
	if not Char then
		Char = speaker.Character or speaker.CharacterAdded:Wait()
	end
	
	if not Human then
		Human = Char:WaitForChild("Humanoid")
		DEFAULT_WALK_SPEED = Human.WalkSpeed
	end
	
	-- 连接H键开关
	connections.input = UserInputService.InputBegan:Connect(function(input, gameProcessed)
		if not gameProcessed and input.KeyCode == Enum.KeyCode.H then
			toggleWalkSpeed()
		end
	end)
	
	-- 监听角色添加事件
	connections.characterAdded = speaker.CharacterAdded:Connect(function(nChar)
		Char = nChar
		Human = nChar:WaitForChild("Humanoid")
		WalkSpeedChange()
		
		-- 断开旧的WalkSpeed变更连接
		if connections.walkSpeedChanged then
			connections.walkSpeedChanged:Disconnect()
		end
		
		-- 监听WalkSpeed变更
		connections.walkSpeedChanged = Human:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
			if isEnabled then
				Human.WalkSpeed = 35
			end
		end)
	end)
	
	-- 监听WalkSpeed变更
	connections.walkSpeedChanged = Human:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
		if isEnabled then
			Human.WalkSpeed = 35
		end
	end)
	
	-- 应用初始速度
	WalkSpeedChange()
	
end

-- 运行初始化
init()

-- 清理函数
local function cleanUp()
	for _, conn in pairs(connections) do
		if conn and typeof(conn) == "RBXScriptConnection" then
			conn:Disconnect()
		end
	end
end

-- 游戏关闭时清理
game:BindToClose(cleanUp)

speaker.AncestryChanged:Connect(function()
	if not speaker:IsDescendantOf(game) then
		cleanUp()
	end
end)





-- 引入必要的服务
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local SoundService = game:GetService("SoundService")

-- 创建提示音
local function createNotificationSound()
    local sound = Instance.new("Sound")
    sound.Name = "NotificationSound"
    sound.SoundId = "rbxassetid://1467026019"
    sound.Volume = 0.5
    sound.Parent = SoundService
    return sound
end

local notificationSound = createNotificationSound()

-- 等待Entities加载
local Entities = Workspace:WaitForChild("Entities", 10)

if not Entities then
    warn("无法找到Entities文件夹，脚本将无法正常工作")
    return
end

-- 功能开关状态 (默认为打开)
local isEnabled = true

-- 切换功能开关
local function toggleEnabled()
    isEnabled = not isEnabled
    local statusMessage = isEnabled and "已启用" or "已禁用"
    notifyPlayers("A60检测" .. statusMessage)
end

-- 监听L键按下事件
UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if not gameProcessedEvent and input.KeyCode == Enum.KeyCode.M then
        toggleEnabled()
    end
end)

-- 提示玩家函数
local function notifyPlayers(message)
    -- 播放提示音
    notificationSound:Play()

    for _, player in ipairs(Players:GetPlayers()) do
        if player:FindFirstChild("PlayerGui") then
            local playerGui = player.PlayerGui
            local screenSize = playerGui.AbsoluteSize

            -- 创建通知容器
            local notification = Instance.new("ScreenGui")
            notification.Name = "A60Notification"
            notification.Parent = playerGui
            notification.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

            -- 创建背景框架
            local background = Instance.new("Frame")
            background.Size = UDim2.new(0.6, 0, 0.12, 0)
            -- 根据屏幕大小调整位置
            background.Position = UDim2.new(0.2, 0, screenSize.Y > 720 and 0.8 or 0.7)
            background.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
            background.BackgroundTransparency = 0.2
            background.BorderSizePixel = 2
            background.BorderColor3 = Color3.fromRGB(255, 255, 255)
            background.CornerRadius = UDim2.new(0, 10)
            background.Parent = notification

            -- 创建消息文本
            local messageLabel = Instance.new("TextLabel")
            -- 动态调整字体大小
            local textSize = screenSize.Y > 720 and 24 or 18
            messageLabel.Size = UDim2.new(1, 0, 0.7, 0)
            messageLabel.Position = UDim2.new(0, 0, 0, 0)
            messageLabel.BackgroundTransparency = 1
            messageLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            messageLabel.Font = Enum.Font.SourceSansBold
            messageLabel.TextSize = textSize
            messageLabel.Text = message
            messageLabel.Parent = background

            -- 创建倒计时条
            local timerBar = Instance.new("Frame")
            timerBar.Size = UDim2.new(1, 0, 0.1, 0)
            timerBar.Position = UDim2.new(0, 0, 0.9, 0)
            timerBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            timerBar.Parent = background

            -- 创建倒计时文本
            local timerLabel = Instance.new("TextLabel")
            timerLabel.Size = UDim2.new(1, 0, 0.2, 0)
            timerLabel.Position = UDim2.new(0, 0, 0.7, 0)
            timerLabel.BackgroundTransparency = 1
            timerLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            timerLabel.Font = Enum.Font.SourceSansBold
            timerLabel.TextSize = textSize - 4
            timerLabel.Text = "3秒后消失"
            timerLabel.Parent = background

            -- 淡入动画
            local fadeInTween = TweenService:Create(
                background,
                TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {BackgroundTransparency = 0.2}
            )
            fadeInTween:Play()

            -- 倒计时和淡出动画
            local duration = 3
            local startTime = tick()

            spawn(function()
                while tick() - startTime < duration do
                    local elapsed = tick() - startTime
                    local remaining = duration - elapsed
                    local progress = elapsed / duration

                    -- 更新倒计时条
                    timerBar.Size = UDim2.new(1 - progress, 0, 0.1, 0)

                    -- 更新倒计时文本
                    timerLabel.Text = string.format("%.1f秒后消失", remaining)

                    wait(0.1)
                end

                -- 淡出动画
                local fadeOutTween = TweenService:Create(
                    background,
                    TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.In),
                    {BackgroundTransparency = 1}
                )
                fadeOutTween:Play()
                fadeOutTween.Completed:Wait()

                -- 移除通知
                notification:Destroy()
            end)
        end
    end
end

-- 检查Ao是否已经存在
local function checkForATwoo()
    if not isEnabled then return end
    local atwoo = Entities:FindFirstChild("APoopy")
    if atwoo then
        notifyPlayers("警告: A60已出现!")
    end
end

-- 监听ChildAdded事件
Entities.ChildAdded:Connect(function(child)
    if isEnabled and child.Name == "APoopy" then
        notifyPlayers("警告: A60已出现!")
    end
end)

-- 监听ChildRemoved事件
Entities.ChildRemoved:Connect(function(child)
    if isEnabled and child.Name == "APoopy" then
        notifyPlayers("提示: A60已消失!")
    end
end)

-- 初始检查
checkForATwoo()

-- 显示初始状态信息
print("A60检测已加载")
print("功能状态: 已启用")
print("按M键切换开关状态")





-- 引入必要的服务
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local SoundService = game:GetService("SoundService")

-- 创建提示音
local function createNotificationSound()
    local sound = Instance.new("Sound")
    sound.Name = "NotificationSound"
    sound.SoundId = "rbxassetid://1467026019"
    sound.Volume = 0.5
    sound.Parent = SoundService
    return sound
end

local notificationSound = createNotificationSound()

-- 等待Entities加载
local Entities = Workspace:WaitForChild("Entities", 10)

if not Entities then
    warn("无法找到Entities文件夹，脚本将无法正常工作")
    return
end

-- 功能开关状态 (默认为打开)
local isEnabled = true

-- 切换功能开关
local function toggleEnabled()
    isEnabled = not isEnabled
    local statusMessage = isEnabled and "已启用" or "已禁用"
    notifyPlayers("A200检测" .. statusMessage)
end

-- 监听L键按下事件
UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if not gameProcessedEvent and input.KeyCode == Enum.KeyCode.L then
        toggleEnabled()
    end
end)

-- 提示玩家函数
local function notifyPlayers(message)
    -- 播放提示音
    notificationSound:Play()

    for _, player in ipairs(Players:GetPlayers()) do
        if player:FindFirstChild("PlayerGui") then
            local playerGui = player.PlayerGui
            local screenSize = playerGui.AbsoluteSize

            -- 创建通知容器
            local notification = Instance.new("ScreenGui")
            notification.Name = "A200Notification"
            notification.Parent = playerGui
            notification.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

            -- 创建背景框架
            local background = Instance.new("Frame")
            background.Size = UDim2.new(0.6, 0, 0.12, 0)
            -- 根据屏幕大小调整位置
            background.Position = UDim2.new(0.2, 0, screenSize.Y > 720 and 0.8 or 0.7)
            background.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
            background.BackgroundTransparency = 0.2
            background.BorderSizePixel = 2
            background.BorderColor3 = Color3.fromRGB(255, 255, 255)
            background.CornerRadius = UDim2.new(0, 10)
            background.Parent = notification

            -- 创建消息文本
            local messageLabel = Instance.new("TextLabel")
            -- 动态调整字体大小
            local textSize = screenSize.Y > 720 and 24 or 18
            messageLabel.Size = UDim2.new(1, 0, 0.7, 0)
            messageLabel.Position = UDim2.new(0, 0, 0, 0)
            messageLabel.BackgroundTransparency = 1
            messageLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            messageLabel.Font = Enum.Font.SourceSansBold
            messageLabel.TextSize = textSize
            messageLabel.Text = message
            messageLabel.Parent = background

            -- 创建倒计时条
            local timerBar = Instance.new("Frame")
            timerBar.Size = UDim2.new(1, 0, 0.1, 0)
            timerBar.Position = UDim2.new(0, 0, 0.9, 0)
            timerBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            timerBar.Parent = background

            -- 创建倒计时文本
            local timerLabel = Instance.new("TextLabel")
            timerLabel.Size = UDim2.new(1, 0, 0.2, 0)
            timerLabel.Position = UDim2.new(0, 0, 0.7, 0)
            timerLabel.BackgroundTransparency = 1
            timerLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            timerLabel.Font = Enum.Font.SourceSansBold
            timerLabel.TextSize = textSize - 4
            timerLabel.Text = "3秒后消失"
            timerLabel.Parent = background

            -- 淡入动画
            local fadeInTween = TweenService:Create(
                background,
                TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {BackgroundTransparency = 0.2}
            )
            fadeInTween:Play()

            -- 倒计时和淡出动画
            local duration = 3
            local startTime = tick()

            spawn(function()
                while tick() - startTime < duration do
                    local elapsed = tick() - startTime
                    local remaining = duration - elapsed
                    local progress = elapsed / duration

                    -- 更新倒计时条
                    timerBar.Size = UDim2.new(1 - progress, 0, 0.1, 0)

                    -- 更新倒计时文本
                    timerLabel.Text = string.format("%.1f秒后消失", remaining)

                    wait(0.1)
                end

                -- 淡出动画
                local fadeOutTween = TweenService:Create(
                    background,
                    TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.In),
                    {BackgroundTransparency = 1}
                )
                fadeOutTween:Play()
                fadeOutTween.Completed:Wait()

                -- 移除通知
                notification:Destroy()
            end)
        end
    end
end

-- 检查ATwoo是否已经存在
local function checkForATwoo()
    if not isEnabled then return end
    local atwoo = Entities:FindFirstChild("ATwoo")
    if atwoo then
        notifyPlayers("警告: A200已出现!")
    end
end

-- 监听ChildAdded事件
Entities.ChildAdded:Connect(function(child)
    if isEnabled and child.Name == "ATwoo" then
        notifyPlayers("警告: A200已出现!")
    end
end)

-- 监听ChildRemoved事件
Entities.ChildRemoved:Connect(function(child)
    if isEnabled and child.Name == "ATwoo" then
        notifyPlayers("提示: A200已消失!")
    end
end)

-- 初始检查
checkForATwoo()

-- 显示初始状态信息
print("A200检测已加载")
print("功能状态: 已启用")
print("按L键切换开关状态")
