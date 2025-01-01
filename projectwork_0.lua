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
theframe.Size = UDim2.new(999, 999, 999)
local playthemesong = Instance.new("Sound")
playthemesong.SoundId = "rbxassetid://98107180135263"
playthemesong.Volume = 10
playthemesong.Parent = game.SoundService
playthemesong:Play()

playthemesong.Ended:Connect(function()
  

local window = library:AddWindow("Black Mesa Research Facility Incident +", {
	main_color = Color3.fromRGB(0, 1, 0), -- Color
	min_size = Vector2.new(250, 346), -- Size of the gui
	can_resize = true, -- true or false
})



end