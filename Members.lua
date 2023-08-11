local a = loadstring(game:HttpGet("https://github.com/mp5i/Unicorn/blob/main/Engine.lua"))()

local Members = {}

Members.GetRunService = function(Member)
    if (Member == "RenderStepped") then
        return a.Engine.GetService("RunService").RenderStepped
    end
end

Members.GetRunService("RenderStepped"):Connect(function()
            a.Engine.GetClass("StarterGui"):SetCore("SendNotification", {Title = "LOL", Text = "LOL", Duration = 3})
    end)
