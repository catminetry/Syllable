game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Syllable",
        Text = "Script loading...",
        Duration = 3
    })

local function createGODPart()
    local part = Instance.new("Part")
    part.Size = Vector3.new(100, 1, 100)
    part.Name = "GOD"
    part.Parent = game.Workspace
    part.CFrame = CFrame.new(-234.13714599609375, 206.11968994140625, 28.109851837158203)
    part.Anchored = true
    print("GOD part created")
end
createGODPart()


local Players = game:GetService("Players")
local character = Players.LocalPlayer.Character
local targetPosition = Vector3.new(-235.09442138671875, 228.0357666015625, 23.750064849853516)

        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
        

game:GetService("Lighting").Atmosphere.Enabled = false


local Keybind = Instance.new("ScreenGui")
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
Frame.Size = UDim2.new(0, 199, 0, 339)
Frame.Active = true
Frame.Draggable = true

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

TextButton.Parent = Label
TextButton.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.901356757, 0, -0.0179646816, 0)
TextButton.Size = UDim2.new(0, 19, 0, 21)
TextButton.Font = Enum.Font.SourceSansBold
TextButton.Text = "X"
TextButton.TextColor3 = Color3.fromRGB(165, 0, 0)
TextButton.TextSize = 14.000
TextButton.MouseButton1Click:Connect(function()
    Keybind.Enabled = false
end)

UIListLayout.Parent = Frame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

Adoor.Name = "Adoor"
Adoor.Parent = Frame
Adoor.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Adoor.BorderColor3 = Color3.fromRGB(0, 0, 0)
Adoor.BorderSizePixel = 0
Adoor.Position = UDim2.new(0, 0, 0.151079133, 0)
Adoor.Size = UDim2.new(0, 199, 0, 21)
Adoor.Font = Enum.Font.SourceSans
Adoor.Text = "Door esp       [G]"
Adoor.TextColor3 = Color3.fromRGB(255, 0, 4)
Adoor.TextSize = 14.000

Blocker.Name = "Blocker"
Blocker.Parent = Frame
Blocker.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Blocker.BorderColor3 = Color3.fromRGB(0, 0, 0)
Blocker.BorderSizePixel = 0
Blocker.Position = UDim2.new(0, 0, 0.302158266, 0)
Blocker.Size = UDim2.new(0, 199, 0, 21)
Blocker.Font = Enum.Font.SourceSans
Blocker.Text = "Locker esp  [R]"
Blocker.TextColor3 = Color3.fromRGB(255, 0, 4)
Blocker.TextSize = 14.000

Ccoin.Name = "Ccoin"
Ccoin.Parent = Frame
Ccoin.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Ccoin.BorderColor3 = Color3.fromRGB(0, 0, 0)
Ccoin.BorderSizePixel = 0
Ccoin.Position = UDim2.new(0, 0, 0.453237414, 0)
Ccoin.Size = UDim2.new(0, 199, 0, 21)
Ccoin.Font = Enum.Font.SourceSans
Ccoin.Text = "Coin(Pile) esp   [K]"
Ccoin.TextColor3 = Color3.fromRGB(255, 0, 4)
Ccoin.TextSize = 14.000

Dfb.Name = "Dfb"
Dfb.Parent = Frame
Dfb.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Dfb.BorderColor3 = Color3.fromRGB(0, 0, 0)
Dfb.BorderSizePixel = 0
Dfb.Position = UDim2.new(0, 0, 0.453237414, 0)
Dfb.Size = UDim2.new(0, 199, 0, 21)
Dfb.Font = Enum.Font.SourceSans
Dfb.Text = "Fullbright   [T]"
Dfb.TextColor3 = Color3.fromRGB(255, 0, 4)
Dfb.TextSize = 14.000

Ews.Name = "Ews"
Ews.Parent = Frame
Ews.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Ews.BorderColor3 = Color3.fromRGB(0, 0, 0)
Ews.BorderSizePixel = 0
Ews.Position = UDim2.new(0, 0, 0.453237414, 0)
Ews.Size = UDim2.new(0, 199, 0, 21)
Ews.Font = Enum.Font.SourceSans
Ews.Text = "Loopspeed(35)   [H]"
Ews.TextColor3 = Color3.fromRGB(255, 0, 4)
Ews.TextSize = 14.000

FWA.Name = "FWA"
FWA.Parent = Frame
FWA.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
FWA.BorderColor3 = Color3.fromRGB(0, 0, 0)
FWA.BorderSizePixel = 0
FWA.Position = UDim2.new(0, 0, 0.453237414, 0)
FWA.Size = UDim2.new(0, 199, 0, 21)
FWA.Font = Enum.Font.SourceSans
FWA.Text = "Warn A60   [M]"
FWA.TextColor3 = Color3.fromRGB(255, 0, 4)
FWA.TextSize = 14.000

Gwaa.Name = "Gwaa"
Gwaa.Parent = Frame
Gwaa.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Gwaa.BorderColor3 = Color3.fromRGB(0, 0, 0)
Gwaa.BorderSizePixel = 0
Gwaa.Position = UDim2.new(0, 0, 0.453237414, 0)
Gwaa.Size = UDim2.new(0, 199, 0, 21)
Gwaa.Font = Enum.Font.SourceSans
Gwaa.Text = "Warn A200   [L]"
Gwaa.TextColor3 = Color3.fromRGB(255, 0, 4)
Gwaa.TextSize = 14.000

Htsp.Name = "Htsp"
Htsp.Parent = Frame
Htsp.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Htsp.BorderColor3 = Color3.fromRGB(0, 0, 0)
Htsp.BorderSizePixel = 0
Htsp.Position = UDim2.new(0, 0, 0.453237414, 0)
Htsp.Size = UDim2.new(0, 199, 0, 21)
Htsp.Font = Enum.Font.SourceSans
Htsp.Text = "InstantPP   [P]"
Htsp.TextColor3 = Color3.fromRGB(255, 0, 4)
Htsp.TextSize = 14.000

ID70.Name = "ID70"
ID70.Parent = Frame
ID70.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ID70.BorderColor3 = Color3.fromRGB(0, 0, 0)
ID70.BorderSizePixel = 0
ID70.Position = UDim2.new(0, 0, 0.453237414, 0)
ID70.Size = UDim2.new(0, 199, 0, 21)
ID70.Font = Enum.Font.SourceSans
ID70.Text = "Delete A70   [J]"
ID70.TextColor3 = Color3.fromRGB(255, 0, 4)
ID70.TextSize = 14.000

JD25.Name = "JD25"
JD25.Parent = Frame
JD25.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
JD25.BorderColor3 = Color3.fromRGB(0, 0, 0)
JD25.BorderSizePixel = 0
JD25.Position = UDim2.new(0, 0, 0.453237414, 0)
JD25.Size = UDim2.new(0, 199, 0, 21)
JD25.Font = Enum.Font.SourceSans
JD25.Text = "Delete A25   [U]"
JD25.TextColor3 = Color3.fromRGB(255, 0, 4)
JD25.TextSize = 14.000

KD90.Name = "KD90"
KD90.Parent = Frame
KD90.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
KD90.BorderColor3 = Color3.fromRGB(0, 0, 0)
KD90.BorderSizePixel = 0
KD90.Position = UDim2.new(0, 0, 0.453237414, 0)
KD90.Size = UDim2.new(0, 199, 0, 21)
KD90.Font = Enum.Font.SourceSans
KD90.Text = "Delete A90"
KD90.TextColor3 = Color3.fromRGB(255, 0, 4)
KD90.TextSize = 14.000

LD90B.Name = "LD90B"
LD90B.Parent = Frame
LD90B.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
LD90B.BorderColor3 = Color3.fromRGB(0, 0, 0)
LD90B.BorderSizePixel = 0
LD90B.Position = UDim2.new(0, 0, 0.453237414, 0)
LD90B.Size = UDim2.new(0, 199, 0, 21)
LD90B.Font = Enum.Font.SourceSans
LD90B.Text = "Delete A90b"
LD90B.TextColor3 = Color3.fromRGB(255, 0, 4)
LD90B.TextSize = 14.000

Oply.Name = "Oply"
Oply.Parent = Frame
Oply.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Oply.BorderColor3 = Color3.fromRGB(0, 0, 0)
Oply.BorderSizePixel = 0
Oply.Position = UDim2.new(0, 0, 0.453237414, 0)
Oply.Size = UDim2.new(0, 199, 0, 21)
Oply.Font = Enum.Font.SourceSans
Oply.Text = "Hello!"
Oply.TextColor3 = Color3.fromRGB(0, 170, 0)
Oply.TextSize = 14.000
Oply.Text = "Hello! " .. game.Players.LocalPlayer.Name

Mzlo.Name = "Mzlo"
Mzlo.Parent = Frame
Mzlo.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
Mzlo.BorderColor3 = Color3.fromRGB(0, 0, 0)
Mzlo.BorderSizePixel = 0
Mzlo.Size = UDim2.new(0, 199, 0, 21)
Mzlo.Font = Enum.Font.SourceSans
Mzlo.Text = "Close This UI [Q]"
Mzlo.TextColor3 = Color3.fromRGB(255, 255, 255)
Mzlo.TextSize = 14.000

Nzpd.Name = "Nzpd"
Nzpd.Parent = Frame
Nzpd.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
Nzpd.BorderColor3 = Color3.fromRGB(0, 0, 0)
Nzpd.BorderSizePixel = 0
Nzpd.Size = UDim2.new(0, 199, 0, 21)
Nzpd.Font = Enum.Font.SourceSans
Nzpd.Text = "[Beta]Auto rooms [N]"
Nzpd.TextColor3 = Color3.fromRGB(255, 255, 255)
Nzpd.TextSize = 14.000



	local UserInputService = game:GetService("UserInputService")
	local Players = game:GetService("Players")
	
	local player = Players.LocalPlayer
	local playerGui = player:WaitForChild("PlayerGui")
	local keybindGui = Keybind
	
	UserInputService.InputBegan:Connect(function(input, gameProcessed)
	    if gameProcessed then return end
	    if input.KeyCode == Enum.KeyCode.Q then
	        keybindGui.Enabled = not keybindGui.Enabled
	    end
	end)



local SoundsFolder = Instance.new("Folder")
SoundsFolder.Parent = game.Workspace
SoundsFolder.Name = "SoundsFolder"
local function getGitSoundId(GithubSoundPath: string, AssetName: string): Sound
    local Url = GithubSoundPath

    if not isfile(AssetName..".mp3") then 
        writefile(AssetName..".mp3", game:HttpGet(Url)) 
    end

    local Sound = Instance.new("Sound")
    Sound.SoundId = getcustomasset(AssetName..".mp3", true)
    return Sound 
end

local C = getGitSoundId("https://github.com/LLGCAllIWantIsYou/green-fog/blob/main/Warning.MP3?raw=true", "WARN")
        C.Name = "WARN"
      C.Parent = SoundsFolder
      C.Volume = 0.6
      C.Pitch = 0.5

      local B = getGitSoundId("https://github.com/LLGCAllIWantIsYou/green-fog/blob/main/mixkit-cowbell-sharp-hit-1743.mp3?raw=true", "NOTE")
        B.Name = "NOTE"
      B.Parent = SoundsFolder
      B.Volume = 0.6
      B.Pitch = 0.5



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

speaker.AncestryChanged:Connect(function()
	if not speaker:IsDescendantOf(game) then
		cleanUp()
	end
end)
game:GetService("Players").LocalPlayer.PlayerGui.A902:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.A90:Destroy()

warn("Loaded👍")



local Workspace = game:GetService("Workspace")
local targetName = "APoopy"
local entitiesFolder = Workspace.Entities

-- 检测目标出现
local function onChildAdded(child)
    if child.Name == targetName then
        C:Play()


game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "a60",
        Text = "hide.！！！",
        Duration = 3
    })






    end
end

-- 检测目标消失
local function onChildRemoved(child)
    if child.Name == targetName then
        

B:Play()

game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "a60",
        Text = "hide.！！！",
        Duration = 3
    })
    end
end

local function initializeDetection()
        -- 检查是否已存在
        if entitiesFolder:FindFirstChild(targetName) then
            C:Play()


game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "a60",
        Text = "hide.！！！",
        Duration = 3
    })
        end

        entitiesFolder.ChildAdded:Connect(onChildAdded)
        entitiesFolder.ChildRemoved:Connect(onChildRemoved)
end
warn("Loaded👍aaaaaaaaaa")
initializeDetection()
warn("Loaded👍aaaaaaaaaa")





local Workspace = game:GetService("Workspace")
local targetName = "ATwoo"
local entitiesFolder = Workspace.Entities

-- 检测目标出现
local function onChildAdded(child)
    if child.Name == targetName then
        C:Play()



game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "a200",
        Text = "hide.！！！",
        Duration = 3
    })
    end
end

-- 检测目标消失
local function onChildRemoved(child)
    if child.Name == targetName then
        B:Play()


game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "a200",
        Text = "hide.！！！",
        Duration = 3
    })
            
    end
end

-- 初始检查并设置事件监听
local function initializeDetection()
        -- 初始检查是否已存在
        if entitiesFolder:FindFirstChild(targetName) then
            C:Play()


            game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "a200",
        Text = "hide.！！！",
        Duration = 3
    })
        
        end

        -- 连接事件监听器
        entitiesFolder.ChildAdded:Connect(onChildAdded)
        entitiesFolder.ChildRemoved:Connect(onChildRemoved)
end

initializeDetection()





local player = game.Players.LocalPlayer
-- 服务初始化
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- 本地玩家引用
local player = Players.LocalPlayer
local character = player.Character
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
local humanoid = character:WaitForChild("Humanoid")
local camera = workspace.CurrentCamera

-- 功能开关
local isActive = false
local toggleKey = Enum.KeyCode.N

-- 配置参数
local a = workspace.GeneratedRooms
local functionInterval = 0.03 -- 功能执行间隔（秒）
local interactionInterval = 0.03 -- 互动间隔（秒）
local lastFunctionTime = 0 -- 上次功能执行时间
local lastInteractionTime = 0 -- 上次互动时间


local a = workspace.GeneratedRooms
-- 获取必要的服务和变量
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local currRoomValue = ReplicatedStorage.Values.CurrRoom.Value

    local targetRoomNumber = currRoomValue - 1
    local targetRoom1 = a:FindFirstChild("Room_" .. targetRoomNumber)
    local Door_Model = targetRoom1.Door_Model



local function toggleFunction()
    isActive = not isActive
    print("功能" .. (isActive and "已启用" or "已禁用"))
end

--aaaaaaaaaaaaaaaaaaa


--===[[oooOOAOOooo]]===---
-- 调整视角朝向目标
local function lookAtTarget(targetPosition, targetRoom)
    if humanoidRootPart and targetPosition and targetRoom then
        -- 传送玩家到Door_Model.PlayerRoot
        local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")


local a = workspace.GeneratedRooms
-- 获取必要的服务和变量
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local currRoomValue = ReplicatedStorage.Values.CurrRoom.Value

if a and currRoomValue then
    local targetRoomNumber = currRoomValue - 1
    local targetRoom = a:FindFirstChild("Room_" .. targetRoomNumber)
    
    if targetRoom then
        local newPosition = targetRoom.Door_Model.PlayerRoot.CFrame
        humanoidRootPart.CFrame = newPosition
    
                    
end
end
        
        
        -- 调整视角
        local direction = (targetPosition - humanoidRootPart.Position).Unit
        local lookCFrame = CFrame.new(humanoidRootPart.Position, humanoidRootPart.Position + direction)
        humanoidRootPart.CFrame = lookCFrame
        camera.CFrame = lookCFrame
    end
end

-- 自动触发ProximityPrompt
local function triggerProximityPrompt(prompt)
    if prompt and prompt.Enabled and prompt.ActionText ~= "" then
        prompt:InputHoldBegin()
        task.wait(prompt.HoldDuration)
        prompt:InputHoldEnd()
    end
end

-- 主功能循环
local function mainLoop(deltaTime)
    if not isActive then return end
    if not character or not humanoidRootPart then return end

    -- 获取当前房间
    local currRoomValue = ReplicatedStorage.Values.CurrRoom.Value
    if not a or not currRoomValue then return end

    -- 查找目标房间
    local targetRoomNumber = currRoomValue - 1
    local targetRoom = a:FindFirstChild("Room_" .. targetRoomNumber)
    if not targetRoom then return end

    -- 查找门把手和互动提示
    local doorModel = targetRoom:FindFirstChild("Door_Model")
    local door = doorModel and doorModel:FindFirstChild("Door")
    local knob = door and door:FindFirstChild("Knob") and door.Knob:FindFirstChild("Knob")
    local prompt = knob and knob:FindFirstChildOfClass("ProximityPrompt")

    -- 执行功能逻辑（控制传送速度）
    if knob and os.clock() - lastFunctionTime >= functionInterval then
        lookAtTarget(knob.Position, targetRoom)
        lastFunctionTime = os.clock()
    end

    -- 执行互动逻辑（控制互动速度）
    if prompt and os.clock() - lastInteractionTime >= interactionInterval then
        triggerProximityPrompt(prompt)
        lastInteractionTime = os.clock()
    end
end

-- 绑定快捷键
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed and input.KeyCode == toggleKey then
        toggleFunction()
    end
end)

-- 开始循环
RunService.Heartbeat:Connect(mainLoop)

-- 初始提示
print("按N键启用/禁用自动门互动功能")









--检测功能是否正常加载[👍]
--setclipboard("👍")
print("Loaded👍")


game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Syllable",
        Text = "Script loaded.",
        Duration = 3
    })
