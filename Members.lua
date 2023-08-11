local Members = {}

Members.GetRunService = function(Member)
    if (Member == "RenderStepped") then
        return Engine.GetService("RunService").RenderStepped
    end
end
