local Keybind = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Frame = Instance.new("Frame")
local Label = Instance.new("TextLabel")
local UIListLayout = Instance.new("UIListLayout")
local door = Instance.new("TextLabel")
local locker = Instance.new("TextLabel")
local coin = Instance.new("TextLabel")
local clo = Instance.new("TextLabel")
local upd = Instance.new("TextLabel")

--Properties:

Keybind.Name = "Keybind"
Keybind.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Keybind.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = Keybind
Main.AnchorPoint = Vector2.new(0.5, 0)
Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.BackgroundTransparency = 1.000
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.5, 0, 0.446921438, 0)
Main.Size = UDim2.new(0, 100, 0, 100)

Frame.Parent = Main
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(-5.80000019, 0, -0.25, 0)
Frame.Size = UDim2.new(0, 199, 0, 139)

Label.Name = "Label"
Label.Parent = Frame
Label.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
Label.BorderColor3 = Color3.fromRGB(0, 0, 0)
Label.BorderSizePixel = 0
Label.Size = UDim2.new(0, 199, 0, 21)
Label.Font = Enum.Font.SourceSans
Label.Text = "Syllable(Rooms: Revisited)"
Label.TextColor3 = Color3.fromRGB(255, 255, 255)
Label.TextSize = 14.000

UIListLayout.Parent = Frame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

door.Name = "door"
door.Parent = Frame
door.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
door.BorderColor3 = Color3.fromRGB(0, 0, 0)
door.BorderSizePixel = 0
door.Position = UDim2.new(0, 0, 0.151079133, 0)
door.Size = UDim2.new(0, 199, 0, 21)
door.Font = Enum.Font.SourceSans
door.Text = "Door esp       [G]"
door.TextColor3 = Color3.fromRGB(255, 0, 4)
door.TextSize = 14.000

locker.Name = "locker"
locker.Parent = Frame
locker.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
locker.BorderColor3 = Color3.fromRGB(0, 0, 0)
locker.BorderSizePixel = 0
locker.Position = UDim2.new(0, 0, 0.302158266, 0)
locker.Size = UDim2.new(0, 199, 0, 21)
locker.Font = Enum.Font.SourceSans
locker.Text = "Locker esp  [R]"
locker.TextColor3 = Color3.fromRGB(255, 0, 4)
locker.TextSize = 14.000

coin.Name = "coin"
coin.Parent = Frame
coin.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
coin.BorderColor3 = Color3.fromRGB(0, 0, 0)
coin.BorderSizePixel = 0
coin.Position = UDim2.new(0, 0, 0.453237414, 0)
coin.Size = UDim2.new(0, 199, 0, 21)
coin.Font = Enum.Font.SourceSans
coin.Text = "Coin(Pile) esp   [K]"
coin.TextColor3 = Color3.fromRGB(255, 0, 4)
coin.TextSize = 14.000

clo.Name = "clo"
clo.Parent = Frame
clo.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
clo.BorderColor3 = Color3.fromRGB(0, 0, 0)
clo.BorderSizePixel = 0
clo.Size = UDim2.new(0, 199, 0, 21)
clo.Font = Enum.Font.SourceSans
clo.Text = "Close This UI [Q]"
clo.TextColor3 = Color3.fromRGB(255, 255, 255)
clo.TextSize = 14.000

upd.Name = "upd"
upd.Parent = Frame
upd.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
upd.BorderColor3 = Color3.fromRGB(0, 0, 0)
upd.BorderSizePixel = 0
upd.Size = UDim2.new(0, 199, 0, 21)
upd.Font = Enum.Font.SourceSans
upd.Text = "More update soon..."
upd.TextColor3 = Color3.fromRGB(255, 255, 255)
upd.TextSize = 14.000

-- Scripts:

local function JHQCHBW_fake_script() -- Keybind.ToggleKeybindOnQ 
	local script = Instance.new('LocalScript', Keybind)

	local UserInputService = game:GetService("UserInputService")
	local Players = game:GetService("Players")
	
	local player = Players.LocalPlayer
	local playerGui = player:WaitForChild("PlayerGui")
	local keybindGui = script.Parent
	
	UserInputService.InputBegan:Connect(function(input, gameProcessed)
	    if gameProcessed then return end
	    if input.KeyCode == Enum.KeyCode.Q then
	        keybindGui.Enabled = not keybindGui.Enabled
	    end
	end)
	
	
end
coroutine.wrap(JHQCHBW_fake_script)()





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
