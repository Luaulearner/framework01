getgenv().delpl = function(bool)
local e = workspace.CurrentCamera
local a = Instance.new("Part")
local bee = bool
if bee == true then
a.Parent = workspace
a.Position = Vector3.new(9999999, 999999999, 99999999)
e.CameraSubject = a
e.CameraType = Enum.CameraType.Custom
else
  e.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
  e.CameraType = Enum.CameraType.Custom
end
end