

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()


local Window = Rayfield:CreateWindow({
   Name = "Unb3arable",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "[ Solo Project ]",
   LoadingSubtitle = "Welcome ".. game.Players.LocalPlayer.Name .. ":UN3Member",
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
      Title = "UNB3ARABLE",
      Subtitle = "UN3K",
      Note = "Hey ".. game.Players.LocalPlayer.Name, -- Use this to tell the user how to get a key
      FileName = "moneyy069", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"https://pastebin.com/raw/NrVWccnk"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})


local p = game.Players.LocalPlayer

local MainTab = MainWindow:CreateTab(p.Name .. p.DisplayName, "circle-user-round")


local Section = MainTab:CreateSection(p.UserId)


local Button = MainTab:CreateButton({
   Name = "Reverse Engineering",
   Callback = function()
   Rayfield:Notify({
   Title = "Notification Title",
   Content = "Sorry, A bit troublesome. RE is not yet out.",
   Duration = 6,
   Image = "file-terminal",
})
   end,
})


for _, v in pairs(game:GetService("ReplicatedStorage").Common.CGS.Weapons:GetChildren()) do
  getgenv().getgunss01 = v
end



local Dropdown = MainTab:CreateDropdown({
   Name = "All Weapons.",
   Options = {getgunss01.Name},
   CurrentOption = nil,
   MultipleOptions = true,
   Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(gun)
    game:GetService("ReplicatedStorage").LoadoutGP:FireServer(gun)
	  game:GetService("ReplicatedStorage").LoadoutPrimary:FireServer(gun)
	  game:GetService("ReplicatedStorage").LoadoutSecondary:FireServer(gun)
   end,
})