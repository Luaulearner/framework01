getgenv().delpl = function(bool)
local e = workspace.CurrentCamera
local a = Instance.new("Part")
local bee = bool
if bee == true then
  for _, v in pairs(game:GetDescendants()) do
    if v:IsA("Particle") or v:IsA("Mesh") or v:IsA("SpecialMesh") then
      v:Destroy()
    end
  end
a.Parent = workspace
a.Position = Vector3.new(9999999, 999999999, 99999999)
e.CameraSubject = a
e.CameraType = Enum.CameraType.Custom
else
  e.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
  e.CameraType = Enum.CameraType.Custom
end
end