local e = game.Players.LocalPlayer
local p = game.Players.LocalPlayer.Name
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "LocalPlayer's Rayfield Private Script",
   Icon = "barcode", -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Greetings ".. p,
   LoadingSubtitle = "🔥 Best Private Universal Script 🔥",
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "configconfigconfigconfig"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "〔 LocalPlayer's KeySystem 〕",
      Subtitle = "━━━━━━━━━",
      Note = "Buy the key to get access.", -- Use this to tell the user how to get a key
      FileName = "lpks", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Qwertykeyboard6942012345000", "watchingpornbadwatchhentaiinstead", "weirdasskeysystemngltspmo", "shutyobitchassuptspmoupmongl", "doubleniggaaaaaaaaa90", "®", "howtogethoesinminecraft691236912369123"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})


local Tab = Window:CreateTab("User", "box") -- Title, Image
local Section = Tab:CreateSection("Primary")

Rayfield:Notify({
   Title = "Script:",
   Content = "About the script, this is a very powerful universal script, please as you will just probably waste ur money if u leak it.",
   Duration = 6.5,
   Image = "candy",
})


local Button = Tab:CreateButton({
   Name = "Copy UserId",
   Callback = function()
   setclipboard(e.UserId)
   end,
})

local Button = Tab:CreateButton({
   Name = "Copy UserName",
   Callback = function()
   setclipboard(p)
   end,
})

local Button = Tab:CreateButton({
   Name = "Copy DisplayName",
   Callback = function()
     setclipboard(e.DisplayName)
   end,
})

local Input = Tab:CreateInput({
   Name = "Walkspeed",
   CurrentValue = "",
   PlaceholderText = "Your Speed Here",
   RemoveTextAfterFocusLost = true,
   Flag = "Input1",
   Callback = function(wspeed0)
     game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = wspeed0
   end,
})


local Input = Tab:CreateInput({
   Name = "JumpPower",
   CurrentValue = "",
   PlaceholderText = "Your JP Here",
   RemoveTextAfterFocusLost = false,
   Flag = "Input2",
   Callback = function(jp0)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = jp0
   end,
})