getgenv().ss = function()
local medf = "https://drive.google.com/uc?export=download&id=1-I2R-ad97Wu959UD-3am9tRBmKeetV8t"
local ap = "player000/q.mp3"

if not isfile(ap) then
  warn("Not Downloaded.")
task.wait(1)
warn("Downloading..")
local htp = game:HttpGet(medf)
writefile(ap, htp)
print("Done!")
end
if isfile(ap) then
  local super = Instance.new("Sound")
  super.Parent = game.SoundService
  super.SoundId = getcustomasset(ap)
  super.Volume = math.huge
  super.Looped = true
  super:Play()
end
end