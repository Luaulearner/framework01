local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/memejames/elerium-v2-ui-library//main/Library", true))()
	
function SimpleDecompile(module)
    local Module = require(module)
    local DecompiledModule = ""

    local function processTable(tab, indent)
        for key, value in pairs(tab) do
            if typeof(value) == "table" then
                DecompiledModule = DecompiledModule .. ("\t"):rep(indent) .. key .. " = {\n"
                processTable(value, indent + 1)
                DecompiledModule = DecompiledModule .. ("\t"):rep(indent) .. "}\n"
            elseif typeof(value) == "function" then
                DecompiledModule = DecompiledModule .. ("\t"):rep(indent) .. key .. " = function()\n\t\t-- function body\n\tend,\n"
            else
                DecompiledModule = DecompiledModule .. ("\t"):rep(indent) .. key .. " = " .. tostring(value) .. ",\n"
            end
        end
    end

    processTable(Module, 0)
    
    return DecompiledModule
end


local window = library:AddWindow("{ } • { }", {
	main_color = Color3.fromRGB(0, 1, 0), -- Color
	min_size = Vector2.new(250, 346), -- Size of the gui
	can_resize = true, -- true or false
})

local features = window:AddTab("!") -- Name of tab
features:Show()


features:AddTextBox("decompile", function(v)
		local a = (v)
		local b = SimpleDecompile(a)
		print(b)
		end
end)



local function Label(text, text2)
	features:AddButton("", function()
			local a = text2
			local b = SimpleDecompile(a)
			print(b)
	end)
end

for i,v in pairs(game.ReplicatedStorage:GetDescendants()) do
	if v:IsA"ModuleScript" then
		Label(v.Name, v)
	end
end

for i,v in pairs(game.ReplicatedFirst:GetDescendants()) do
	if v:IsA"ModuleScript" then
		Label(v.Name, v)
	end
end

for i,v in pairs(game.Workspace:GetDescendants()) do
	if v:IsA"ModuleScript" then
	    Label(v.Name, v)
	end
end