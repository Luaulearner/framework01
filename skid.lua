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
   Name = "97% 100+ KG.",
   Callback = function()
   local args = {
    [1] = math.huge,
    [2] = true
}

game:GetService("ReplicatedStorage").events.reelfinished:FireServer(unpack(args))

   end,
})

local Button = Tab:CreateButton({
   Name = "Fish",
   Callback = function()
   local args = {
    [1] = 100,
    [2] = 1
}

game:GetService("Players").LocalPlayer.Character:FindFirstChild("Seraphic Rod 2").events.cast:FireServer(unpack(args))

   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Auto Shake",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
     if Value == true then
       while task.wait(0.1) do
  game:GetService("Players").LocalPlayer.PlayerGui.shakeui.safezone.button.RemoteEvent:FireServer()
  else
    warn("Turned Off Auto Shake.")
       end
    end
   end,
})

local Button = Tab:CreateButton({
   Name = "Notify Player Speed",
   Callback = function()
   Rayfield:Notify({
   Title = "Current Speed Value",
   Content = "You are at the rate of ".. game.Players.LocalPlayer.Character.Humanoid.WalkSpeed,
   Duration = 3,
   Image = "car",
})
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


local STab = Window:CreateTab("External GUI's", "app-window-mac")
local Section = STab:CreateSection("Debugs")


local Button = STab:CreateButton({
   Name = "#1 RemoteSpy Mobile / PC",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/raelhubfunctions/Save-scripts/refs/heads/main/SimpleSpyMobile.lua"))()
   end,
})


local Button = STab:CreateButton({
   Name = "#2 Keyless Dex Explorer Mobile / PC",
   Callback = function()
   loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Keyless-Mobile-Dex-Reupload-22707"))()
   end,
})

local Paragraph = STab:CreateParagraph({Title = "On how we will expand this section of the script:", Content = "On the discord server you will have to go to the section 2 gui's suggestion channel to suggest obviously and make sure to add a script while explaining what it does, its self explanatory."})


