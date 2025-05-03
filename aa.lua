-- Gui to Lua
-- Version: 3.2

-- Instances:

local TpGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Sure = Instance.new("TextButton")
local Name = Instance.new("TextBox")
local TextLabel = Instance.new("TextLabel")

--Properties:

TpGui.Name = "TpGui"
TpGui.Parent = game.CoreGui
TpGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = TpGui
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.5, 0, 0.5, 0)
Main.Size = UDim2.new(0, 200, 0, 150)

Sure.Name = "Sure"
Sure.Parent = Main
Sure.BackgroundColor3 = Color3.fromRGB(77, 255, 0)
Sure.BorderColor3 = Color3.fromRGB(0, 0, 0)
Sure.BorderSizePixel = 0
Sure.Position = UDim2.new(0.185000002, 0, 0.649999976, 0)
Sure.Size = UDim2.new(0, 127, 0, 41)
Sure.Font = Enum.Font.SourceSans
Sure.Text = "TP"
Sure.TextColor3 = Color3.fromRGB(0, 0, 0)
Sure.TextSize = 14.000

Name.Name = "Name"
Name.Parent = Main
Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Name.BorderColor3 = Color3.fromRGB(0, 0, 0)
Name.BorderSizePixel = 0
Name.Position = UDim2.new(0.185000002, 0, 0.200000003, 0)
Name.Size = UDim2.new(0, 89, 0, 50)
Name.Font = Enum.Font.SourceSans
Name.PlaceholderText = "Enter name"
Name.Text = ""
Name.TextColor3 = Color3.fromRGB(0, 0, 0)
Name.TextSize = 14.000

TextLabel.Parent = Main
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 204, 0)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.680000007, 0, 0.200000003, 0)
TextLabel.Size = UDim2.new(0, 28, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Status"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14.000

-- Scripts:

local function UWLF_fake_script() -- Main.DragScript 
	local script = Instance.new('LocalScript', Main)

	script.Parent.Active = true
	script.Parent.Draggable = true
end
coroutine.wrap(UWLF_fake_script)()
local function SWWG_fake_script() -- Main.TeleportScript 
	local script = Instance.new('LocalScript', Main)

	local Players = game:GetService("Players")
	local LocalPlayer = Players.LocalPlayer
	
	local mainFrame = script.Parent
	local nameTextBox = mainFrame:WaitForChild("Name")
	local sureButton = mainFrame:WaitForChild("Sure") -- 假设你有一个名为 "Sure" 的 TextButton
	local status = mainFrame.TextLabel
	
	sureButton.MouseButton1Click:Connect(function()
	    local targetPlayerName = nameTextBox.Text
	    local targetPlayer = Players:FindFirstChild(targetPlayerName)
	
	    local localPlayerCharacter = LocalPlayer.Character
	    if not localPlayerCharacter or not localPlayerCharacter:FindFirstChild("HumanoidRootPart") then
			status.Text = "ERROR"
			wait(1.5)
			status.Text = "Status"
	        return
	    end
	
	    if targetPlayer and targetPlayer ~= LocalPlayer then
	        local targetCharacter = targetPlayer.Character
	        if targetCharacter and targetCharacter:FindFirstChild("HumanoidRootPart") then
	            local targetRootPart = targetCharacter.HumanoidRootPart
	            local localRootPart = localPlayerCharacter.HumanoidRootPart
	
	            -- 计算目标位置，稍微在目标玩家前面一点
	            local targetPosition = targetRootPart.CFrame * CFrame.new(0, 0, 0.2) -- 向前移动 5 个单位
	
	            -- 传送本地玩家
	            localPlayerCharacter:PivotTo(targetPosition)
	        else
	            
	        end
	    elseif targetPlayer == LocalPlayer then
			status.Text = "ERROR"
			wait(1.5)
			status.Text = "Status"
	    else
			status.Text = "ERROR"
			wait(1.5)
			status.Text = "Status"
	    end
	end)
	
	
end
coroutine.wrap(SWWG_fake_script)()
