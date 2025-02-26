local p = game.Players.LocalPlayer
if p.Team and p.Team == game.Teams["Test Subject"] or p.Team and p.Team == game.Teams["Test Subject"] then
local args = {
    [1] = "Product",
    [2] = "M4"
}

game:GetService("ReplicatedStorage").Remotes.ProductPurchase:FireServer(unpack(args))
--{?}--
task.wait(0.4)
local args = {
    [1] = "Product",
    [2] = "A Keycard"
}

game:GetService("ReplicatedStorage").Remotes.ProductPurchase:FireServer(unpack(args))
end