local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Undetectable Menu",
   Icon = "barcode", -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "It's worth it.",
   LoadingSubtitle = "Absolutely Overpowered.",
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "FTA Key System",
      Subtitle = "Not everything is keyless, but your in the goods, because the key is super easy, just guess it!",
      Note = "No method of obtaining the key is provided, try guessing.", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"super easy, just guess it!", "FTAkey69420", " plsfreerobux123000", "mynameiswhat?mynameisslimnigg-", " super éasy", "super easy"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})


local Tab = Window:CreateTab("Section One", "app-window-mac")
local Section = Tab:CreateSection("Auras")

local Button = Tab:CreateButton({
   Name = "Script Status",
   Callback = function()
   task.wait(1)
   Rayfield:Notify({
   Title = "Status;",
   Content = "Script Online.",
   Duration = 6.5,
   Image = nil,
})
   end,
})
local Input = Tab:CreateInput({
   Name = "Teleport To Aura",
   CurrentValue = "",
   PlaceholderText = "Aura Name",
   RemoveTextAfterFocusLost = false,
   Flag = "Input1",
   Callback = function(auraname)
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Morphs[auraname].CFrame
   end,
})


local Dropdown = Tab:CreateDropdown({
   Name = "Auras",
   Options = {workspace.Morphs},
   CurrentOption = {""},
   MultipleOptions = false,
   Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Options)
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Morphs[Options].CFrame
   end,
})