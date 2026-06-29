-- Grow a Garden 2 HUB | Key System | Made by ducky

local KEY_LINK = "https://www.roblox.com.ml/communities/413448652328/vex"   -- << Paste your key link here
local VALID_KEY = "YOUR-KEY-HERE"   -- << Paste your valid key here

-- Services
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local localPlayer = Players.LocalPlayer
local playerGui = localPlayer:WaitForChild("PlayerGui")

-- Remove existing GUI if it exists
if playerGui:FindFirstChild("GrowAGarden2HUB") then
    playerGui:FindFirstChild("GrowAGarden2HUB"):Destroy()
end

-- ScreenGui
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "GrowAGarden2HUB"
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = playerGui

-- Main Frame
local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0, 420, 0, 220)
MainFrame.Position = UDim2.new(0.5, -210, 0.5, -110)
MainFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 38)
MainFrame.BorderSizePixel = 0
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.Parent = ScreenGui

Instance.new("UICorner", MainFrame).CornerRadius = UDim.new(0, 14)

local MainStroke = Instance.new("UIStroke", MainFrame)
MainStroke.Color = Color3.fromRGB(45, 45, 74)
MainStroke.Thickness = 1

-- Title Bar
local TitleBar = Instance.new("Frame")
TitleBar.Size = UDim2.new(1, 0, 0, 38)
TitleBar.BackgroundColor3 = Color3.fromRGB(15, 52, 96)
TitleBar.BorderSizePixel = 0
TitleBar.Parent = MainFrame

Instance.new("UICorner", TitleBar).CornerRadius = UDim.new(0, 14)

-- Fix bottom corners of title bar
local TitleFix = Instance.new("Frame")
TitleFix.Size = UDim2.new(1, 0, 0.5, 0)
TitleFix.Position = UDim2.new(0, 0, 0.5, 0)
TitleFix.BackgroundColor3 = Color3.fromRGB(15, 52, 96)
TitleFix.BorderSizePixel = 0
TitleFix.Parent = TitleBar

local TitleLabel = Instance.new("TextLabel")
TitleLabel.Text = "🌱  Grow a Garden 2 HUB"
TitleLabel.Size = UDim2.new(1, -110, 1, 0)
TitleLabel.Position = UDim2.new(0, 14, 0, 0)
TitleLabel.BackgroundTransparency = 1
TitleLabel.TextColor3 = Color3.fromRGB(200, 214, 240)
TitleLabel.TextSize = 14
TitleLabel.Font = Enum.Font.GothamBold
TitleLabel.TextXAlignment = Enum.TextXAlignment.Left
TitleLabel.Parent = TitleBar

local BadgeLabel = Instance.new("TextLabel")
BadgeLabel.Text = "KEY SYSTEM"
BadgeLabel.Size = UDim2.new(0, 90, 0, 22)
BadgeLabel.Position = UDim2.new(1, -100, 0.5, -11)
BadgeLabel.BackgroundColor3 = Color3.fromRGB(13, 42, 69)
BadgeLabel.TextColor3 = Color3.fromRGB(126, 203, 255)
BadgeLabel.TextSize = 10
BadgeLabel.Font = Enum.Font.GothamBold
BadgeLabel.Parent = TitleBar

Instance.new("UICorner", BadgeLabel).CornerRadius = UDim.new(1, 0)

-- Body
local Body = Instance.new("Frame")
Body.Size = UDim2.new(1, -28, 1, -52)
Body.Position = UDim2.new(0, 14, 0, 46)
Body.BackgroundTransparency = 1
Body.Parent = MainFrame

-- Key Label
local KeyLabel = Instance.new("TextLabel")
KeyLabel.Text = "ENTER YOUR KEY"
KeyLabel.Size = UDim2.new(1, 0, 0, 18)
KeyLabel.BackgroundTransparency = 1
KeyLabel.TextColor3 = Color3.fromRGB(107, 122, 153)
KeyLabel.TextSize = 11
KeyLabel.Font = Enum.Font.GothamBold
KeyLabel.TextXAlignment = Enum.TextXAlignment.Left
KeyLabel.Parent = Body

-- Key Input
local KeyInput = Instance.new("TextBox")
KeyInput.PlaceholderText = "Paste your key here..."
KeyInput.Text = ""
KeyInput.Size = UDim2.new(1, 0, 0, 36)
KeyInput.Position = UDim2.new(0, 0, 0, 22)
KeyInput.BackgroundColor3 = Color3.fromRGB(15, 15, 30)
KeyInput.TextColor3 = Color3.fromRGB(200, 214, 240)
KeyInput.PlaceholderColor3 = Color3.fromRGB(58, 58, 92)
KeyInput.TextSize = 13
KeyInput.Font = Enum.Font.Code
KeyInput.ClearTextOnFocus = false
KeyInput.Parent = Body

Instance.new("UICorner", KeyInput).CornerRadius = UDim.new(0, 8)

local InputStroke = Instance.new("UIStroke", KeyInput)
InputStroke.Color = Color3.fromRGB(45, 45, 74)
InputStroke.Thickness = 1

-- Button Row
local BtnRow = Instance.new("Frame")
BtnRow.Size = UDim2.new(1, 0, 0, 36)
BtnRow.Position = UDim2.new(0, 0, 0, 66)
BtnRow.BackgroundTransparency = 1
BtnRow.Parent = Body

local BtnLayout = Instance.new("UIListLayout", BtnRow)
BtnLayout.FillDirection = Enum.FillDirection.Horizontal
BtnLayout.Padding = UDim.new(0, 10)

-- Check Key Button
local CheckBtn = Instance.new("TextButton")
CheckBtn.Text = "🔑  Check Key"
CheckBtn.Size = UDim2.new(0.5, -5, 1, 0)
CheckBtn.BackgroundColor3 = Color3.fromRGB(26, 58, 110)
CheckBtn.TextColor3 = Color3.fromRGB(126, 203, 255)
CheckBtn.TextSize = 13
CheckBtn.Font = Enum.Font.GothamBold
CheckBtn.Parent = BtnRow

Instance.new("UICorner", CheckBtn).CornerRadius = UDim.new(0, 8)

local CheckStroke = Instance.new("UIStroke", CheckBtn)
CheckStroke.Color = Color3.fromRGB(42, 80, 144)
CheckStroke.Thickness = 1

-- Copy Link Button
local CopyBtn = Instance.new("TextButton")
CopyBtn.Text = "🔗  Copy Link"
CopyBtn.Size = UDim2.new(0.5, -5, 1, 0)
CopyBtn.BackgroundColor3 = Color3.fromRGB(26, 58, 42)
CopyBtn.TextColor3 = Color3.fromRGB(92, 224, 160)
CopyBtn.TextSize = 13
CopyBtn.Font = Enum.Font.GothamBold
CopyBtn.Parent = BtnRow

Instance.new("UICorner", CopyBtn).CornerRadius = UDim.new(0, 8)

local CopyStroke = Instance.new("UIStroke", CopyBtn)
CopyStroke.Color = Color3.fromRGB(42, 96, 64)
CopyStroke.Thickness = 1

-- Status Bar
local StatusBar = Instance.new("Frame")
StatusBar.Size = UDim2.new(1, 0, 0, 34)
StatusBar.Position = UDim2.new(0, 0, 0, 112)
StatusBar.BackgroundColor3 = Color3.fromRGB(15, 15, 30)
StatusBar.Parent = Body

Instance.new("UICorner", StatusBar).CornerRadius = UDim.new(0, 8)

local StatusStroke = Instance.new("UIStroke", StatusBar)
StatusStroke.Color = Color3.fromRGB(45, 45, 74)
StatusStroke.Thickness = 1

local StatusDot = Instance.new("Frame")
StatusDot.Size = UDim2.new(0, 8, 0, 8)
StatusDot.Position = UDim2.new(0, 12, 0.5, -4)
StatusDot.BackgroundColor3 = Color3.fromRGB(58, 58, 92)
StatusDot.Parent = StatusBar

Instance.new("UICorner", StatusDot).CornerRadius = UDim.new(1, 0)

local StatusText = Instance.new("TextLabel")
StatusText.Text = "Waiting for key validation..."
StatusText.Size = UDim2.new(1, -32, 1, 0)
StatusText.Position = UDim2.new(0, 28, 0, 0)
StatusText.BackgroundTransparency = 1
StatusText.TextColor3 = Color3.fromRGB(107, 122, 153)
StatusText.TextSize = 12
StatusText.Font = Enum.Font.Gotham
StatusText.TextXAlignment = Enum.TextXAlignment.Left
StatusText.Parent = StatusBar

-- Divider
local Divider = Instance.new("Frame")
Divider.Size = UDim2.new(1, 0, 0, 1)
Divider.Position = UDim2.new(0, 0, 0, 154)
Divider.BackgroundColor3 = Color3.fromRGB(45, 45, 74)
Divider.BorderSizePixel = 0
Divider.Parent = Body

-- Footer
local FooterLeft = Instance.new("TextLabel")
FooterLeft.Text = "Made by ducky"
FooterLeft.Size = UDim2.new(0.5, 0, 0, 20)
FooterLeft.Position = UDim2.new(0, 0, 0, 160)
FooterLeft.BackgroundTransparency = 1
FooterLeft.TextColor3 = Color3.fromRGB(58, 58, 92)
FooterLeft.TextSize = 11
FooterLeft.Font = Enum.Font.Gotham
FooterLeft.TextXAlignment = Enum.TextXAlignment.Left
FooterLeft.Parent = Body

local FooterRight = Instance.new("TextLabel")
FooterRight.Text = "v2.0"
FooterRight.Size = UDim2.new(0.5, 0, 0, 20)
FooterRight.Position = UDim2.new(0.5, 0, 0, 160)
FooterRight.BackgroundTransparency = 1
FooterRight.TextColor3 = Color3.fromRGB(45, 45, 74)
FooterRight.TextSize = 10
FooterRight.Font = Enum.Font.Gotham
FooterRight.TextXAlignment = Enum.TextXAlignment.Right
FooterRight.Parent = Body

-- Button Logic
CheckBtn.MouseButton1Click:Connect(function()
    local entered = KeyInput.Text

    if entered == "" then
        StatusDot.BackgroundColor3 = Color3.fromRGB(58, 58, 92)
        StatusText.TextColor3 = Color3.fromRGB(107, 122, 153)
        StatusText.Text = "Please enter a key first."
    elseif entered == VALID_KEY then
        StatusDot.BackgroundColor3 = Color3.fromRGB(92, 224, 106)
        StatusText.TextColor3 = Color3.fromRGB(92, 224, 106)
        StatusText.Text = "Key valid! Access granted. ✅"
        -- Load your main script here
    else
        StatusDot.BackgroundColor3 = Color3.fromRGB(224, 92, 92)
        StatusText.TextColor3 = Color3.fromRGB(224, 92, 92)
        StatusText.Text = "Invalid key. Get your key using the link."
    end
end)

CopyBtn.MouseButton1Click:Connect(function()
    setclipboard(KEY_LINK)
    local originalText = CopyBtn.Text
    CopyBtn.Text = "✅  Copied!"
    task.wait(2)
    CopyBtn.Text = originalText
end)
