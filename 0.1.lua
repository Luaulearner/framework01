local medf = "https://www.mediafire.com/file/5nwg94panmux6gw/PULSE+(Extremly+Slowed).mp3/file"
local ap = "player000/r.mp3"

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