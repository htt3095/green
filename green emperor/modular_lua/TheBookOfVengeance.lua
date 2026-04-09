function TheBookOfVengeance_main()
    local roundNum = round()
    local lastRound = getdata("Self", 3101)
    
    if lastRound ~= roundNum then
        setdata("Self", 3100, 0)
        setdata("Self", 3101, roundNum)
    end
end

function TheBookOfVengeance_skill_hit()
    local roundNum = round()
    local lastRound = getdata("Self", 3101)
    
    if lastRound ~= roundNum then
        setdata("Self", 3100, 1)
        setdata("Self", 3101, roundNum)
        return
    end
    
    local skillHitCount = getdata("Self", 3100)
    skillHitCount = skillHitCount + 1
    setdata("Self", 3100, skillHitCount)
    
    if skillHitCount > 3 then
        local excess = skillHitCount - 3
        buf("Self", "ReinforcedTattooSpider", excess, 1, 1)
    end
end