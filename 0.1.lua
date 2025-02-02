local p = game:GetService("Players")
local u = p.LocalPlayer
local targets = game:GetService("Teams"):FindFirstChild("Raiders")
local targets2 = game:GetService("Teams"):FindFirstChild("Outsiders")
for _, player in pairs(p:GetPlayers()) do
  if player ~= u and player.Team == targets2 or player.Team == targets then
    for _, v in pairs(workspace.GetDescendants()) do
      if v:IsA("Player") and v:FindFirstChild("HumanoidRootPart") then
        v.Size = Vector3.new(16, 15, 15)
        v.Collision = false
        v.Transparency = 0.9
        v.BrickColor = Color3.fromRGB(255, 0, 15)
      end
    end
  end
end