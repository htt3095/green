function IShallGiveYouSomeQuarters_main()
    local round = round()
    local turnCycle = math.floor(round / 2)
    local maxCycles = 3
    
    if turnCycle > maxCycles then
        turnCycle = maxCycles
    end
    
    local bonus = turnCycle * 2
    
    if bonus > 0 then
        buf("Self", "Vulnerable", bonus, 1, 1)
        buf("Self", "AttackDmgUp", bonus, 1, 1)
    end
    
    log("IShallGiveYouSomeQuarters: Round " .. round .. ", Cycle: " .. turnCycle .. ", Bonus: " .. bonus)
end