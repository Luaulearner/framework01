--[[
Do not skid please, you will be taken action if you skid this.
]]
--Start--
if not game:IsLoaded() then
  repeat
    task.wait()
    until game:IsLoaded()
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/memejames/elerium-v2-ui-library//main/Library", true))()
task.wait(0.1)
local blackscreen = Instance.new("ScreenGui")
blackscreen.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
local theframe = Instance.new("Frame")
theframe.Parent = blackscreen
theframe.Size = UDim2.new(999, 999, 999, 999)
theframe.BackgroundColor2 = Color3.fromRGB(0, 0, 0)
local playthemesong = Instance.new("Sound")
playthemesong.SoundId = "rbxassetid://98107180135263"
playthemesong.Volume = 10
playthemesong.Parent = game.SoundService
playthemesong:Play()

playthemesong.Ended:Connect(function()
  blackscreen:Destroy()
  task.wait(0.1)
  -- Create a ScreenGui to hold the TextLabel
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create a TextLabel
local textLabel = Instance.new("TextLabel")
textLabel.Parent = screenGui
textLabel.Position = UDim2.new(0.5, -100, 0.5, -50)  -- Position the text in the center
textLabel.Size = UDim2.new(0, 200, 0, 50)  -- Size the TextLabel (200x50 pixels)
textLabel.Text = "Thank you, and enjoy this script."  -- The text that will appear
textLabel.TextColor3 = Color3.fromRGB(255, 1, 0)  -- Set text color (white)
textLabel.BackgroundTransparency = 1  -- Make the background transparent
textLabel.TextScaled = true  -- Automatically scale the text size
textLabel.Font = Enum.Font.Title -- Set font type
task.wait(3)
screenGui:Destroy()
local window = library:AddWindow("Black Mesa Research Facility Incident +", {
	main_color = Color3.fromRGB(0, 1, 0), -- Color
	min_size = Vector2.new(250, 346), -- Size of the gui
	can_resize = true, -- true or false
})



end