print("DebugEnabled")
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/memejames/elerium-v2-ui-library//main/Library", true))()


task.wait(0.1)
local playthemesong = Instance.new("Sound")
playthemesong.SoundId = "rbxassetid://98107180135263"
playthemesong.Volume = 10
playthemesong.Parent = game.SoundService
playthemesong:Play()


local window = library:AddWindow("Black Mesa Research Facility Incident +", {
	main_color = Color3.fromRGB(0, 1, 0), -- Color
	min_size = Vector2.new(250, 346), -- Size of the gui
	can_resize = true, -- true or false
})


local features = window:AddTab("Black Mesa Roleplay Functions") -- Name of tab
features:Show() -- shows the tab


features:AddButton("Get All Weapons",function()
	for _, v in pairs(game:GetService("ReplicatedStorage").Common.CGS.Weapons:GetChildren()) do
	  game:GetService("ReplicatedStorage").LoadoutGP:FireServer(v.Name)
end)


features:AddTextBox("Gamepass Gun", function(text) -- u can add any text to "text"
	game:GetService("ReplicatedStorage").LoadoutGP:FireServer(text)
end)


features:AddTextBox("Primary Gun", function(pri) -- u can add any text to "text"
	game:GetService("ReplicatedStorage").LoadoutPrimary:FireServer(pri)
end)


features:AddTextBox("Secondary Gun", function(sec) -- u can add any text to "text"
	game:GetService("ReplicatedStorage").LoadoutSecondary:FireServer(sec)
end)


features:AddTextBox("Team Loadout", function(tlod) -- u can add any text to "text"
	game:GetService("ReplicatedStorage").LoadoutMelee(tlod)
end)


features:AddTextBox("Teleport To Player", function(plr) -- u can add any text to "text"
  local a0 = game.Workspace[plr].HumanoidRootPart
  local a1 = game.Players.LocalPlayer.Character.HumanoidRootPart
  a1.CFrame = a0.CFrame
end)