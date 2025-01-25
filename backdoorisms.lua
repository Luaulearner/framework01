getgenv().scan = function(number)
if number == 1 then
  for i = 1, 90 do
    task.wait(0.1)
    print("Finding ; { d00m }.")
  end
  elseif number == 2 then
    for i = 1, 100 do
      task.wait(0.2)
      print("Finding ; { r00m }.")
    end
  elseif number == 3 then
    for i = 1, 20 do
      task.wait(0.3)
      print("Finding ; { patched }.") -- most believavle
    end
end


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