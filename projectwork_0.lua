getgenv().pw_0id = 1000

getgenv().pw_0creator = game.Players:FindFirstChild("Contrsution")
local I = Instance.new("Sound")
I.SoundId = "rbxassetid://18204124897"
I.Volume = math.huge
I.Parent = game:GetService("SoundService")
I:Play()
--/-/-/-/-/-/-/-/--
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/memejames/elerium-v2-ui-library//main/Library", true))()


local window = library:AddWindow("Black Mesa Research Facility Incident +", {
	main_color = Color3.fromRGB(0, 1, 0), -- Color
	min_size = Vector2.new(250, 346), -- Size of the gui
	can_resize = true, -- true or false
})

---0999090836

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