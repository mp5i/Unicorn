loadstring(game:HtppGet("https://github.com/mp5i/Unicorn/blob/main/Engine.lua"))()

local Members = {}

Members.GetRunService = function(Member)
    if (Member == "RenderStepped") then
        return Engine.GetService("RunService").RenderStepped
    end
end

Members.GetRunService("RenderStepped"):Connect(function()
            Engine.GetClass("StarterGui"):SetCore("SendNotification", {Title = "LOL", Text = "LOL", Duration = 3})
    end)
