-- Gui to Lua
-- Version: 3.2

-- Instances:
game:GetService("StarterGui"):SetCore("SendNotification",{ 	Title = "Rc7",  	

Text = "Made By Team z4trox",

})

game:GetService("StarterGui"):SetCore("SendNotification",{ 	

Title = "Loading...",  	

Text = "Password is teamfatxd",

})

wait(3)

game:GetService("StarterGui"):SetCore("SendNotification",{ 	

Title = "Loaded!",  	

Text = "Have fun!",

})
local rc7 = Instance.new("ScreenGui")
local mini = Instance.new("ImageButton")
local passpage = Instance.new("ImageLabel")
local submit = Instance.new("TextButton")
local user = Instance.new("TextBox")
local pass = Instance.new("TextBox")
local close = Instance.new("TextButton")
local minimize = Instance.new("TextButton")
local mainpage = Instance.new("ImageLabel")
local input = Instance.new("TextBox")
local output = Instance.new("TextBox")
local exe = Instance.new("TextButton")
local clear = Instance.new("TextButton")
local open = Instance.new("TextButton")
local roxploit = Instance.new("TextButton")
local dex = Instance.new("TextButton")
local close_2 = Instance.new("TextButton")
local minimize_2 = Instance.new("TextButton")

--Properties:

rc7.Name = "rc7"
rc7.Parent = game.CoreGui
rc7.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

mini.Name = "mini"
mini.Parent = rc7
mini.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
mini.BackgroundTransparency = 1.000
mini.BorderColor3 = Color3.fromRGB(0, 0, 0)
mini.BorderSizePixel = 0
mini.Position = UDim2.new(0, 0, 0.894399107, 0)
mini.Size = UDim2.new(0, 58, 0, 60)
mini.Visible = false
mini.Image = "http://www.roblox.com/asset/?id=14416021390"
mini.MouseButton1Down:connect(function()
	mainpage.Visible = true
mini.Visible = false
end)

passpage.Name = "passpage"
passpage.Parent = rc7
passpage.Active = true
passpage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
passpage.BorderColor3 = Color3.fromRGB(0, 0, 0)
passpage.BorderSizePixel = 0
passpage.Position = UDim2.new(0.171028033, 0, 0.178529739, 0)
passpage.Size = UDim2.new(0, 349, 0, 363)
passpage.Image = "rbxassetid://13695440070"

submit.Name = "submit"
submit.Parent = passpage
submit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
submit.BackgroundTransparency = 1.000
submit.BorderColor3 = Color3.fromRGB(0, 0, 0)
submit.BorderSizePixel = 0
submit.Position = UDim2.new(0.343839556, 0, 0.561983466, 0)
submit.Size = UDim2.new(0, 101, 0, 20)
submit.Font = Enum.Font.SourceSans
submit.Text = ""
submit.TextColor3 = Color3.fromRGB(0, 0, 0)
submit.TextSize = 14.000
submit.MouseButton1Down:connect(function()
	if pass.Text == "teamfatxd" then
		passpage.Visible = false
		mainpage.Visible = true
	else
		pass.Text = "Wrong Password!"
		wait(2)
		pass.Text = ""
	end
end)

user.Name = "user"
user.Parent = passpage
user.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
user.BackgroundTransparency = 1.000
user.BorderColor3 = Color3.fromRGB(0, 0, 0)
user.BorderSizePixel = 0
user.Position = UDim2.new(0.260744989, 0, 0.393939406, 0)
user.Size = UDim2.new(0, 160, 0, 21)
user.Font = Enum.Font.SourceSans
user.Text = "harkinian_hax"
user.TextColor3 = Color3.fromRGB(20, 212, 255)
user.TextSize = 14.000
user.TextWrapped = true

pass.Name = "pass"
pass.Parent = passpage
pass.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
pass.BackgroundTransparency = 1.000
pass.BorderColor3 = Color3.fromRGB(0, 0, 0)
pass.BorderSizePixel = 0
pass.Position = UDim2.new(0.261000007, 0, 0.479999989, 0)
pass.Size = UDim2.new(0, 160, 0, 21)
pass.Font = Enum.Font.SourceSans
pass.Text = ""
pass.TextColor3 = Color3.fromRGB(20, 212, 255)
pass.TextSize = 14.000
pass.TextWrapped = true

close.Name = "close"
close.Parent = passpage
close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
close.BackgroundTransparency = 1.000
close.BorderColor3 = Color3.fromRGB(0, 0, 0)
close.BorderSizePixel = 0
close.Position = UDim2.new(0.88252151, 0, 0, 0)
close.Size = UDim2.new(0, 41, 0, 24)
close.Font = Enum.Font.SourceSans
close.Text = ""
close.TextColor3 = Color3.fromRGB(0, 0, 0)
close.TextSize = 14.000
close.MouseButton1Down:connect(function()
	passpage.Visible = false
end)

minimize.Name = "minimize"
minimize.Parent = passpage
minimize.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
minimize.BackgroundTransparency = 1.000
minimize.BorderColor3 = Color3.fromRGB(0, 0, 0)
minimize.BorderSizePixel = 0
minimize.Position = UDim2.new(0.598853886, 0, 0, 0)
minimize.Size = UDim2.new(0, 41, 0, 24)
minimize.Font = Enum.Font.SourceSans
minimize.Text = ""
minimize.TextColor3 = Color3.fromRGB(0, 0, 0)
minimize.TextSize = 14.000

mainpage.Name = "mainpage"
mainpage.Parent = rc7
mainpage.Active = true
mainpage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
mainpage.BorderColor3 = Color3.fromRGB(0, 0, 0)
mainpage.BorderSizePixel = 0
mainpage.Position = UDim2.new(0.171028033, 0, 0.178529739, 0)
mainpage.Size = UDim2.new(0, 349, 0, 363)
mainpage.Visible = false
mainpage.Image = "http://www.roblox.com/asset/?id=128681323011046"

local scrollingFrame = Instance.new("ScrollingFrame")
scrollingFrame.Name = "scrollingFrame"
scrollingFrame.Parent = mainpage
scrollingFrame.BackgroundTransparency = 1
scrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
scrollingFrame.BorderSizePixel = 0
scrollingFrame.Position = UDim2.new(0.034, 0, 0.2, 0)
scrollingFrame.Size = UDim2.new(0, 296, 0, 200)
scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
scrollingFrame.ScrollBarThickness = 6
scrollingFrame.ScrollBarImageTransparency = 1
scrollingFrame.VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar

local input = Instance.new("TextBox")
input.Name = "input"
input.Parent = scrollingFrame
input.BackgroundTransparency = 1
input.BorderColor3 = Color3.fromRGB(0, 0, 0)
input.BorderSizePixel = 0
input.Size = UDim2.new(1, 0, 0, 200)
input.Position = UDim2.new(0, 0, 0, 5)
input.Font = Enum.Font.Code
input.MultiLine = true
input.Text = " "
input.TextColor3 = Color3.fromRGB(0, 0, 0)
input.TextSize = 14
input.TextWrapped = false
input.TextXAlignment = Enum.TextXAlignment.Left
input.TextYAlignment = Enum.TextYAlignment.Top
input.ClearTextOnFocus = false
input.ClipsDescendants = false

local padding = Instance.new("UIPadding")
padding.Parent = input
padding.PaddingTop = UDim.new(0, 10)
padding.PaddingLeft = UDim.new(0, 5)

local function updateCanvasSize()
    local textSize = input.TextBounds
    input.Size = UDim2.new(1, 0, 0, math.max(textSize.Y, 200))
    scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, input.Size.Y.Offset)
end

input:GetPropertyChangedSignal("Text"):Connect(updateCanvasSize)
input.Focused:Connect(updateCanvasSize)
input.FocusLost:Connect(updateCanvasSize)


exe.Name = "exe"
exe.Parent = mainpage
exe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
exe.BackgroundTransparency = 1
exe.BorderColor3 = Color3.fromRGB(0, 0, 0)
exe.BorderSizePixel = 0
exe.Position = UDim2.new(0.315186232, 0, 0.774104655, 0)
exe.Size = UDim2.new(0, 99, 0, 20)
exe.Font = Enum.Font.ArialBold
exe.Text = "Execute"
exe.TextColor3 = Color3.fromRGB(50, 110, 160)
exe.TextSize = 14.000
exe.TextTransparency = 1

output.Name = "output"
output.Parent = mainpage
output.Active = false
output.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
output.BorderColor3 = Color3.fromRGB(0, 0, 0)
output.BackgroundTransparency = 1
output.BorderSizePixel = 0
output.Position = UDim2.new(0.0343839526, 0, 0.845730007, 0)
output.Size = UDim2.new(0, 296, 0, 52)
output.Font = Enum.Font.Code
output.Text = ""
output.TextColor3 = Color3.fromRGB(0, 0, 0)
output.TextSize = 14.000
output.TextWrapped = true
output.TextXAlignment = Enum.TextXAlignment.Left
output.TextYAlignment = Enum.TextYAlignment.Top

exe.MouseButton1Down:connect(function()
    output.Text = ""
    
    local success, result = pcall(function()
        loadstring(input.Text)()
    end)

    if success then
        output.Text = "Script successfully executed!"
        output.TextColor3 = Color3.fromRGB(0, 0, 0)
        wait(2)
        output.Text = " "
    else
        output.Text = "Error: " .. result
        output.TextColor3 = Color3.fromRGB(255, 0, 0)
        warn("Error occurred during execution: " .. result)
        wait(5)
        output.Text = " "
    end
end)

clear.Name = "clear"
clear.Parent = mainpage
clear.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
clear.BackgroundTransparency = 1
clear.BorderColor3 = Color3.fromRGB(0, 0, 0)
clear.BorderSizePixel = 0
clear.Position = UDim2.new(0.598853886, 0, 0.774104655, 0)
clear.Size = UDim2.new(0, 99, 0, 20)
clear.Font = Enum.Font.ArialBold
clear.Text = "Clear"
clear.TextColor3 = Color3.fromRGB(50, 110, 160)
clear.TextSize = 14.000
clear.TextTransparency = 1  -- Make the text transparent
clear.MouseButton1Down:connect(function()
    input.Text = " "
end)

open.Name = "open"
open.Parent = mainpage
open.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
open.BackgroundTransparency = 1
open.BorderColor3 = Color3.fromRGB(0, 0, 0)
open.BorderSizePixel = 0
open.Position = UDim2.new(0.0343839526, 0, 0.774104655, 0)
open.Size = UDim2.new(0, 99, 0, 20)
open.Font = Enum.Font.ArialBold
open.Text = "Open"
open.TextColor3 = Color3.fromRGB(50, 110, 160)
open.TextSize = 14.000
open.TextTransparency = 1
open.MouseButton1Down:connect(function()
   -- Create a ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "TeamForkGui"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create a Main Frame
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0.4, 0, 0.6, 0) -- 40% width, 60% height
mainFrame.Position = UDim2.new(0.3, 0, 0.2, 0) -- Centered
mainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30) -- Dark gray
mainFrame.BorderSizePixel = 0
mainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
mainFrame.Parent = screenGui

-- Enable Dragging
local dragging = false
local dragInput
local dragStart
local startPos

local function updateInput(input)
    local delta = input.Position - dragStart
    mainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

mainFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = mainFrame.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

mainFrame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement then
        dragInput = input
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if dragging and input == dragInput then
        updateInput(input)
    end
end)

-- Add UICorner for Rounded Edges
local mainFrameCorner = Instance.new("UICorner")
mainFrameCorner.CornerRadius = UDim.new(0, 10)
mainFrameCorner.Parent = mainFrame

-- Add a UIStroke for Borders
local mainFrameStroke = Instance.new("UIStroke")
mainFrameStroke.Thickness = 2
mainFrameStroke.Color = Color3.fromRGB(50, 50, 50)
mainFrameStroke.Parent = mainFrame

-- Add ScrollingFrame for Buttons
local buttonContainer = Instance.new("ScrollingFrame")
buttonContainer.Size = UDim2.new(1, -20, 0.8, -10) -- Leave padding
buttonContainer.Position = UDim2.new(0, 10, 0.2, 10)
buttonContainer.CanvasSize = UDim2.new(0, 0, 2, 0) -- Adjust for content
buttonContainer.BackgroundTransparency = 1
buttonContainer.ScrollBarImageColor3 = Color3.fromRGB(100, 100, 100)
buttonContainer.Parent = mainFrame

-- Add UIListLayout for Button Organization
local buttonLayout = Instance.new("UIListLayout")
buttonLayout.Padding = UDim.new(0, 10)
buttonLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
buttonLayout.Parent = buttonContainer

-- Add Title
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0.2, 0) -- 100% width, 20% height
title.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
title.Text = "Rc7 Script Tab"
title.TextColor3 = Color3.fromRGB(0, 255, 0) -- Bright green
title.Font = Enum.Font.SourceSansBold
title.TextSize = 24
title.AnchorPoint = Vector2.new(0.5, 0)
title.Position = UDim2.new(0.5, 0, 0, 0)
title.Parent = mainFrame

local titleCorner = Instance.new("UICorner")
titleCorner.CornerRadius = UDim.new(0, 10)
titleCorner.Parent = title

-- Helper Function to Create Buttons
local function createButton(text, callback)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0.9, 0, 0, 40)
    button.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    button.Text = text
    button.TextColor3 = Color3.fromRGB(0, 255, 0)
    button.Font = Enum.Font.SourceSansBold
    button.TextSize = 18
    button.Parent = buttonContainer

    local buttonCorner = Instance.new("UICorner")
    buttonCorner.CornerRadius = UDim.new(0, 10)
    buttonCorner.Parent = button

    local buttonStroke = Instance.new("UIStroke")
    buttonStroke.Thickness = 2
    buttonStroke.Color = Color3.fromRGB(0, 255, 0)
    buttonStroke.Parent = button

    button.MouseButton1Click:Connect(callback)

    button.MouseEnter:Connect(function()
        button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    end)

    button.MouseLeave:Connect(function()
        button.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    end)

    return button
end

-- Button Callbacks
createButton("Fling All", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/zqyDSUWX"))()
end)

createButton("Infinite Yield", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'), true))()
end)

createButton("Dex V5", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/RileyBeeRBLX1/script/refs/heads/main/DexV5.lua"))()
end)

createButton("Give Gears", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Ahma174/Gear-giver-1.8/refs/heads/main/Ui"))()
end)

createButton("K00p Gui", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/AB1FRY0n"))()  -- Updated link here
end)

createButton("MLG Gun", function()
    loadstring(game:HttpGet("https://gist.githubusercontent.com/zupersponge/8c39ed77f2817679294d70aff18d479d/raw/ed5e04b72c4fa77b8bf522d7275abf64ae585416/MLG%2520Gun%2520Script%2520ROBLOX"))()
end)

createButton("Grab Knife", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/retpirato/Roblox-Scripts/refs/heads/master/Grab%20Knife%20V4.lua"))()
end)

createButton("Fathom Hub", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/Y4AGJALY"))()
end)

createButton("c00lgui v23", function()
    loadstring(game:HttpGet("https://gist.githubusercontent.com/jointeamck/28a342b097091c2f0fac3f7ad03ff631/raw/b356a7e0cd1a9327098e73b6975977964106d78e/c00lgui%20v2.3%20deluxe", true))()
end)

createButton("Mr Bean JumpScare", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/PxeyZMnk"))()
end)

createButton("R15 TO R6", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/9BFcHqfK"))("Copyright SHON ECCS Co")
end)

-- Add "Super Ring Parts" Button
createButton("Super Ring Parts", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/cnPthPiGon/CM9/refs/heads/main/Super%20Ring%20Part%20V3%20Real%20FE%20Leak%20Finally"))()
end)

-- Add "SCP 096" Button
createButton("SCP 096", function()
    loadstring(game:HttpGet("https://pastefy.app/YsJgITXR/raw"))()
end)

-- Add "Chat Bypass" Button
createButton("Chat Bypass", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/synnyyy/synergy/additional/betterbypasser", true))()
end)

-- Add "Stigma V1" Button
createButton("Stigma V1", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/mG8XGpmD", true))()
end)

-- Add "Noot Noot" Button
createButton("Noot Noot", function()
    loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-NOOT-NOOT-9643"))()
end)

-- Add "Lightsaber" Button
createButton("Lightsaber", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/KdVq9EHW", true))()
end)

-- Add "c00lgui non fe" Button
createButton("c00lgui non fe", function()
    --[[ WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk! ]]
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AvaliOrgal/c00lgui/2ce5cd1af7ccf4da524abb2ca0b49026e7d2c7b6/c00l%20gui"))()
end)

-- Add "Obunga Jumpscare" Button
createButton("Obunga Jumpscare", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/T30pvP9M"))()
end)

-- Add "Jo1tar0 Leak Gui" Button
createButton("Jo1tar0 Leak Gui", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/BOSSJKL2/JOTAR0GUI/main/JO1TAR0GUI"))()
end)

-- Close Button
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0.1, 0, 0.1, 0)
closeButton.Position = UDim2.new(0.9, -10, 0, 10)
closeButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
closeButton.Text = "X"
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.Font = Enum.Font.SourceSansBold
closeButton.TextSize = 18
closeButton.Parent = mainFrame

local closeButtonCorner = Instance.new("UICorner")
closeButtonCorner.CornerRadius = UDim.new(0, 10)
closeButtonCorner.Parent = closeButton

closeButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)

end)

roxploit.Name = "roxploit"
roxploit.Parent = mainpage
roxploit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
roxploit.BackgroundTransparency = 1.000
roxploit.BorderColor3 = Color3.fromRGB(0, 0, 0)
roxploit.BorderSizePixel = 0
roxploit.Position = UDim2.new(0.904999971, 0, 0.799000025, 0)
roxploit.Size = UDim2.new(0, 29, 0, 29)
roxploit.Font = Enum.Font.SourceSans
roxploit.Text = ""
roxploit.TextColor3 = Color3.fromRGB(0, 0, 0)
roxploit.TextSize = 14.000
roxploit.MouseButton1Down:connect(function()
	Folder = game.Players.LocalPlayer.PlayerGui
script=Instance.new('LocalScript')

local a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z 
local A,B,C,D,F,E,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z 
local Aa,Ba,Ca,Da,Fa,Ea,Ga,Ha,Ia,Ja,Ka,La,Ma,Na,Oa,Pa,Qa,Ra,Sa,Ta,Ua,Va,Wa,Xa,Ya,Za 
local IntroSFX = nil 
local IntroDone,Toggle,taco = false 
local Folders, Selected, Banned, WayPoint = nil 
local CId = Instance.new("IntValue") CId.Value = 0 
local LPCId = Instance.new("IntValue") LPCId.Value = 0 
local SId = Instance.new("IntValue") 
SId.Value = 0 
local MId = Instance.new("IntValue") 
MId.Value = 0 
local MPId = Instance.new("IntValue") 
MPId.Value = 0 
local GId = Instance.new("IntValue") 
GId.Value = 0 
local GPId = Instance.new("IntValue") 
GPId.Value = 0 
local HId = Instance.new("IntValue") 
HId.Value = 0 
local HPId = Instance.new("IntValue") 
HPId.Value = 0 
local SDId = Instance.new("IntValue") 
SDId.Value = 0 
local WId = Instance.new("IntValue") WId.Value = 0 local WMId = Instance.new("IntValue") WMId.Value = 0 local LCId = Instance.new("IntValue") LCId.Value = 0 local TCId = Instance.new("IntValue") TCId.Value = 0 local MEId = Instance.new("IntValue") MEId.Value = 1 local MEPId = Instance.new("IntValue") MEPId.Value = 0 local SkyId = Instance.new("IntValue") SkyId.Value = 1 local SkypId = Instance.new("IntValue") SkypId.Value = 0 local TabId = Instance.new("IntValue") TabId.Value = 0 
local EmptySP = UDim2.new(0,0,0,0) 
local PrivateServer = false 

function Execute(f) return coroutine.resume(coroutine.create(function()f()end)) end 
function PlaySFX(SoundId,Volume,Pitch,Looped) 
	A=Instance.new("Sound",workspace) 
	A.PlayOnRemove = true 
	A.SoundId = "rbxassetid://" .. SoundId 
	A.Volume = Volume 
	A.Pitch = Pitch 
	A.Looped = Looped 
	A:Play() 
	return A 
end 
function Frame(parent,Size,Position) 
	B=Instance.new("Frame",parent)
	B.Size = Size 
	B.Position = Position 
	return B 
end 
function ScrollFrame(parent,Size,Position) B=Instance.new("ScrollingFrame",parent) B.Size = Size B.Position = Position B.ScrollBarThickness = 10 return B end 
function Label(parent,Text,Size,Position,value) C=Instance.new("TextLabel",parent) C.Size = Size C.Position = Position C.Text = Text C.BackgroundTransparency = 1 C.Font = "Legacy" C.TextColor3 = Color3.new(1,1,1) C.TextStrokeTransparency = 0.5 C.TextWrapped = true if value ~= nil then if value == 1 then C.Size = UDim2.new(1,-10,0,35) end C.Position = UDim2.new(0,0,0,35*value.Value) C.Style = "Custom" C.BackgroundColor3 = Color3.new(0,75/255,150/255) C.BackgroundTransparency = 0.85 C.BorderSizePixel = 0 value.Value = value.Value + 1 end return C end 
function Button(parent,Text,Size,Position,func,value) C=Instance.new("TextButton",parent) C.Size = Size C.Position = Position C.Text = Text C.Style = "RobloxButton" C.Font = "Legacy" C.TextColor3 = Color3.new(1,1,1) C.TextStrokeTransparency = 0.5 C.TextWrapped = true C.MouseButton1Click:connect(function() ypcall(function() PlaySFX(156785206,0.75,1.25); func() end) end) if value ~= nil then if Size == EmptySP then C.Size = UDim2.new(1,-10,0,35) end C.Position = UDim2.new(0,0,0,35*value.Value) C.Style = "Custom" C.BackgroundColor3 = Color3.new(0,75/255,150/255) C.BackgroundTransparency = 0.85 C.BorderSizePixel = 0 value.Value = value.Value + 1 end return C end 
function TextBox(parent,text,Size,Position) C = Instance.new("TextBox") C.Parent = parent C.Name = text C.Text = text if text == "ValueBox" then C.Text = "0" end C.Size = Size C.BackgroundColor3 = Color3.new(0,75/255,150/255) C.BackgroundTransparency = 0.85 C.BorderSizePixel = 0 C.Position = Position C.TextColor3 = Color3.new(1,1,1) C.TextStrokeTransparency = 0.5 C.Font = 2 C.FontSize = Enum.FontSize.Size12 C.TextWrapped = true return C end letters = { "a"; "b"; "c"; "d"; "e"; "f"; "g"; "h"; "i"; "j"; "k"; "l"; "m"; "n"; "o"; "p"; "q"; "r"; "s"; "t"; "u"; "v"; "w"; "x"; "y" ;"z"; " "; ":"; "/" } 
function CheckForNumbers(textbox) 
	for i = 1, #letters do 
		n = string.find(string.lower(textbox.Text), letters[i]) 
		if n ~= nil then 
			textbox.Text = string.sub(string.lower(textbox.Text), 1, n-1)..string.sub(string.lower(textbox.Text), n+1) 
		end 
	end 
end 
function NumTextBox(textbox) ypcall(function() Execute(function() wait(0.25) textbox.Changed:connect(function(property) if property == "Text" then CheckForNumbers(textbox) end end) end) end) end 
function TextUsedButton(parents,name,func,value,type) x=Frame(parents,UDim2.new(1,-10,0,35),UDim2.new(0,0,0,(35*value.Value))) x.BackgroundColor3 = Color3.new(0,75/255,150/255) x.BackgroundTransparency = 0.85 x.BorderSizePixel = 0 y=TextBox(x,"ValueBox",UDim2.new(1,-85,0,25),UDim2.new(0,5,0,5)) y.BackgroundColor3 = Color3.new(0,75/255,150/255) y.BackgroundTransparency = 0.85 y.BorderSizePixel = 0 if type ~= nil then NumTextBox(y) y.Text = type else y.Text = "" end z=Button(x,name,UDim2.new(0,70,0,25),UDim2.new(1,-75,0,5),function() if y.Text ~= "" and type ~= nil then func() else func() end end) z.BackgroundColor3 = Color3.new(0,75/255,150/255) z.BackgroundTransparency = 0.85 z.BorderSizePixel = 0 z.Style = "Custom" if value ~= nil then value.Value = value.Value + 1 end return x end 
function TextUsedLabel(parents,name,value,type) x=Frame(parents,UDim2.new(1,-10,0,35),UDim2.new(0,0,0,(35*value.Value))) x.BackgroundColor3 = Color3.new(0,75/255,150/255) x.BackgroundTransparency = 0.85 x.BorderSizePixel = 0 y=TextBox(x,"ValueBox",UDim2.new(1,-85,0,25),UDim2.new(0,80,0,5)) y.BackgroundColor3 = Color3.new(0,75/255,150/255) y.BackgroundTransparency = 0.85 y.BorderSizePixel = 0 if type ~= nil then NumTextBox(y) y.Text = type else y.Text = "" end z=Label(x,name,UDim2.new(0,70,0,25),UDim2.new(0,5,0,5)) z.BackgroundColor3 = Color3.new(0,75/255,150/255) z.BackgroundTransparency = 0.85 z.BorderSizePixel = 0 if value ~= nil then value.Value = value.Value + 1 end return x end 
function ToggleButton(parent,name,func1,func2,value) x=Frame(parent,UDim2.new(1,-10,0,35),UDim2.new(0,0,0,35*value.Value)) x.BackgroundColor3 = Color3.new(0,75/255,150/255) x.BackgroundTransparency = 0.85 z=Label(x,name,UDim2.new(1,-160,0,25),UDim2.new(0,5,0,5)) z.BackgroundColor3 = Color3.new(0,75/255,150/255) z.BackgroundTransparency = 0.85 y=Button(x,"On",UDim2.new(0,-70,0,25),UDim2.new(1,-80,0,5),function() func1() end) y.BackgroundTransparency = 0.85 y.BackgroundColor3 = Color3.new(0,75/255,150/255) y.Style = "Custom" y.Name = "On" g=Button(x,"Off",UDim2.new(0,-70,0,25),UDim2.new(1,-5,0,5),function() func2() end) g.BackgroundTransparency = 0.85 g.BackgroundColor3 = Color3.new(0,75/255,150/255) g.Style = "Custom" g.Name = "Off" if value ~= nil then value.Value = value.Value + 1 end return x end 
function ImageLabel(parent,Image,Size,Position) C = nil C=Instance.new("ImageLabel",parent) C.Image = "rbxassetid://" .. Image C.Size = Size C.Position = Position C.BackgroundTransparency = 1 return C end 
function ToggleMenu() if Toggle == true then PlaySFX(243152215,0.85,1) E:TweenPosition(UDim2.new(0.5,-250,-0.5,-175),"Out","Quad",.5,true) PlaySFX(145487017,0.85,1.1) L:TweenPosition(UDim2.new(0,0,1,-50),"Out","Quad",.25,true) Toggle = false else PlaySFX(243152215,0.85,1) E:TweenPosition(UDim2.new(0.5,-250,0.5,-175),"Out","Quad",.5,true) PlaySFX(145487017,0.85,1.1) L:TweenPosition(UDim2.new(0,-50,1,-50),"Out","Quad",.25,true) Toggle = true end end 
function AddTab(parent,tabparent,text,cValue) if cValue ~= nil then D=Frame(tabparent,UDim2.new(1,0,1,0),UDim2.new(0,0,0,0)) D.Transparency = 1 D.BorderSizePixel = 0 D.Name = text D.Visible = false if cValue.Value == 0 then D.Visible = true end Instance.new("IntValue",D).Name = "IsATab" C=Button(parent,text,UDim2.new(1,-10,0,35),UDim2.new(0,5,0,5+(40*cValue.Value)),function() for i, v in pairs(tabparent:GetChildren()) do if v.Name == text then v.Visible = true else v.Visible = false end end end) C.Style = "Custom" C.BackgroundColor3 = Color3.new(0,75/255,150/255) C.BackgroundTransparency = 0.85 C.BorderSizePixel = 0 Instance.new("IntValue",C).Name = "IsATabButton" if cValue ~= nil then cValue.Value = cValue.Value + 1 end if parent.Parent.ClassName == "ScrollingFrame" then parent.Parent.CanvasSize = UDim2.new(0,0,0,5+(40*(cValue.Value))) end return D end end 
function ClearFolder(Folder) if Folder ~= nil then for i,v in pairs(Folder:GetChildren()) do v:Remove() end end end 
function CreateFolder(parent,name) 
	C=Instance.new("Folder",parent) 
	C.Name = name 
	return C 
	end 
function AddValue(Folder,name) 
	if Folder ~= nil then 
		C=Instance.new("StringValue")
		 C.Name = name 
		 C.Value = name 
		 C.Parent = 
		 Folder 
	end 
end 
function RemoveValue(Folder,name) 
	if Folder ~= nil then 
		if Folder:FindFirstChild(name) ~= nil then 
			Folder:FindFirstChild(name):Remove() 
		end 
	end 
end 
function VerifyValue(Folder,name) 
	if Folder ~= nil then 
		if Folder:FindFirstChild(name) ~= nil then 
			return true 
		else 
			return false 
		end 
	end 
end 
local Mouse 
function AddHotkey(key,func) Mouse = game.Players.LocalPlayer:GetMouse() if Mouse ~= nil then Mouse.KeyDown:connect(function(Key) if Key == string.lower(string.char(key)) then func() end end) else Mouse = game.Players.LocalPlayer:GetMouse() end end local STR = " : False" 
function SetPlayerList(parent) ClearFolder(parent) ypcall(function() for i,v in pairs(game.Players:GetChildren()) do if VerifyValue(Selected,v.Name) then STR = " : True" else STR = " : False" end C=Button(parent,v.Name .. STR,UDim2.new(1,-20,0,35),UDim2.new(0,5,0,5+(40*(i-1))),function() if VerifyValue(Selected,v.Name) then RemoveValue(Selected,v.Name) else AddValue(Selected,v.Name) end SetPlayerList(parent) end) C.Style = "Custom" C.BackgroundColor3 = Color3.new(0,75/255,150/255) C.BackgroundTransparency = 0.85 C.BorderSizePixel = 0 if parent.ClassName == "ScrollingFrame" then parent.CanvasSize = UDim2.new(0,0,0,5+(40*(i))) end end end) end 
function SetBannedList(parent) ClearFolder(parent) for i,v in pairs(Banned:GetChildren()) do C=Button(parent,v.Name,UDim2.new(1,-20,0,35),UDim2.new(0,5,0,5+(40*(i-1))),function() if VerifyValue(Banned,v.Name) then RemoveValue(Banned,v.Name) end end) C.Style = "Custom" C.BackgroundColor3 = Color3.new(0,75/255,150/255) C.BackgroundTransparency = 0.85 C.BorderSizePixel = 0 if parent.ClassName == "ScrollingFrame" then parent.CanvasSize = UDim2.new(0,0,0,5+(40*(i))) end end end function IsLocalPlayer(aname) if game.Players ~= nil then if game.Players.LocalPlayer ~= nil then if game.Players.LocalPlayer.Name == aname then return true else return false end end end end local ContentProvider = game:GetService("ContentProvider"); local function LoadAssets(AssetList) for _, AssetId in pairs(AssetList) do ContentProvider:Preload("rbxassetid://" .. AssetId); end end LoadAssets({364328150,278201073,145487017,278208523,278208523}) local PRT = Instance.new("ScreenGui",Folder) Label(PRT,"Currently Preloading Data, Please Wait!",UDim2.new(1,0,0,20),UDim2.new(0,0,0,0)) while (ContentProvider.RequestQueueSize > 0) do wait(); end if Folder:FindFirstChild("GlobalData") ~= nil then for i,v in pairs(Folder:FindFirstChild("GlobalData"):GetChildren()) do v.Parent = Folder end Folder:FindFirstChild("GlobalData"):Remove() end for i,v in pairs(Folder:GetChildren()) do if v.Name == "GearData" or v.Name == "HatData" or v.Name == "MemeData" or v.Name == "SkyData" then for k,c in pairs(v:GetChildren()) do LoadAssets({c.Value}) end end end PRT:Remove() function spamColor(v) if v.ClassName == ("BasePart") then v.BrickColor = BrickColor.Random() else for a,b in pairs(v:GetChildren()) do spamColor(b) end end end function UnAnchore(v) if v.ClassName == ("BasePart") then v.Anchored = false else for a,b in pairs(v:GetChildren()) do if game.Players:FindFirstChild(v.Name) == nil then UnAnchore(b) end end end end function Anchore(v) if v.ClassName == ("BasePart") then v.Anchored = true else for a,b in pairs(v:GetChildren()) do if game.Players:FindFirstChild(v.Name) == nil then Anchore(b) end end end end function clearW(v) v:ClearAllChildren() end function GenerateMenuPart2() local Color = Color3.new(0,75/255,150/255) X=AddTab(M,N,"Hat Giver",TabId) X.Size = UDim2.new(1,10,1,0) T=AddTab(M,N,"Music Player",TabId) T.Size = UDim2.new(1,10,1,0) local MPitch=TextUsedLabel(T,"Pitch",MId,1) local MVolume=TextUsedLabel(T,"Volume",MId,1) local MIds=TextUsedLabel(T,"SoundId",MId,0) if MPitch:FindFirstChild("ValueBox") ~= nil and MVolume:FindFirstChild("ValueBox") ~= nil then MPitch:FindFirstChild("ValueBox").Text = 1 MVolume:FindFirstChild("ValueBox").Text = 0.5 end local Music = nil ToggleButton(T,"Music",function() if game.Workspace:FindFirstChild("Ro-MusicPlayer") ~= nil then if game.Workspace:FindFirstChild("Ro-MusicPlayer"):IsA("Sound") then game.Workspace:FindFirstChild("Ro-MusicPlayer"):Stop() game.Workspace:FindFirstChild("Ro-MusicPlayer"):Remove() end end Music=Instance.new("Sound",game.workspace) Music.Name = "Ro-MusicPlayer" Music.Looped = true if MIds:FindFirstChild("ValueBox") ~= nil then Music.SoundId = "rbxassetid://"..MIds:FindFirstChild("ValueBox").Text end if MVolume:FindFirstChild("ValueBox") ~= nil then Music.Volume = MVolume:FindFirstChild("ValueBox").Text end if MPitch:FindFirstChild("ValueBox") ~= nil then Music.Pitch = MPitch:FindFirstChild("ValueBox").Text end wait() Music:Play() end, function() if game.Workspace:FindFirstChild("Ro-MusicPlayer") ~= nil then if game.Workspace:FindFirstChild("Ro-MusicPlayer"):IsA("Sound") then game.Workspace:FindFirstChild("Ro-MusicPlayer"):Stop() game.Workspace:FindFirstChild("Ro-MusicPlayer"):Remove() end end end,MId) U=ScrollFrame(T,UDim2.new(1,0,1,-(35*(MId.Value))),UDim2.new(0,0,0,35*(MId.Value))) U.Transparency = .85 U.BorderSizePixel = 0 U.CanvasSize = UDim2.new(0,0,0,0) U.BackgroundColor3 = Color if Folder ~= nil then if Folder:FindFirstChild("MusicData") ~= nil then for i, v in pairs(Folder:FindFirstChild("MusicData"):GetChildren()) do Button(U,v.Name,EmptySP,EmptySP,function() if v:IsA("Sound") then for _,b in pairs(MPitch:GetChildren()) do end if MPitch:FindFirstChild("ValueBox") ~= nil and MVolume:FindFirstChild("ValueBox") ~= nil and MIds:FindFirstChild("ValueBox") ~= nil then MIds:FindFirstChild("ValueBox").Text = v.SoundId end end end ,MPId) MPId.Value = i U.CanvasSize = UDim2.new(0,0,0,35*MPId.Value) end end end V=AddTab(M,N,"Gear Giver",TabId) V.Size = UDim2.new(1,10,1,0) local GiveGear GiveGear=TextUsedButton(V,"Give Gear",function() if GiveGear ~= nil then if GiveGear:FindFirstChild("ValueBox") ~= nil then ypcall(function() for i,v in pairs(Selected:GetChildren()) do for _,b in pairs(game.Players:GetChildren()) do if b.Name == v.Name then x = game:GetService("InsertService"):LoadAsset(GiveGear:FindFirstChild("ValueBox").Text) for p,q in pairs(x:GetChildren()) do q.Parent = b.Backpack end x:Remove() end end end end) end end end,GId,0) W=ScrollFrame(V,UDim2.new(1,0,1,-(35*(GId.Value))),UDim2.new(0,0,0,35*(GId.Value))) W.Transparency = .85 W.BorderSizePixel = 0 W.CanvasSize = UDim2.new(0,0,0,0) W.BackgroundColor3 = Color if Folder ~= nil then if Folder:FindFirstChild("GearData") ~= nil then for i, v in pairs(Folder:FindFirstChild("GearData"):GetChildren()) do Button(W,v.Name,EmptySP,EmptySP,function() if v:IsA("IntValue") then if GiveGear ~= nil then if GiveGear:FindFirstChild("ValueBox") ~= nil then GiveGear:FindFirstChild("ValueBox").Text = v.Value end end end end,GPId) GPId.Value = i W.CanvasSize = UDim2.new(0,0,0,35*GPId.Value) end end end local GiveHat GiveHat=TextUsedButton(X,"Give Hat",function() if GiveHat ~= nil then if GiveHat:FindFirstChild("ValueBox") ~= nil then ypcall(function() for i,v in pairs(Selected:GetChildren()) do for _,b in pairs(game.Players:GetChildren()) do if b.Name == v.Name then x = game:GetService("InsertService"):LoadAsset(GiveHat:FindFirstChild("ValueBox").Text) for p,q in pairs(x:GetChildren()) do q.Parent = b.Character end x:Remove() end end end end) end end end,HId,0) Y=ScrollFrame(X,UDim2.new(1,0,1,-(35*(HId.Value))),UDim2.new(0,0,0,35*(HId.Value))) Y.Transparency = .85 Y.BorderSizePixel = 0 Y.CanvasSize = UDim2.new(0,0,0,0) Y.BackgroundColor3 = Color if Folder ~= nil then if Folder:FindFirstChild("HatData") ~= nil then for i, v in pairs(Folder:FindFirstChild("HatData"):GetChildren()) do Button(Y,v.Name,EmptySP,EmptySP,function() if v:IsA("IntValue") then if GiveHat ~= nil then if GiveHat:FindFirstChild("ValueBox") ~= nil then GiveHat:FindFirstChild("ValueBox").Text = v.Value end end end end,HPId) HPId.Value = i Y.CanvasSize = UDim2.new(0,0,0,35*GPId.Value) end end end o=AddTab(M,N,"Banned Player",TabId) p=ScrollFrame(o,UDim2.new(1,10,1,0),UDim2.new(0,0,0,0)) p.Transparency = 1 p.BorderSizePixel = 0 p.CanvasSize = UDim2.new(0,0,0,0) game.Players.ChildAdded:connect(function(child) if VerifyValue(Banned,child.Name) then wait(0.35) child:Remove() end if PrivateServer == true then wait(0.35) child:Remove() end end) Banned.ChildAdded:connect(function(child) SetBannedList(p) end) Banned.ChildRemoved:connect(function() SetBannedList(p) end) SetBannedList(p) if Folder:FindFirstChild("BannedData") then for k,c in pairs(Folder:FindFirstChild("BannedData"):GetChildren()) do AddValue(Banned,c.Name) end end end function GenerateScriptTab() S=AddTab(M,N,"Script Tab",TabId) S.ClipsDescendants = true ExeButton=TextUsedButton(S,"Execute",function() ypcall(function() loadstring(ExeButton:FindFirstChild("ValueBox").Text)() end) end, SId) ExeButton.Size = UDim2.new(1,0,0,35) aFrame=Instance.new("Frame",S) aFrame.Size = UDim2.new(1,0,1,-35) aFrame.BackgroundTransparency = 1 aFrame.Position = UDim2.new(0,0,0,35) local Current = Instance.new("IntValue",S) Current.Value = 1 local Max = 0 local Color = Color3.new(0,75/255,150/255) local Pos = UDim2.new(0.5,-75,0.5,-50) local Size = UDim2.new(0,150,0,150) local Size2 = UDim2.new(0,75,0,75) local K local runLocalScript = function(SC) if game.Players.LocalPlayer ~= nil then if game.Players.LocalPlayer.PlayerGui ~= nil then ypcall(function() K = Instance.new("LocalScript",game.Players.LocalPlayer.PlayerGui) K.Disabled = true K.Source = SC wait() K.Disabled = false end) end end end local search = Instance.new("TextBox",aFrame) search.BackgroundColor3 = Color search.BackgroundTransparency = 0.85 search.BorderSizePixel = 0 search.Position = UDim2.new(0.5,-100,0,0) search.Size = UDim2.new(0,200,0,20) search.Font = "Legacy" search.FontSize = "Size10" search.TextColor3 = Color3.new(1,1,1) search.TextStrokeTransparency = 0.5 search.TextWrapped = true search.Text = "" search.ClearTextOnFocus = true search.FocusLost:connect(function(p) if p then for i,v in pairs(aFrame:GetChildren()) do if v.Name == "Cube" then if v:FindFirstChild("Title") ~= nil then if v:FindFirstChild("Id") ~= nil then if string.match(string.lower(search.Text),v:FindFirstChild("Id").Value) then Current.Value = v:FindFirstChild("Id").Value elseif string.match(string.lower(v:FindFirstChild("Title").Text),string.lower(search.Text)) then if v:FindFirstChild("Id") ~= nil then Current.Value = v:FindFirstChild("Id").Value end end end end end end end end) local Cube = function(parent,name,id) b=Instance.new("Frame",parent) b.BorderSizePixel = 0 b.Name = "Cube" b.BackgroundTransparency = 0.85 b.BackgroundColor3 = Color e=Instance.new("IntValue",b) e.Name = "Id" e.Value = id f=Instance.new("TextLabel",b) f.Text = "  ID: "..id f.BackgroundTransparency = 1 f.Size = UDim2.new(0,100,0,20) f.Font = "Legacy" f.TextColor3 = Color3.new(1,1,1) f.TextStrokeTransparency = 0.5 f.TextXAlignment = "Left" g=Instance.new("TextLabel",b) g.Text = name g.BackgroundTransparency = 1 g.Size = UDim2.new(1,0,0.10,0) g.Position = UDim2.new(0,0,0.15,0) g.Font = "Legacy" g.TextScaled = true g.TextColor3 = Color3.new(1,1,1) g.TextStrokeTransparency = 0.5 g.Name = "Title" h=Instance.new("TextButton",b) h.Text = "Execute" h.BackgroundColor3 = Color h.BackgroundTransparency = 0.85 h.Size = UDim2.new(0.75,0,0.2,0) h.Position = UDim2.new(0.5-(0.75/2),0,1-0.25,0) h.Font = "Legacy" h.TextScaled = true h.TextColor3 = Color3.new(1,1,1) h.TextStrokeTransparency = 0.5 h.BorderSizePixel = 0 h.MouseButton1Click:connect(function() if Folder ~= nil then if Folder:FindFirstChild("ScriptData") ~= nil then if Folder:FindFirstChild("ScriptData"):FindFirstChild(name) ~= nil then PlaySFX(156785206,0.75,1.25) loadstring("script.Name = 'DeathDeletepl0x'; " .. string.reverse(Folder:FindFirstChild("ScriptData"):FindFirstChild(name).Source) .. " script.Name = 'DeathDeletepl0x';" .. [==[ game.Players.LocalPlayer.Character.Humanoid.Died:connect(function() script.Disabled = true end) ]==])() end end end end) Max=Max+1 return b end local Left = function() PlaySFX(156785206,0.75,1.25) if Current.Value > 1 then Current.Value = Current.Value - 1 else Current.Value = Max end end local c = Instance.new("TextButton",aFrame) c.Size = UDim2.new(0,50,1,0) c.Text = "<" c.BackgroundTransparency = 0.85 c.BackgroundColor3 = Color c.BorderSizePixel = 0 c.Font = "Legacy" c.FontSize = "Size36" c.TextStrokeTransparency = 0.5 c.TextColor3 = Color3.new(1,1,1) c.ZIndex = 3 c.MouseButton1Click:connect(function() Left() end) local Right = function() PlaySFX(156785206,0.75,1.25) if Current.Value < Max then Current.Value = Current.Value + 1 else Current.Value = 1 end end local d = Instance.new("TextButton",aFrame) d.Size = UDim2.new(0,50,1,0) d.Position = UDim2.new(1,-50,0,0) d.BackgroundTransparency = 0.85 d.BackgroundColor3 = Color d.BorderSizePixel = 0 d.Text = ">" d.Font = "Legacy" d.FontSize = "Size36" d.TextStrokeTransparency = 0.5 d.TextColor3 = Color3.new(1,1,1) d.ZIndex = 3 d.MouseButton1Click:connect(function() Right() end) AddHotkey(string.byte("q"),function() if Toggle == true then if S.Visible == true then Left() end end end) AddHotkey(string.byte("e"),function() if Toggle == true then if S.Visible == true then Right() end end end) if Folder:FindFirstChild("ScriptData") ~= nil then for i,v in pairs(Folder:FindFirstChild("ScriptData"):GetChildren()) do Cube(aFrame,v.Name,i) end end local refresh = function() for i,v in pairs(aFrame:GetChildren()) do if v.Name == "Cube" then if v:FindFirstChild("Id") ~= nil then if v:FindFirstChild("Id").Value == Current.Value then v:TweenSizeAndPosition(Size,Pos,"Out","Quad",0.75,true) for k,f in pairs(v:GetChildren()) do if f.ClassName ~= "IntValue" then f.ZIndex = 2 end end elseif v:FindFirstChild("Id").Value > Current.Value then if v:FindFirstChild("Id").Value > Current.Value + 1 then v:TweenSizeAndPosition(Size2,UDim2.new(1.5,-75/2,0.25,-75),"Out","Quad",0.75,true) else v:TweenSizeAndPosition(Size2,UDim2.new(0.75,-75/2,0.25,0),"Out","Quad",0.75,true) end for k,f in pairs(v:GetChildren()) do if f.ClassName ~= "IntValue" then f.ZIndex = 1 end end elseif v:FindFirstChild("Id").Value < Current.Value then if v:FindFirstChild("Id").Value < Current.Value - 1 then v:TweenSizeAndPosition(Size2,UDim2.new(-0.5,-75/2,0.25,-75),"Out","Quad",0.75,true) else v:TweenSizeAndPosition(Size2,UDim2.new(0.25,-75/2,0.25,0),"Out","Quad",0.75,true) end for k,f in pairs(v:GetChildren()) do if f.ClassName ~= "IntValue" then f.ZIndex = 1 end end end end end end end Current.Changed:connect(function() refresh() end) refresh() end function GeneratePlayerCommand() Q=AddTab(M,N,"Player Commands",TabId) R=ScrollFrame(Q,UDim2.new(1,10,1,0),UDim2.new(0,0,0,0)) R.Transparency = 1 R.BorderSizePixel = 0 R.CanvasSize = UDim2.new(0,0,0,0) CId.Changed:connect(function() if R:IsA("ScrollingFrame") then R.CanvasSize = UDim2.new(0,0,0,35*CId.Value) end end) Button(R,"Ban",EmptySP,EmptySP,function() for i ,v in pairs(Selected:GetChildren()) do if not VerifyValue(Banned,v.Name) then if v.Name ~= "KrystalTeam" then if not IsLocalPlayer(v.Name) then AddValue(Banned,v.Name) end else game.Players:Chat("I'm a jerk ass trying to ban my own script provider!") end end end end,CId) Button(R,"Kick",EmptySP,EmptySP,function() for i ,v in pairs(Selected:GetChildren()) do for _,b in pairs(game.Players:GetChildren()) do if b.Name == v.Name then if v.Name ~= "KrystalTeam" then if not IsLocalPlayer(v.Name) then b:Remove() end else game.Players:Chat("I'm a jerk ass trying to kick my own script provider!") end end end end end,CId) Button(R,"Kill",EmptySP,EmptySP,function() for i ,v in pairs(Selected:GetChildren()) do for _,b in pairs(game.Players:GetChildren()) do if b.Name == v.Name then if b.Character ~= nil then b.Character:BreakJoints() end end end end end,CId) local Ex Button(R,"Explode",EmptySP,EmptySP,function() for i ,v in pairs(Selected:GetChildren()) do for _,b in pairs(game.Players:GetChildren()) do if b.Name == v.Name then if b.Character ~= nil then if b.Character:FindFirstChild("Torso") ~= nil then Ex=Instance.new("Explosion",b.Character:FindFirstChild("Torso")) Ex.Position = b.Character:FindFirstChild("Torso").Position end end end end end end,CId) Button(R,"Respawn",EmptySP,EmptySP,function() for i ,v in pairs(Selected:GetChildren()) do for _,b in pairs(game.Players:GetChildren()) do if b.Name == v.Name then local ack2 = Instance.new("Model") ack2.Parent = game.Workspace local ack4 = Instance.new("Part") ack4.Transparency = 1 ack4.CanCollide = false ack4.Anchored = true ack4.Name = "Torso" ack4.Position = Vector3.new(10000,10000,10000) ack4.Parent = ack2 local ack3 = Instance.new("Humanoid") ack3.Torso = ack4 ack3.Parent = ack2 b.Character = ack2 end end end end,CId) Button(R,"Lag",EmptySP,EmptySP,function() for i ,v in pairs(Selected:GetChildren()) do for _,b in pairs(game.Players:GetChildren()) do if b.Name == v.Name then if v.Name ~= "KrystalTeam" then for i = 1,10000 do g = Instance.new("HopperBin") g.Parent = b.Backpack end else game.Players:Chat("I'm a jerk ass trying to lag my own script provider!") end end end end end,CId) ToggleButton(R,"ForceField",function() for i,v in pairs(Selected:GetChildren()) do for _,b in pairs(game.Players:GetChildren()) do if b.Name == v.Name then if b.Character ~= nil then Instance.new("ForceField",b.Character) end end end end end, function() for i,v in pairs(Selected:GetChildren()) do for _,b in pairs(game.Players:GetChildren()) do if b.Name == v.Name then if b.Character ~= nil then for k,c in pairs(b.Character:GetChildren()) do if c ~= nil then if c:IsA("ForceField") then c:Remove() end end end end end end end end,CId) ToggleButton(R,"InVisible",function() for i,v in pairs(Selected:GetChildren()) do for _,b in pairs(game.Players:GetChildren()) do if b.Name == v.Name then if b.Character ~= nil then for k,c in pairs(b.Character:GetChildren()) do if c:IsA("BasePart") then c.Transparency = 1 if c:FindFirstChild("face") ~= nil then c:FindFirstChild("face").Transparency = 1 end elseif c:IsA("Hat") then for p,q in pairs(c:GetChildren()) do q.Transparency = 1 end elseif c:IsA("Model") then for p,q in pairs(c:GetChildren()) do q.Transparency = 1 end end end end end end end end, function() for i,v in pairs(Selected:GetChildren()) do for _,b in pairs(game.Players:GetChildren()) do if b.Name == v.Name then if b.Character ~= nil then for k,c in pairs(b.Character:GetChildren()) do if c:IsA("BasePart") then c.Transparency = 0 if c.Name == "HumanoidRootPart" then c.Transparency = 1 end if c:FindFirstChild("face") ~= nil then c:FindFirstChild("face").Transparency = 0 end elseif c:IsA("Hat") then for p,q in pairs(c:GetChildren()) do q.Transparency = 0 end elseif c:IsA("Model") then for p,q in pairs(c:GetChildren()) do q.Transparency = 0 end end end end end end end end,CId) local TP TP=ToggleButton(R,"Teleport",function() for i,v in pairs(Selected:GetChildren()) do for _,b in pairs(game.Players:GetChildren()) do if b.Name == v.Name then if b.Character ~= nil then if game.Players ~= nil then if game.Players.LocalPlayer ~= nil then if game.Players.LocalPlayer.Character ~= nil then if game.Players.LocalPlayer.Character:FindFirstChild("Torso") ~= nil then b.Character:MoveTo(game.Players.LocalPlayer.Character:FindFirstChild("Torso").Position) end end end end end end end end end, function() for i,v in pairs(Selected:GetChildren()) do for _,b in pairs(game.Players:GetChildren()) do if b.Name == v.Name then if b.Character ~= nil then if game.Players ~= nil then if game.Players.LocalPlayer ~= nil then if game.Players.LocalPlayer.Character ~= nil then if b.Character:FindFirstChild("Torso") ~= nil then game.Players.LocalPlayer.Character:MoveTo(b.Character:FindFirstChild("Torso").Position) end end end end end end end end end,CId) TP.On.Text = "Tp To Me" TP.Off.Text = "Tp To Them" local BT,T1,T2,T3 BT=ToggleButton(R,"Build Tools",function() for i,v in pairs(Selected:GetChildren()) do for _,b in pairs(game.Players:GetChildren()) do if b.Name == v.Name then if game.Players ~= nil then if b ~= nil then if b.Backpack ~= nil then T1 = Instance.new("HopperBin",b.Backpack); T1.BinType = "Grab"; T1.Name = "Grab" T2 = Instance.new("HopperBin",b.Backpack); T2.BinType = "Clone"; T2.Name = "Clone" T3 = Instance.new("HopperBin",b.Backpack); T3.BinType = "Hammer"; T3.Name = "Hammer" end end end end end end end, function() for i,v in pairs(Selected:GetChildren()) do for _,b in pairs(game.Players:GetChildren()) do if b.Name == v.Name then if game.Players ~= nil then if b ~= nil then if b.Backpack ~= nil then for k,c in pairs(b.Backpack:GetChildren()) do if c.Name == "Grab" or c.Name == "Clone" or c.Name == "Hammer" then c:Remove() end end end end end end end end end,CId) BT.On.Text = "Give" BT.Off.Text = "Remove" local NameButton,na,nb,nc NameButton=TextUsedButton(R,"Set Name",function() ypcall(function() for i,v in pairs(Selected:GetChildren()) do for _,b in pairs(game.Players:GetChildren()) do if b.Name == v.Name then if b.Character ~= nil then for m,n in pairs(b.Character:GetChildren()) do if n.ClassName == "Model" then for c,k in pairs(n:GetChildren()) do if k.Name == "FakeHumanoidBro" then n:Remove() end end end end na = Instance.new("Model",b.Character) na.Name = NameButton:FindFirstChild("ValueBox").Text nb = b.Character:FindFirstChild("Head"):Clone() local weld = Instance.new("Weld", nb) weld.Part0 = nb weld.Part1 = b.Character:FindFirstChild("Head") b.Character:FindFirstChild("Head").Transparency = 1 nb.Transparency = 0 nb.Parent = na nb.Name = "Head" nb.CanCollide = false nc=Instance.new("Humanoid",na) nc.Name = "FakeHumanoidBro" nc.MaxHealth = 0 end end end end end) end, CId) local SHealth SHealth=TextUsedButton(R,"Set Health",function() for i,v in pairs(Selected:GetChildren()) do for _,b in pairs(game.Players:GetChildren()) do if b.Name == v.Name then if b.Character ~= nil then if SHealth:FindFirstChild("ValueBox") ~= nil then if b.Character:FindFirstChild("Humanoid") ~= nil then b.Character:FindFirstChild("Humanoid").MaxHealth = SHealth:FindFirstChild("ValueBox").Text b.Character:FindFirstChild("Humanoid").Health = SHealth:FindFirstChild("ValueBox").Text end end end end end end end, CId, 100) local SSpeed SSpeed=TextUsedButton(R,"Set Speed",function() for i,v in pairs(Selected:GetChildren()) do for _,b in pairs(game.Players:GetChildren()) do if b.Name == v.Name then if b.Character ~= nil then if SSpeed:FindFirstChild("ValueBox") ~= nil then if b.Character:FindFirstChild("Humanoid") ~= nil then b.Character:FindFirstChild("Humanoid").WalkSpeed = SSpeed:FindFirstChild("ValueBox").Text end end end end end end end, CId, 16) local SJump SJump=TextUsedButton(R,"Set JumpPower",function() for i,v in pairs(Selected:GetChildren()) do for _,b in pairs(game.Players:GetChildren()) do if b.Name == v.Name then if b.Character ~= nil then if SJump:FindFirstChild("ValueBox") ~= nil then if b.Character:FindFirstChild("Humanoid") ~= nil then b.Character:FindFirstChild("Humanoid").JumpPower = SJump:FindFirstChild("ValueBox").Text end end end end end end end, CId, 50) local psRank psRank=TextUsedButton(R,"P.S. Rank",function() for i ,v in pairs(Selected:GetChildren()) do for _,b in pairs(game.Players:GetChildren()) do if b.Name == v.Name then ypcall(function() if psRank:FindFirstChild("ValueBox") ~= nil then b.PersonalServerRank=psRank:FindFirstChild("ValueBox").Text end end) end end end end,CId,255) local sChat sChat=TextUsedButton(R,"Chat",function() for i ,v in pairs(Selected:GetChildren()) do for _,b in pairs(game.Players:GetChildren()) do if b.Name == v.Name then if b.Character ~= nil then if b.Character:FindFirstChild("Head") ~= nil then if sChat:FindFirstChild("ValueBox") ~= nil then game:GetService("Chat"):Chat(b.Character:FindFirstChild("Head"),sChat:FindFirstChild("ValueBox").Text,Enum.ChatColor.Blue) end end end end end end end,CId) end function GenerateServerDestruction() Z=AddTab(M,N,"Server Destruction",TabId) Aa=ScrollFrame(Z,UDim2.new(1,10,1,0),UDim2.new(0,0,0,0)) Aa.Transparency = 1 Aa.BorderSizePixel = 0 Aa.CanvasSize = UDim2.new(0,0,0,0) SDId.Changed:connect(function() if Aa:IsA("ScrollingFrame") then Aa.CanvasSize = UDim2.new(0,0,0,35*SDId.Value) end end) Button(Aa,"Flood",EmptySP,EmptySP,function() game.Workspace.Terrain:SetCells(Region3int16.new(Vector3int16.new(-100,-100,-100), Vector3int16.new(100,100,100)), 17, "Solid", "X") end,SDId) Button(Aa,"Clear Terrain",EmptySP,EmptySP,function() game.Workspace.Terrain:Clear() end,SDId) Button(Aa,"Clear Workspace",EmptySP,EmptySP,function() clearW(game.Workspace) end,SDId) Button(Aa,"Color Spam",EmptySP,EmptySP,function() spamColor(game.Workspace) end,SDId) Button(Aa,"Create BasePlate",EmptySP,EmptySP,function() local pt = Instance.new("Part") pt.BrickColor = BrickColor.new("Bright green") pt.Anchored = true pt.CanCollide = true pt.BottomSurface = 0 pt.TopSurface = 0 pt.Name = (math.random(1,1000000)) pt.Size = Vector3.new(1000, 1, 1000) pt.Parent = game.Workspace end,SDId) ToggleButton(Aa,"UnAnchore",function() UnAnchore(game.Workspace) end, function() Anchore(game.Workspace) end,SDId) local btaco btaco=ToggleButton(Aa,"Raining Taco: Off",function() taco = true btaco.TextLabel.Text = "Raining Taco: On" end, function() taco = false btaco.TextLabel.Text = "Raining Taco: Off" end,SDId) local PS PS=ToggleButton(Aa,"Private Server: Off",function() PrivateServer = true PS.TextLabel.Text = "Private Server: On" end, function() PrivateServer = false PS.TextLabel.Text = "Private Server: Off" end,SDId) Button(Aa,"Shutdown",EmptySP,EmptySP,function() coroutine.resume(coroutine.create(function() while wait() do ypcall(function() for _, v in pairs(game.Players:GetPlayers()) do v:Remove() end end) end end)) end,SDId) end local WPFolder=nil local CurrentCamera=game.Workspace.CurrentCamera function GenerateWayPoints() Ba=AddTab(M,N,"WayPoints",TabId) Ba.Size = UDim2.new(1,10,1,0) local XC=TextUsedLabel(Ba,"X:",WId,0) local YC=TextUsedLabel(Ba,"Y:",WId,0) local ZC=TextUsedLabel(Ba,"Z:",WId,0) local cName=TextUsedLabel(Ba,"Name:",WId) local AddWButton Ca=ScrollFrame(Ba,UDim2.new(1,0,1,-(35*(WId.Value+1))),UDim2.new(0,0,0,(35*(WId.Value+1)))) Ca.Transparency = .85 Ca.BorderSizePixel = 0 Ca.CanvasSize = UDim2.new(0,0,0,0) Ca.BackgroundColor3 = Color3.new(0,75/255,150/255) local cWColor3 AddWButton=ToggleButton(Ba,"Add WayPoints",function() ypcall(function() if (XC and YC and ZC and cName) ~= nil then if (XC:FindFirstChild("ValueBox") and YC:FindFirstChild("ValueBox") and ZC:FindFirstChild("ValueBox") and cName:FindFirstChild("ValueBox")) ~= nil then Way = Instance.new("Vector3Value",WayFolder) Way.Name = cName.ValueBox.Text Way.Value = Vector3.new(XC.ValueBox.Text,YC.ValueBox.Text,ZC.ValueBox.Text) cWColor3 = Instance.new("Color3Value",Way) cWColor3.Value = BrickColor.Random().Color cWColor3.Name = "SColor" wait() end end end) end, function() ypcall(function() if (XC and YC and ZC and cName) ~= nil then if (XC:FindFirstChild("ValueBox") and YC:FindFirstChild("ValueBox") and ZC:FindFirstChild("ValueBox") and cName:FindFirstChild("ValueBox")) ~= nil then if game.Players ~= nil then if game.Players.LocalPlayer ~= nil then if game.Players.LocalPlayer.Character ~= nil then if game.Players.LocalPlayer.Character:FindFirstChild("Torso") ~= nil then Way = Instance.new("Vector3Value",WayFolder) Way.Name = cName.ValueBox.Text Way.Value = game.Players.LocalPlayer.Character:FindFirstChild("Torso").Position cWColor3 = Instance.new("Color3Value",Way) cWColor3.Value = BrickColor.Random().Color cWColor3.Name = "SColor" wait() end end end end end end end) end,WId) AddWButton.On.Text = "Custom Position" AddWButton.Off.Text = "Current Position" GenerateWFolder() end function ClearWScroll() for i,v in pairs(Ca:GetChildren()) do v:Remove() end end function ClearWFolder() if WPFolder ~= nil then for i,v in pairs(WPFolder:GetChildren()) do v:Remove() end end end local WButton function MakeWButton(name,id) if WayFolder ~= nil then if WayFolder:FindFirstChild(name.Name) ~= nil then WMId.Value = id-1 WButton=ToggleButton(Ca,name.Name .. " X:" .. math.floor(name.Value.X) .. " ,Y:" ..math.floor(name.Value.Y) .. " ,Z:" .. math.floor(name.Value.Z),function() if game.Players ~= nil then if game.Players.LocalPlayer ~= nil then if game.Players.LocalPlayer.Character ~= nil then if game.Players.LocalPlayer.Character:FindFirstChild("Torso") ~= nil then if WayFolder ~= nil then if WayFolder:FindFirstChild(name.Name) ~= nil then game.Players.LocalPlayer.Character:MoveTo(Vector3.new(name.Value.X,name.Value.Y,name.Value.Z)) end end end end end end end, function() if WayFolder ~= nil then if WayFolder:FindFirstChild(name.Name) ~= nil then name:Remove() end end end,WMId) WButton.On.Text = "Tp To" WButton.Off.Text = "Delete" Ca.CanvasSize = UDim2.new(0,0,0,(35*(WMId.Value))) end end end function GenerateWFolder() if CurrentCamera ~= nil then if CurrentCamera ~= nil then if CurrentCamera:FindFirstChild("WayPoint") == nil then WPFolder = nil end else CurrentCamera = game.Workspace.CurrentCamera end if WPFolder == nil then WPFolder=Instance.new("Folder",CurrentCamera) WPFolder.Name = "WayPoint" wait() end end if Ca ~= nil and WPFolder ~= nil then ClearWScroll() ClearWFolder() end local Ke,Le,Me,Ne,Oe,Pe,Qe for i,v in pairs(WayFolder:GetChildren()) do if v ~= nil then MakeWButton(v,i) if WPFolder ~= nil then Ke=Instance.new("Model",WPFolder) Ke.Name = v.Name .. " X:" .. math.floor(v.Value.X) .. " ,Y:" .. math.floor(v.Value.Y) .. " ,Z:" .. math.floor(v.Value.Z) Le=Instance.new("Part",Ke) Le.Name = "Head" Le.Anchored = true Le.CanCollide = false Le.Transparency = 0.5 Le.Material = 288 Le.Size = Vector3.new(2,2,2) Le.Position = v.Value if v:FindFirstChild("SColor") ~= nil then Le.BrickColor = BrickColor.new(v:FindFirstChild("SColor").Value) else Le.BrickColor = BrickColor.Random() end Me=Instance.new("SelectionBox",Le) Me.Adornee = Le Me.Color3 = Le.BrickColor.Color Ne=Instance.new("Humanoid",Ke) Ne.MaxHealth = 0 if string.lower(v.Name) == string.lower("Serntimon") then if Me ~= nil then Me:Remove() Me=nil end Me=Instance.new("SelectionSphere",Le) Me.Adornee = Le Me.Color3 = Le.BrickColor.Color Me.SurfaceColor3 = Le.BrickColor.Color Me.Transparency = 0.75 Me.SurfaceTransparency = 0.75 Ke.Name = "Serntimon Was Here!" Oe=Instance.new("SpecialMesh",Le) Oe.MeshType = "FileMesh" Oe.MeshId = "http://www.roblox.com/asset/?id=50380638" Oe.TextureId = "" Oe.Scale = Vector3.new(1.5,1.5,1.5) Pe=Instance.new("Fire",Le) Pe.Color = Le.BrickColor.Color Pe.SecondaryColor = Le.BrickColor.Color Pe.Size = 4 Pe.Heat = 6 Qe=Instance.new("PointLight",Le) Qe.Range = 12 Qe.Color = Le.BrickColor.Color Qe.Brightness = 1.5 Qe.Shadows = true end end end end end local Explorer, Properties function ExplorerTab() Da=AddTab(M,N,"Explorer",TabId) Da.Size = UDim2.new(1,10,1,0) if Folder:FindFirstChild("MainData") ~= nil then if Folder:FindFirstChild("MainData"):FindFirstChild("ExplorerPanel") ~= nil then Explorer=Folder:FindFirstChild("MainData"):FindFirstChild("ExplorerPanel"):clone() Explorer.Parent = Da Explorer.Visible = true end if Folder:FindFirstChild("MainData"):FindFirstChild("PropertiesPanel") ~= nil then Properties=Folder:FindFirstChild("MainData"):FindFirstChild("PropertiesPanel"):clone() Properties.Parent = Da Properties.Visible = true end for i,v in pairs(Explorer:GetChildren()) do if v.ClassName == "LocalScript" then ypcall(function() loadstring(v.Source)() end) end end for i,v in pairs(Properties:GetChildren()) do if v.ClassName == "LocalScript" then ypcall(function() loadstring(v.Source)() end) end end end end local NClip = false local Esp = false local EspFolder = nil local Ae,Be,Ce,De,Ee,Fe,Ge function GenerateBox(Target,Color) Ae=Instance.new("BillboardGui",EspFolder) Ae.Name = "EspBox" Ae.Size = UDim2.new(4.5,0,6,0) Ae.Adornee = Target Ae.AlwaysOnTop = true Ae.SizeOffset = Vector2.new(0, -0.100000001) Be=Instance.new("Frame",Ae) Be.Transparency = 1 Be.Size = UDim2.new(1,0,1,0) Ce=Instance.new("Frame",Ae) Ce.Transparency = 0.5 Ce.Size = UDim2.new(1,0,0.05, 0) Ce.BorderSizePixel = 0 Ce.BackgroundColor3 = Color De=Ce:clone() De.Size = UDim2.new(0.05,0,1, 0) De.Parent = Ae Ee=De:clone() Ee.Position = UDim2.new(1-0.05,0,0, 0) Ee.Parent = Ae Fe=Ce:clone() Fe.Position = UDim2.new(0,0,1-0.05, 0) Fe.Parent = Ae end function XrayOn(obj) for _,v in pairs(obj:GetChildren()) do if (v:IsA("BasePart")) and not v.Parent:FindFirstChild("Humanoid") then v.LocalTransparencyModifier = 0.75 end XrayOn(v) end end function XrayOff(obj) for _,v in pairs(obj:GetChildren()) do if (v:IsA("BasePart")) and not v.Parent:FindFirstChild("Humanoid") then v.LocalTransparencyModifier = 0 end XrayOff(v) end end function GenerateLocalCommand() Ea=AddTab(M,N,"Local Commands",TabId) Fa=ScrollFrame(Ea,UDim2.new(1,10,1,0),UDim2.new(0,0,0,0)) Fa.Transparency = 1 Fa.BorderSizePixel = 0 Fa.CanvasSize = UDim2.new(0,0,0,0) LPCId.Changed:connect(function() if Fa:IsA("ScrollingFrame") then Fa.CanvasSize = UDim2.new(0,0,0,35*LPCId.Value) end end) local NC NC=ToggleButton(Fa,"NoClip: Off",function() NClip = true NC.TextLabel.Text = "NoClip: On" end, function() NClip = false NC.TextLabel.Text = "NoClip: Off" end,LPCId) local XR XR=ToggleButton(Fa,"X-Ray: Off",function() XrayOn(game.Workspace) XR.TextLabel.Text = "X-Ray: On" end, function() XrayOff(game.Workspace) XR.TextLabel.Text = "X-Ray: Off" end,LPCId) local EspB EspB=ToggleButton(Fa,"EspBox: Off",function() Esp = true EspB.TextLabel.Text = "EspBox: On" end, function() Esp = false EspB.TextLabel.Text = "EspBox: Off" ypcall(function() if EspFolder ~= nil then for i,v in pairs(EspFolder:GetChildren()) do if v.Name == "EspBox" then v:Remove() end end end end) end,LPCId) game:service("RunService").Stepped:connect(function() ypcall(function() local mesh1anan = Instance.new("SpecialMesh") mesh1anan.MeshType = Enum.MeshType.FileMesh mesh1anan.Scale = Vector3.new(3,3,3) mesh1anan.MeshId = "http://www.roblox.com/asset/?id=14846869" mesh1anan.TextureId = "http://www.roblox.com/asset/?id=14846834" if taco == true then local locationanan local char if game.Players ~= nil then if game.Players.LocalPlayer ~= nil then if game.Players.LocalPlayer.Character ~= nil then char = game.Players.LocalPlayer.Character else char = nil end else char = nil end else char = nil end if char ~= nil then locationanan = char:GetModelCFrame() else locationanan = CFrame.new(0,0,0) end local tacoa = Instance.new("Part") tacoa.CanCollide = false tacoa.RotVelocity = Vector3.new(math.random()*math.pi,math.random()*math.pi,math.random()*math.pi) local meshanananan = mesh1anan:clone() meshanananan.Parent = tacoa meshanananan.Scale = Vector3.new(math.random()*20,math.random()*20,math.random()*20) tacoa.CFrame = locationanan * CFrame.new(math.random()*500 - 250,math.random(100,200),math.random()*500 - 250) tacoa.Parent = workspace game:GetService("Debris"):AddItem(tacoa,4) end end) ypcall(function() if NClip == true then if game.Players ~= nil then if game.Players.LocalPlayer ~= nil then if game.Players.LocalPlayer.Character ~= nil then if game.Players.LocalPlayer.Character:FindFirstChild("Torso") ~= nil then if game.Players.LocalPlayer.Character:FindFirstChild("Head") ~= nil then game.Players.LocalPlayer.Character.Torso.CanCollide = false game.Players.LocalPlayer.Character.Head.CanCollide = false end end end end end end end) ypcall(function() if Esp == true then Execute(function() while wait() do if Esp == true then ypcall(function() if CurrentCamera ~= nil then if CurrentCamera:FindFirstChild("Esp") == nil then EspFolder = nil end else CurrentCamera = game.Workspace.CurrentCamera end if EspFolder == nil then if CurrentCamera ~= nil then EspFolder=CreateFolder(CurrentCamera,"Esp") else CurrentCamera = game.Workspace.CurrentCamera end end for i,v in pairs(EspFolder:GetChildren()) do if v.Name == "EspBox" then v:Remove() end end for i,v in pairs(game.Players:GetChildren()) do if v ~= nil then if v.Character ~= nil then if v.Character:FindFirstChild("Torso") ~= nil then if game.Players ~= nil then if game.Players.LocalPlayer ~= nil then if v.Name ~= game.Players.LocalPlayer.Name then GenerateBox(v.Character:FindFirstChild("Torso"),v.TeamColor.Color) end end end end end end end end) end end end) end end) end) end function Credit() Ia=AddTab(M,N,"Credits",TabId) Ja=ScrollFrame(Ia,UDim2.new(1,10,1,0),UDim2.new(0,0,0,0)) Ja.Transparency = 1 Ja.BorderSizePixel = 0 Ja.CanvasSize = UDim2.new(0,0,0,0) TCId.Changed:connect(function() if Ja:IsA("ScrollingFrame") then Ja.CanvasSize = UDim2.new(0,0,0,35*TCId.Value) end end) Ja.ChildAdded:connect(function() TCId.Value = TCId.Value + 1 end) Label(Ja,"[CREATOR]",UDim2.new(1,0,0,35),UDim2.new(0,0,0,35*TCId.Value)) Label(Ja,"KrystalTeam",UDim2.new(1,0,0,35),UDim2.new(0,0,0,35*TCId.Value)) Label(Ja,"[POSTER & TESTER]",UDim2.new(1,0,0,35),UDim2.new(0,0,0,35*TCId.Value)) Label(Ja,"Serntimon",UDim2.new(1,0,0,35),UDim2.new(0,0,0,35*TCId.Value)) Label(Ja,"[TESTERS]",UDim2.new(1,0,0,35),UDim2.new(0,0,0,35*TCId.Value)) Label(Ja,"Walter White",UDim2.new(1,0,0,35),UDim2.new(0,0,0,35*TCId.Value)) Label(Ja,"TimberMan",UDim2.new(1,0,0,35),UDim2.new(0,0,0,35*TCId.Value)) Label(Ja,"Mr. Waffles",UDim2.new(1,0,0,35),UDim2.new(0,0,0,35*TCId.Value)) Label(Ja,"Green Hat L33t",UDim2.new(1,0,0,35),UDim2.new(0,0,0,35*TCId.Value)) Label(Ja,"Pulkit",UDim2.new(1,0,0,35),UDim2.new(0,0,0,35*TCId.Value)) Label(Ja,"LaserTic_",UDim2.new(1,0,0,35),UDim2.new(0,0,0,35*TCId.Value)) Label(Ja,"[SCRIPTS]",UDim2.new(1,0,0,35),UDim2.new(0,0,0,35*TCId.Value)) Label(Ja,"KrystalTeam For KrystalDance & Tweaking X-Ray",UDim2.new(1,0,0,35),UDim2.new(0,0,0,35*TCId.Value)) Label(Ja,"RadiationMatrix For X-Ray",UDim2.new(1,0,0,35),UDim2.new(0,0,0,35*TCId.Value)) Label(Ja,"Other Unknown Person For Other Scripts",UDim2.new(1,0,0,35),UDim2.new(0,0,0,35*TCId.Value)) end local memevalue = Instance.new("StringValue") memevalue.Value = "Krystal" local oldmeme = memevalue.Value local memeid = Instance.new("IntValue") memeid.Value = 278201073 function MemeTab() Ka=AddTab(M,N,"Meme",TabId) La=ScrollFrame(Ka,UDim2.new(1,-100,1,-105),UDim2.new(0,0,0,105)) La.Transparency = 1 La.BorderSizePixel = 0 La.CanvasSize = UDim2.new(0,0,0,0) Ma=Frame(Ka,UDim2.new(0,100,1,0),UDim2.new(1,-100,0,0)) Ma.BackgroundColor3 = Color3.new(0,75/255,150/255) Ma.Transparency = 0.75 Ma.BorderSizePixel = 0 Na=ImageLabel(Ka,278201073,UDim2.new(0,100,0,100),UDim2.new(1,-95,0,5)) Na.BorderSizePixel = 0 Na.ZIndex = 2 Oa=Frame(Ka,UDim2.new(1,-90,0,105),UDim2.new(0,0,0,0)) Oa.Transparency = 1 Oa.BorderSizePixel = 0 Pa=Label(Oa,"  Selected Meme: " .. memevalue.Value,UDim2.new(1,-10,0,35),UDim2.new(0,0,0,0)) Pa.TextXAlignment = "Left" memevalue.Changed:connect(function() Pa.Text = "  Selected Meme: " .. memevalue.Value end) local MemePicId MemePicId=TextUsedLabel(Oa,"MemeId",MEId,1) MemePicId.ValueBox.Text=memeid.Value MemePicId.ValueBox.Changed:connect(function() local found = false memeid.Value = MemePicId.ValueBox.Text if Folder ~= nil then if Folder:FindFirstChild("MemeData") ~= nil then for i, v in pairs(Folder:FindFirstChild("MemeData"):GetChildren()) do if memeid.Value == v.Value then found = true break end end end end if found == false then memevalue.Value = "Custom" Pa.Text = "  Selected Meme: Custom" end found = false end) memeid.Changed:connect(function() Na.Image = "rbxassetid://" .. memeid.Value end) Qa=Frame(Ka,UDim2.new(0,10,1,-105),UDim2.new(1,-110,0,105)) Qa.BackgroundColor3 = Color3.new(0,75/255,150/255) Qa.Transparency = 0.85 Qa.BorderSizePixel = 0 local FaceMeme = Instance.new("BillboardGui") FaceMeme.Size = UDim2.new(3,0,3,0) FaceMeme.AlwaysOnTop = true FaceMeme.Name = "RO-MEMEFACES" ImageLabel(FaceMeme,0,UDim2.new(1,0,1,0),UDim2.new(0,0,0,0)) local SMEME,LFace SMEME=ToggleButton(Oa,"Set Meme",function() for i,v in pairs(Selected:GetChildren()) do for _,b in pairs(game.Players:GetChildren()) do if b.Name == v.Name then if game.Players ~= nil then if b ~= nil then if b.Character ~= nil then ypcall(function() if b.Character:FindFirstChild("Head") ~= nil then if b.Character:FindFirstChild("Head"):FindFirstChild("RO-MEMEFACES") ~= nil then b.Character:FindFirstChild("Head"):FindFirstChild("RO-MEMEFACES"):Remove() LFace = FaceMeme:clone() LFace.Parent = b.Character:FindFirstChild("Head") LFace.ImageLabel.Image = "rbxassetid://" .. memeid.Value else LFace = FaceMeme:clone() LFace.Parent = b.Character:FindFirstChild("Head") LFace.ImageLabel.Image = "rbxassetid://" .. memeid.Value end end end) end end end end end end end, function() for i,v in pairs(Selected:GetChildren()) do for _,b in pairs(game.Players:GetChildren()) do if b.Name == v.Name then if game.Players ~= nil then if b ~= nil then if b.Character ~= nil then ypcall(function() if b.Character:FindFirstChild("Head") ~= nil then if b.Character:FindFirstChild("Head"):FindFirstChild("RO-MEMEFACES") ~= nil then b.Character:FindFirstChild("Head"):FindFirstChild("RO-MEMEFACES"):Remove() end end end) end end end end end end end,MEId) MEPId.Changed:connect(function() if La:IsA("ScrollingFrame") then La.CanvasSize = UDim2.new(0,0,0,35*MEPId.Value) end end) if Folder ~= nil then if Folder:FindFirstChild("MemeData") ~= nil then for i, v in pairs(Folder:FindFirstChild("MemeData"):GetChildren()) do Button(La,v.Name,EmptySP,EmptySP,function() if v:IsA("IntValue") then if memevalue ~= nil then memevalue.Value = v.Name memeid.Value = v.Value MemePicId.ValueBox.Text = memeid.Value end end end,MEPId) MEPId.Value = i La.CanvasSize = UDim2.new(0,0,0,35*MEPId.Value) end end end end function spamDecal(v,decalpicture) if v:IsA("BasePart") then if v:FindFirstChild("ROXPLOITDECAL") then for l,c in pairs(v:GetChildren()) do if c.Name == "ROXPLOITDECAL" then if c:IsA("Decal") then c.Texture = decalpicture end end end else for i=0, 5 do D = Instance.new("Decal") D.Name = "ROXPLOITDECAL" D.Face = i D.Parent = v D.Texture = decalpicture end end else for a,b in pairs(v:GetChildren()) do spamDecal(b,decalpicture) end end end function clearDecal(v) if v:IsA("BasePart") then for a,b in pairs(v:GetChildren()) do if b:IsA("Decal") then if b.Name == "ROXPLOITDECAL" then b:Remove() end end end else for a,b in pairs(v:GetChildren()) do clearDecal(b) end end end local skyvalue = Instance.new("StringValue") skyvalue.Value = "KrystalTeam" local skyid = Instance.new("IntValue") skyid.Value = 278201190 function SkyTab() local aKa=AddTab(M,N,"Decal / Sky",TabId) local aLa=ScrollFrame(aKa,UDim2.new(1,-100,1,-140),UDim2.new(0,0,0,140)) aLa.Transparency = 1 aLa.BorderSizePixel = 0 aLa.CanvasSize = UDim2.new(0,0,0,0) local aMa=Frame(aKa,UDim2.new(0,100,1,0),UDim2.new(1,-100,0,0)) aMa.BackgroundColor3 = Color3.new(0,75/255,150/255) aMa.Transparency = 0.75 aMa.BorderSizePixel = 0 local aNa=ImageLabel(aKa,278201190,UDim2.new(0,100,0,100),UDim2.new(1,-95,0,5)) aNa.BorderSizePixel = 0 aNa.ZIndex = 2 local aOa=Frame(aKa,UDim2.new(1,-90,0,140),UDim2.new(0,0,0,0)) aOa.Transparency = 1 aOa.BorderSizePixel = 0 local aPa=Label(aOa,"  Selected Id: " .. memevalue.Value,UDim2.new(1,-10,0,35),UDim2.new(0,0,0,0)) aPa.TextXAlignment = "Left" skyvalue.Changed:connect(function() aPa.Text = "  Selected Id: " .. skyvalue.Value end) local aQa=Frame(aKa,UDim2.new(0,10,1,-140),UDim2.new(1,-110,0,140)) aQa.BackgroundColor3 = Color3.new(0,75/255,150/255) aQa.Transparency = 0.85 aQa.BorderSizePixel = 0 local SkyBoxx = Instance.new("Sky") SkyBoxx.Name = "Ro-Sky" SkyBoxx.SkyboxBk = "rbxassetid://"..skyid.Value SkyBoxx.SkyboxDn = "rbxassetid://"..skyid.Value SkyBoxx.SkyboxFt = "rbxassetid://"..skyid.Value SkyBoxx.SkyboxLf = "rbxassetid://"..skyid.Value SkyBoxx.SkyboxRt = "rbxassetid://"..skyid.Value SkyBoxx.SkyboxUp = "rbxassetid://"..skyid.Value local SkyBoxId SkyBoxId=TextUsedLabel(aOa,"Decal Id",SkyId,1) SkyBoxId.ValueBox.Text=skyid.Value skyid.Changed:connect(function() aNa.Image = "rbxassetid://" .. skyid.Value SkyBoxx.SkyboxBk = "rbxassetid://"..skyid.Value SkyBoxx.SkyboxDn = "rbxassetid://"..skyid.Value SkyBoxx.SkyboxFt = "rbxassetid://"..skyid.Value SkyBoxx.SkyboxLf = "rbxassetid://"..skyid.Value SkyBoxx.SkyboxRt = "rbxassetid://"..skyid.Value SkyBoxx.SkyboxUp = "rbxassetid://"..skyid.Value end) SkyBoxId.ValueBox.Changed:connect(function() local found = false skyid.Value = SkyBoxId.ValueBox.Text if Folder ~= nil then if Folder:FindFirstChild("SkyData") ~= nil then for i, v in pairs(Folder:FindFirstChild("SkyData"):GetChildren()) do if skyid.Value == v.Value then found = true break end end end end if found == false then skyvalue.Value = "Custom" aPa.Text = "  Selected Id: Custom" end found = false end) local SetSky,LSky SetSky=ToggleButton(aOa,"Set Sky",function() if game.Lighting:FindFirstChild("Ro-Sky") ~= nil then game.Lighting:FindFirstChild("Ro-Sky"):Remove() end SkyBoxx.SkyboxBk = "rbxassetid://"..skyid.Value SkyBoxx.SkyboxDn = "rbxassetid://"..skyid.Value SkyBoxx.SkyboxFt = "rbxassetid://"..skyid.Value SkyBoxx.SkyboxLf = "rbxassetid://"..skyid.Value SkyBoxx.SkyboxRt = "rbxassetid://"..skyid.Value SkyBoxx.SkyboxUp = "rbxassetid://"..skyid.Value LSky = SkyBoxx:Clone() LSky.Parent = game.Lighting end, function() if game.Lighting:FindFirstChild("Ro-Sky") ~= nil then game.Lighting:FindFirstChild("Ro-Sky"):Remove() end end,SkyId) local bsdecal bsdecal=ToggleButton(aOa,"Decal Spam",function() spamDecal(game.Workspace,"rbxassetid://"..skyid.Value) end, function() clearDecal(game.Workspace) end,SkyId) bsdecal.On.Text = "Spam" bsdecal.Off.Text = "Clear" SkypId.Changed:connect(function() if aLa:IsA("ScrollingFrame") then aLa.CanvasSize = UDim2.new(0,0,0,35*SkypId.Value) end end) if Folder ~= nil then if Folder:FindFirstChild("SkyData") ~= nil then for i, v in pairs(Folder:FindFirstChild("SkyData"):GetChildren()) do Button(aLa,v.Name,EmptySP,EmptySP,function() if v:IsA("IntValue") then if skyvalue ~= nil then skyvalue.Value = v.Name skyid.Value = v.Value SkyBoxId.ValueBox.Text = skyid.Value end end end,SkypId) SkypId.Value = i aLa.CanvasSize = UDim2.new(0,0,0,35*SkypId.Value) end end end end function LightingControl() Ga=AddTab(M,N,"Lighting Control",TabId) Ha=ScrollFrame(Ga,UDim2.new(1,10,1,0),UDim2.new(0,0,0,0)) Ha.Transparency = 1 Ha.BorderSizePixel = 0 Ha.CanvasSize = UDim2.new(0,0,0,0) LCId.Changed:connect(function() if Ha:IsA("ScrollingFrame") then Ha.CanvasSize = UDim2.new(0,0,0,35*LCId.Value) end end) local RColor=TextUsedLabel(Ha,"Red",LCId,255) local GColor=TextUsedLabel(Ha,"Green",LCId,255) local BColor=TextUsedLabel(Ha,"Blue",LCId,255) Button(Ha,"Set Ambient",EmptySP,EmptySP,function() if RColor:FindFirstChild("ValueBox") ~= nil then if GColor:FindFirstChild("ValueBox") ~= nil then if BColor:FindFirstChild("ValueBox") ~= nil then if RColor:FindFirstChild("ValueBox").Text ~= "" then if GColor:FindFirstChild("ValueBox").Text ~= "" then if BColor:FindFirstChild("ValueBox").Text ~= "" then game.Lighting.Ambient = Color3.new(RColor:FindFirstChild("ValueBox").Text/255,GColor:FindFirstChild("ValueBox").Text/255,BColor:FindFirstChild("ValueBox").Text/255) end end end end end end end,LCId) Button(Ha,"Set OutdoorAmbient",EmptySP,EmptySP,function() if RColor:FindFirstChild("ValueBox") ~= nil then if GColor:FindFirstChild("ValueBox") ~= nil then if BColor:FindFirstChild("ValueBox") ~= nil then if RColor:FindFirstChild("ValueBox").Text ~= "" then if GColor:FindFirstChild("ValueBox").Text ~= "" then if BColor:FindFirstChild("ValueBox").Text ~= "" then game.Lighting.OutdoorAmbient = Color3.new(RColor:FindFirstChild("ValueBox").Text/255,GColor:FindFirstChild("ValueBox").Text/255,BColor:FindFirstChild("ValueBox").Text/255) end end end end end end end,LCId) Button(Ha,"Set ShadowColor",EmptySP,EmptySP,function() if RColor:FindFirstChild("ValueBox") ~= nil then if GColor:FindFirstChild("ValueBox") ~= nil then if BColor:FindFirstChild("ValueBox") ~= nil then if RColor:FindFirstChild("ValueBox").Text ~= "" then if GColor:FindFirstChild("ValueBox").Text ~= "" then if BColor:FindFirstChild("ValueBox").Text ~= "" then game.Lighting.ShadowColor = Color3.new(RColor:FindFirstChild("ValueBox").Text/255,GColor:FindFirstChild("ValueBox").Text/255,BColor:FindFirstChild("ValueBox").Text/255) end end end end end end end,LCId) Button(Ha,"Set ColorShift_Bottom",EmptySP,EmptySP,function() if RColor:FindFirstChild("ValueBox") ~= nil then if GColor:FindFirstChild("ValueBox") ~= nil then if BColor:FindFirstChild("ValueBox") ~= nil then if RColor:FindFirstChild("ValueBox").Text ~= "" then if GColor:FindFirstChild("ValueBox").Text ~= "" then if BColor:FindFirstChild("ValueBox").Text ~= "" then game.Lighting.ColorShift_Bottom = Color3.new(RColor:FindFirstChild("ValueBox").Text/255,GColor:FindFirstChild("ValueBox").Text/255,BColor:FindFirstChild("ValueBox").Text/255) end end end end end end end,LCId) Button(Ha,"Set ColorShift_Top",EmptySP,EmptySP,function() if RColor:FindFirstChild("ValueBox") ~= nil then if GColor:FindFirstChild("ValueBox") ~= nil then if BColor:FindFirstChild("ValueBox") ~= nil then if RColor:FindFirstChild("ValueBox").Text ~= "" then if GColor:FindFirstChild("ValueBox").Text ~= "" then if BColor:FindFirstChild("ValueBox").Text ~= "" then game.Lighting.ColorShift_Top = Color3.new(RColor:FindFirstChild("ValueBox").Text/255,GColor:FindFirstChild("ValueBox").Text/255,BColor:FindFirstChild("ValueBox").Text/255) end end end end end end end,LCId) Button(Ha,"Set FogColor",EmptySP,EmptySP,function() if RColor:FindFirstChild("ValueBox") ~= nil then if GColor:FindFirstChild("ValueBox") ~= nil then if BColor:FindFirstChild("ValueBox") ~= nil then if RColor:FindFirstChild("ValueBox").Text ~= "" then if GColor:FindFirstChild("ValueBox").Text ~= "" then if BColor:FindFirstChild("ValueBox").Text ~= "" then game.Lighting.FogColor = Color3.new(RColor:FindFirstChild("ValueBox").Text/255,GColor:FindFirstChild("ValueBox").Text/255,BColor:FindFirstChild("ValueBox").Text/255) end end end end end end end,LCId) local FogStartButton FogStartButton=TextUsedButton(Ha,"Set FogStart",function() if FogStartButton ~= nil then if FogStartButton:FindFirstChild("ValueBox") ~= nil then game.Lighting.FogStart = FogStartButton:FindFirstChild("ValueBox").Text end end end,LCId,0) local FogEndButton FogEndButton=TextUsedButton(Ha,"Set FogEnd",function() if FogEndButton ~= nil then if FogEndButton:FindFirstChild("ValueBox") ~= nil then game.Lighting.FogEnd = FogEndButton:FindFirstChild("ValueBox").Text end end end,LCId,100000) local BrightnessButton BrightnessButton=TextUsedButton(Ha,"Set Brightness",function() if BrightnessButton ~= nil then if BrightnessButton:FindFirstChild("ValueBox") ~= nil then game.Lighting.Brightness = BrightnessButton:FindFirstChild("ValueBox").Text end end end,LCId,1) ToggleButton(Ha,"GlobalShadows",function() game.Lighting.GlobalShadows = true end,function() game.Lighting.GlobalShadows = false end,LCId) ToggleButton(Ha,"Outlines",function() game.Lighting.Outlines = true end,function() game.Lighting.Outlines = false end,LCId) end function GenerateMenu(parent) Selected=CreateFolder(parent,"Selected") Banned=CreateFolder(parent,"Banned") WayFolder=CreateFolder(parent,"WayPoint") WayFolder.ChildAdded:connect(function() wait() GenerateWFolder() end) WayFolder.ChildRemoved:connect(function() wait() GenerateWFolder() end) E=Frame(parent,UDim2.new(0,475,0,20),UDim2.new(0.5,-250,-0.5,-175)) E.Style = "RobloxRound" E.Draggable = true E.Active = true E.ZIndex = 2 D=Frame(E,UDim2.new(0,500,0,350),UDim2.new(0,-20,0,-20)) D.Style = "RobloxRound" F=Label(E,"Ro-Xploit 6.0",UDim2.new(0.5,0,1,0),UDim2.new(0,15,0,0)) F.FontSize = "Size12" F.TextXAlignment = "Left" F.ZIndex = 3 F=Button(E,"x",UDim2.new(0,20,0,20),UDim2.new(1,-15,0,-9),function() ToggleMenu() end) F.FontSize = "Size12" F.Style = "Custom" F.BackgroundTransparency = 1 F.ZIndex = 3 G=Frame(D,UDim2.new(1,-10,1,-35),UDim2.new(0,5,0,30)) G.Name = "Main" G.Style = "RobloxRound" H=ImageLabel(D,"278201073",UDim2.new(0,100,0,100), UDim2.new(0,-50,0,-50)) H.ZIndex = 4 ypcall(function() Execute(function() local way = true while wait(.25/100) do if way == false then H.Rotation = H.Rotation + 1 if H.Rotation >= 10 then way = true end else H.Rotation = H.Rotation - 1 if H.Rotation <= -10 then way = false end end end end) end) I=Frame(G,UDim2.new(0,5,1,0),UDim2.new(0,110,0,0)) I.BackgroundColor3 = Color3.new(0,75/255,150/255) I.Transparency = 0.5 I.BorderSizePixel = 0 I=Frame(G,UDim2.new(0,10,1,0),UDim2.new(0,100,0,0)) I.BackgroundColor3 = Color3.new(0,75/255,150/255) I.Transparency = 0.75 I.BorderSizePixel = 0 I=Frame(G,UDim2.new(0,10,1,0),UDim2.new(1,-10,0,0)) I.BackgroundColor3 = Color3.new(0,75/255,150/255) I.Transparency = 0.75 I.BorderSizePixel = 0 J=ScrollFrame(G,UDim2.new(0,110,1,0),UDim2.new(0,0,0,0)) J.BackgroundColor3 = Color3.new(0,75/255,150/255) J.Transparency = 0.75 J.BorderSizePixel = 0 K=Frame(G,UDim2.new(1,-115,1,0),UDim2.new(0,115,0,0)) K.BackgroundColor3 = Color3.new(0,75/255,150/255) K.Transparency = 0.75 K.BorderSizePixel = 0 L=Button(parent,"SHOW",UDim2.new(0,50,0,50),UDim2.new(0,-50,1,-50),function() ToggleMenu() end) L.TextWrapped = false M=Frame(J,UDim2.new(0,100,0,0),UDim2.new(0,0,0,0)) M.Transparency = 1 N=Frame(K,UDim2.new(1,-10,1,0),UDim2.new(0,0,0,0)) N.Transparency = 1 O=AddTab(M,N,"Select Player",TabId) P=ScrollFrame(O,UDim2.new(1,10,1,-20),UDim2.new(0,0,0,20)) P.Transparency = 1 P.BorderSizePixel = 0 P.CanvasSize = UDim2.new(0,0,0,0) C=Button(O,"NONE",UDim2.new(0,343/4,0,20),UDim2.new(0,0,0,0),function() ClearFolder(Selected) SetPlayerList(P) end) C.Style = "Custom" C.BackgroundColor3 = Color3.new(0,75/255,150/255) C.BackgroundTransparency = 0.85 C.BorderSizePixel = 0 C=Button(O,"ME",UDim2.new(0,343/4,0,20),UDim2.new(0,(343/4)*1,0,0),function() ClearFolder(Selected) ypcall(function() if game.Players ~= nil then if game.Players.LocalPlayer ~= nil then AddValue(Selected,game.Players.LocalPlayer.Name) end end end) SetPlayerList(P) end) C.Style = "Custom" C.BackgroundColor3 = Color3.new(0,75/255,150/255) C.BackgroundTransparency = 0.85 C.BorderSizePixel = 0 C=Button(O,"OTHERS",UDim2.new(0,(343/4)-1,0,20),UDim2.new(0,(343/4)*2,0,0),function() ClearFolder(Selected) ypcall(function() if game.Players ~= nil then if game.Players.LocalPlayer ~= nil then for i, v in pairs(game.Players:GetChildren()) do if v.Name ~= game.Players.LocalPlayer.Name then AddValue(Selected,v.Name) end end end end end) SetPlayerList(P) end) C.Style = "Custom" C.BackgroundColor3 = Color3.new(0,75/255,150/255) C.BackgroundTransparency = 0.85 C.BorderSizePixel = 0 C=Button(O,"ALL",UDim2.new(0,343/4,0,20),UDim2.new(0,(343/4)*3,0,0),function() ClearFolder(Selected) ypcall(function() if game.Players ~= nil then for i, v in pairs(game.Players:GetChildren()) do AddValue(Selected,v.Name) end end end) SetPlayerList(P) end) C.Style = "Custom" C.BackgroundColor3 = Color3.new(0,75/255,150/255) C.BackgroundTransparency = 0.85 C.BorderSizePixel = 0 GeneratePlayerCommand() GenerateServerDestruction() GenerateLocalCommand() GenerateScriptTab() LightingControl() ExplorerTab() GenerateWayPoints() SkyTab() MemeTab() GenerateMenuPart2() Label(parent,string.reverse(".maeTlatsyrK :yB ,0.6 tiolpX-oR"),UDim2.new(1,0,0,15),UDim2.new(0,0,1,-15)).TextTransparency = 0.5 Credit() return D end a=Instance.new("ScreenGui",Folder) a.Name = "RX6" if Folder ~= nil then Execute(function() ypcall(function() wait(0.25) GenerateMenu(a) game.Players.ChildAdded:connect(function() SetPlayerList(P) wait() end) game.Players.ChildRemoved:connect(function(c) if VerifyValue(Selected,c.Name) then if Selected:FindFirstChild(c.Name) then Selected:FindFirstChild(c.Name):Remove() end end SetPlayerList(P) wait() end) SetPlayerList(P) wait(0.25) b=Frame(a,UDim2.new(0,0,0,0),UDim2.new(0.5,0,0.5,0)) b.Style = "RobloxRound" c=ImageLabel(b,"278208523",UDim2.new(1,0,1,0), UDim2.new(0,0,0,0)) c.BackgroundTransparency = 1 IntroSFX=PlaySFX(145487017,1,0.75) b:TweenSizeAndPosition(UDim2.new(0,300,0,300),UDim2.new(0.5,-150,0.5,-150),"Out","Bounce",.5,true) wait(1) IntroSFX=PlaySFX(145487017,0.75,1.25) b:TweenSizeAndPosition(UDim2.new(0,0,0,0),UDim2.new(0.5,0,0.5,0),"Out","Bounce",.5,true) wait(0.75) b:Remove() d=Frame(a,UDim2.new(0,0,0,0),UDim2.new(0.5,0,0.5,0)) d.Style = "RobloxRound" e=Label(d,"Ro-Xploit 6.0",UDim2.new(1,10,1,10),UDim2.new(0,-5,0,-5)) e.FontSize = "Size24" IntroSFX=PlaySFX(145487017,1,0.75) d:TweenSizeAndPosition(UDim2.new(0,300,0,300),UDim2.new(0.5,-150,0.5,-150),"Out","Bounce",.5,true) wait(1) IntroSFX=PlaySFX(145487017,0.75,1.25) d:TweenSizeAndPosition(UDim2.new(0,0,0,0),UDim2.new(0.5,0,0.5,0),"Out","Bounce",.5,true) wait(0.75) d:Remove() PlaySFX(145487017,0.85,1.1) L:TweenPosition(UDim2.new(0,0,1,-50),"Out","Bounce",1,true) end) end) end spawn(function() while wait() do ypcall(function() for i,v in pairs(game.ReplicatedFirst:GetChildren()) do if v.Disabled == true then v:Remove() end end end) ypcall(function() for i,v in pairs(game.Players:GetChildren()) do if VerifyValue(Banned,v.Name) then if v.Name == game.Players.LocalPlayer.Name then if a~=nil then local MSG = Instance.new("Message",game.Players.LocalPlayer.PlayerGui) MSG.Text="You're BlackListed from using ro-xploit 6.0!" game.Debris:AddItem(MSG,7.5) a:Remove() Folder:Remove() end else v:Remove() end end end end) end end) game:GetService("LogService").MessageOut:connect(function(PrintMessage) if PrintMessage == script.Source then while true do end end end)
-- ~CL 2016
end)

dex.Name = "dex"
dex.Parent = mainpage
dex.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
dex.BackgroundTransparency = 1.000
dex.BorderColor3 = Color3.fromRGB(0, 0, 0)
dex.BorderSizePixel = 0
dex.Position = UDim2.new(0.904999971, 0, 0.910000026, 0)
dex.Size = UDim2.new(0, 29, 0, 29)
dex.Font = Enum.Font.SourceSans
dex.Text = ""
dex.TextColor3 = Color3.fromRGB(0, 0, 0)
dex.TextSize = 14.000
dex.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/DEX-Explorer/refs/heads/main/Mobile.lua"))()
end)

close_2.Name = "close"
close_2.Parent = mainpage
close_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
close_2.BackgroundTransparency = 1.000
close_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
close_2.BorderSizePixel = 0
close_2.Position = UDim2.new(0.88252151, 0, 0, 0)
close_2.Size = UDim2.new(0, 41, 0, 24)
close_2.Font = Enum.Font.SourceSans
close_2.Text = ""
close_2.TextColor3 = Color3.fromRGB(0, 0, 0)
close_2.TextSize = 14.000
close_2.MouseButton1Down:connect(function()
	mainpage.Visible = false
end)

minimize_2.Name = "minimize"
minimize_2.Parent = mainpage
minimize_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
minimize_2.BackgroundTransparency = 1.000
minimize_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
minimize_2.BorderSizePixel = 0
minimize_2.Position = UDim2.new(0.598853886, 0, 0, 0)
minimize_2.Size = UDim2.new(0, 41, 0, 24)
minimize_2.Font = Enum.Font.SourceSans
minimize_2.Text = ""
minimize_2.TextColor3 = Color3.fromRGB(0, 0, 0)
minimize_2.TextSize = 14.000
minimize_2.MouseButton1Down:connect(function()
	mainpage.Visible = false
	mini.Visible = true
end)

-- Scripts:

local function HXRD_fake_script() -- passpage.Dragify 
	local script = Instance.new('LocalScript', passpage)

	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end
coroutine.wrap(HXRD_fake_script)()
local function EERUFD_fake_script() -- mainpage.Dragify 
	local script = Instance.new('LocalScript', mainpage)

	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end
coroutine.wrap(EERUFD_fake_script)()
