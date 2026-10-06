local Obsidian = loadstring(game:HttpGet("https://raw.githubusercontent.com/catminetry/Obsidian/refs/heads/main/Source.luau"))()

local Window = Obsidian:CreateWindow({
    Title       = "Obsidian 示例",
    SubTitle    = "v1.0.0",
    Size        = UDim2.fromOffset(660, 560),
    Theme       = "Black",                          -- 内置主题，见 README
    Sounds      = true,                             -- false 关闭音效；也可传 { Click = "rbxassetid://..." }
    Confirmation = true,                            -- 点关闭时二次确认（默认开启）
    Keybind     = Enum.KeyCode.RightControl,        -- 按 右Ctrl 显示/隐藏整个界面（可选，填 nil 关闭）
    Config      = {
        Enabled  = true,                            -- 开启 writefile 配置持久化
        Folder   = "Obsidian",                      -- 保存目录
        File     = "Config",                        -- 保存文件名
        AutoSave = true,                            -- 数值变化后自动保存
    },
})

-- ============================ 标签页一：基础组件 ============================
local Main    = Window:Tab("基础")
local General = Main:Section("通用组件")

General:Toggle({
    Title    = "启用脚本",
    Default  = true,
    Callback = function(v)
        print("[Obsidian] 启用脚本 =", v)
        Window:Notify({ Title = "开关", Content = v and "已开启" or "已关闭", Type = v and "Success" or "Warning" })
    end,
})

General:Button({
    Title    = "点击我",
    Callback = function()
        print("[Obsidian] 按钮被点击")
        Window:Notify({ Title = "按钮", Content = "你点了一下按钮", Type = "Info" })
    end,
})

General:Slider({
    Title    = "速度",
    Min      = 0,
    Max      = 200,
    Default  = 60,
    Decimals = 0,
    Suffix   = " spd",
    Callback = function(v) print("[Obsidian] 速度 =", v) end,
})

General:Slider({
    Title    = "透明度（带小数）",
    Min      = 0,
    Max      = 1,
    Default  = 0.5,
    Step     = 0.05,
    Suffix   = "",
    Callback = function(v) print("[Obsidian] 透明度 =", v) end,
})

General:Dropdown({
    Title   = "难度",
    Options = { "简单", "普通", "困难", "地狱" },
    Default = "普通",
    Callback = function(v) print("[Obsidian] 难度 =", v) end,
})

General:Keybind({
    Title    = "功能按键",
    Default  = Enum.KeyCode.F,
    Callback = function(k) print("[Obsidian] 已绑定 =", k.Name) end,
    Pressed  = function(k) print("[Obsidian] 按下了 =", k.Name) end,
})

General:TextBox({
    Title       = "自定义文本",
    Placeholder = "在这里输入...",
    Default     = "hello world",
    Callback    = function(t) print("[Obsidian] 输入 =", t) end,
})

General:Colorpicker({
    Title    = "颜色",
    Default  = Color3.fromRGB(86, 144, 255),
    Callback = function(c) print("[Obsidian] 颜色 =", tostring(c)) end,
})

-- ============================ 标签页二：文本与提示 ============================
local Extra = Window:Tab("更多")
local Info  = Extra:Section("信息")

Info:Label({ Text = "这是一行说明文字" })
Info:Label({ Text = "这是居中的文字", Align = Enum.TextXAlignment.Center })
Info:Paragraph({ Content = "这是一段会自动换行的长文本，Obsidian 会根据文本长度自动计算高度，支持多行显示，\n也可以用 \\n 手动换行。" })
Info:Divider({ Title = "分割线" })
Info:Warn({ Title = "警告", Content = "这里是一条警告信息", Type = "Warning" })
Info:Warn({ Title = "错误", Content = "这里是一条错误信息", Type = "Error" })
Info:Warn({ Title = "成功", Content = "操作成功完成", Type = "Success" })
Info:Warn({ Title = "提示", Content = "这里是一条普通提示", Type = "Info" })

-- ============================ 通知 ============================
local Notif = Extra:Section("通知")
Notif:Button({ Title = "成功通知", Callback = function() Window:Notify({ Title = "成功", Content = "操作已完成！", Type = "Success", Duration = 3 }) end })
Notif:Button({ Title = "警告通知", Callback = function() Window:Notify({ Title = "警告", Content = "请注意这个提示", Type = "Warning", Duration = 3 }) end })
Notif:Button({ Title = "错误通知", Callback = function() Window:Notify({ Title = "错误", Content = "出现了一个错误", Type = "Error", Duration = 4 }) end })
Notif:Button({ Title = "普通通知", Callback = function() Window:Notify({ Title = "信息", Content = "一条普通通知", Type = "Info", Duration = 2.5 }) end })

-- ============================ 主题切换 ============================
local ThemeSec = Extra:Section("主题")
ThemeSec:Dropdown({
    Title   = "切换主题",
    Options = { "Black", "Blue", "Red", "Crimson", "Emerald", "Green", "Violet", "Purple", "Gold", "Cyan", "White", "Pink", "Mono" },
    Default = "Black",
    Callback = function(name)
        Window:SetTheme(name)
        Window:Notify({ Title = "主题", Content = "已切换到 " .. name, Type = "Success", Duration = 1.5 })
    end,
})

-- ============================ 配置 ============================
local ConfigSec = Extra:Section("配置")
ConfigSec:Button({ Title = "立即保存配置", Callback = function()
    Window:SaveConfig()
    Window:Notify({ Title = "配置", Content = "已保存到 writefile", Type = "Success", Duration = 2 })
end })
ConfigSec:Button({ Title = "重置配置", Callback = function() Window:ResetConfig() end })
ConfigSec:Button({ Title = "打印所有 Flags", Callback = function()
    for k, v in pairs(Window:GetFlags()) do print("[Obsidian] " .. k .. " =", v) end
    Window:Notify({ Title = "Flags", Content = "已打印到控制台", Type = "Info", Duration = 2 })
end })

-- ============================ 窗口控制 ============================
local WinSec = Extra:Section("窗口")
WinSec:Button({ Title = "最小化窗口", Callback = function() Window:Minimize() end })
WinSec:Button({ Title = "恢复窗口", Callback = function() Window:Restore() end })
WinSec:Button({ Title = "隐藏界面（右Ctrl 显示）", Callback = function() Window:Hide() end })
WinSec:Button({ Title = "关闭窗口（会二次确认）", Callback = function() Window:RequestClose() end })

-- 获取某个组件对象并动态修改（示例）
local toggle = Window:GetElement("启用脚本")
if toggle then
    -- toggle:Set(false)   -- 可直接在代码里设置开关状态
end

print("[Obsidian] 示例菜单构建完成！")
