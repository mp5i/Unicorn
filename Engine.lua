local Engine = {}

Engine.IsValid = function(Object)
    if (Object ~= "" or Object ~= nil) then
        return true
    end
end

Engine.GetClass = function(Class)
    if (Engine.IsValid(Class)) then
        if (Class == "Players" or Class == "StarterGui" or Class == "Workspace" or Class == "ReplicatedStorage") then
            return Engine.FindMember(game, Class, "t1")
        end
    end
end

Engine.GetService = function(Service)
    if (Engine.IsValid(Service)) then
        if (Service == "RunService" or Service == "GuiService" or Service == "UserInputService" or Service == "VirtualInputManager") then
            return game:GetService(Service)
        end
    end         
end

Engine.FindMember = function(Class, Member, Method)
    if (Engine.IsValid(Class) and Engine.IsValid(Member) and Engine.IsValid(Method)) then
        if (Method == "t1") then
            return Class:FindFirstChild(Member)
        elseif (Method == "t2") then
            return Class:FindFirstChildWhichIsA(Member)
        end
    end
end
