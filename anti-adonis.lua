local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local customPrint = loadstring(game:HttpGet("https://github.com/uken2525v3/UniversalUken/raw/refs/heads/main/custom_print.lua"))()
local loadText = customPrint.new("-")

do
	loadText:setText("Attempt to load Anti-Adonis...")
	loadText:setColor3(Color3.new(1, 1, 0))

	task.wait(1)
	
	local Success = pcall(function()
		for _, value in next, getgc(true) do 
			if typeof(value) == 'table' then
				if rawget(value, "indexInstance") or rawget(value, "newindexInstance") or rawget(value, "newIndexInstance") then 
					value.tvk = {"kick", function() return task.wait(9e9) end} 
				end
			end
		end
	end)

	if not Success then
		local Message = "Anti-Adonis load failed: Please check if your executor supports getgc() function or try again..."
		
		loadText:setText(Message)
		loadText:setColor3(Color3.new(1, 0, 0))
		
		LocalPlayer:Kick(Message)
	else
		loadText:setText("Anti-Adonis cooldown...")
		task.wait(1)
		loadText:setText("Anti-Adonis loaded successfully!")
		loadText:setColor3(Color3.new(0, 1, 0))
	end
end
