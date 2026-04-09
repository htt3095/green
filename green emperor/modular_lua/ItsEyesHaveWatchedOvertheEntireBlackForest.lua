function ItsEyesHaveWatchedOvertheEntireBlackForest_main()
    local binding = bufcheck("Self", "Binding", "stack")
    local agilityBonus = math.floor(binding / 2)
    
    if agilityBonus > 2 then
        agilityBonus = 2
    end
    
    if agilityBonus > 0 then
        local slowestAlly = selecttargets("SlowestAllyExceptSelf99")
        if slowestAlly ~= nil and #slowestAlly > 0 then
            buf(slowestAlly[1], "Agility", agilityBonus, 1, 1)
        end
    end
    
    local speed = speedcheck("Self")
    local slowest = selecttargets("SlowestAll")
    local isSlowest = false
    
    if slowest ~= nil and #slowest > 0 then
        local slowestSpeed = speedcheck(slowest[1])
        if speed <= slowestSpeed then
            isSlowest = true
        end
    end
    
    if isSlowest then
        if speed == 1 then
            dmgmult(20)
        else
            dmgmult(10)
        end
    end
end