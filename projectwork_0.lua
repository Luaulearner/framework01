--[[
Do not skid please, you will be taken action if you skid this.
]]
--Start--
if not game:IsLoaded() then
  repeat
    task.wait()
    until game:IsLoaded()
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/memejames/elerium-v2-ui-library//main/Library", true))()


local window = library:AddWindow("", {
	main_color = Color3.fromRGB(41, 74, 122), -- Color
	min_size = Vector2.new(250, 346), -- Size of the gui
	can_resize = false, -- true or false
})


end