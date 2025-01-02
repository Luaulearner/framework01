print("Welcome Freeman.")
local phu = Instance.new("Sound")
phu.Parent = game.SoundService
phu.SoundId = "rbxassetid://139542639"
phu.Volume = 10
---
local core = Instance.new("ScreenGui")
core.Parent = game.CoreGui
local core2 = Instance.new("Frame")
core2.Parent = core
core2.Size = UDim2.new(0.8, 20, 0.8, 20)
core2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
task.wait(1)
core2.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
phu.Ended:Connect(function(yeahiteneded)
  core2:Destroy()
  core:Destroy()
  local newsoundserv = Instance.new("Sound")
  newsoundserv.Parent = game.SoundService
  newsoundserv.Volume = 10
  newsoundserv.SoundId = "rbxassetid://8505749045"
  end)
print("DebugEnabled")
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/memejames/elerium-v2-ui-library//main/Library", true))()


local window = library:AddWindow("Black Mesa Research Facility Incident +", {
	main_color = Color3.fromRGB(0, 1, 0), -- Color
	min_size = Vector2.new(250, 346), -- Size of the gui
	can_resize = true, -- true or false
})

local debugkey = "pw0nigpal" -- dont bother it doesnt work


local features = window:AddTab("Black Mesa Roleplay Functions") -- Name of tab
features:Show()


features:AddButton("Get All Weapons",function()
	for _, v in pairs(game:GetService("ReplicatedStorage").Common.CGS.Weapons:GetChildren()) do
	  game:GetService("ReplicatedStorage").LoadoutGP:FireServer(v.Name)
	  game:GetService("ReplicatedStorage").LoadoutPrimary:FireServer(v.Name)
	  game:GetService("ReplicatedStorage").LoadoutSecondary:FireServer(v.Name)
	  end
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
	game:GetService("ReplicatedStorage").LoadoutMelee:FireServer(tlod)
end)


features:AddTextBox("Teleport To Player", function(plr) -- u can add any text to "text"
  local a0 = game.Workspace[plr].HumanoidRootPart
  local a1 = game.Players.LocalPlayer.Character.HumanoidRootPart
  a1.CFrame = a0.CFrame
end)


local features = window:AddTab("Debugging") -- Name of tab
features:Show() -- shows the tab


-- Add console for ur Script/Gui, Idk if works
features:AddConsole({ 
	["y"] = 250,
	["readonly"] = false,  
	["source"] = "Lua",
})