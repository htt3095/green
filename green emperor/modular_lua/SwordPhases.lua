function SwordPhases_main()
    local hasTwo = bufcheck("Self", "MiddleFatherSwordTwo", "stack")
    local hasThree = bufcheck("Self", "MiddleFatherSwordThree", "stack")
    local hasFour = bufcheck("Self", "MiddleFatherSwordFour", "stack")
    
    if hasTwo > 0 then
        skillslotreplace("All", 1327060, 1327120)
        skillslotreplace("All", 1327010, 1327070)
        skillslotreplace("All", 1327020, 1327080)
        changedefense("Self", 1327110)
    end
    
    if hasThree > 0 then
        skillslotreplace("All", 1327060, 1341060)
        skillslotreplace("All", 1327120, 1341060)
        skillslotreplace("All", 1327010, 1341010)
        skillslotreplace("All", 1327070, 1341010)
        skillslotreplace("All", 1327020, 1341020)
        skillslotreplace("All", 1327080, 1341020)
        skillslotreplace("All", 1327030, 1341030)
        skillslotreplace("All", 1327100, 1341040)
        changedefense("Self", 1341050)
    end
    
    if hasFour > 0 then
        skillslotreplace("All", 1327060, 1341090)
        skillslotreplace("All", 1341060, 1341090)
        skillslotreplace("All", 1341030, 1341080)
        skillslotreplace("All", 1327010, 1341010)
        skillslotreplace("All", 1327070, 1341010)
        skillslotreplace("All", 1327020, 1341070)
        skillslotreplace("All", 1327080, 1341020)
        skillslotreplace("All", 1327030, 1341030)
        skillslotreplace("All", 1327100, 1341040)
        buf("Self", "MiddleFatherGuts", 1, 0, 0)
        appearance("Self", "1327_MiddleFinger_father_Phase4Appearance")
        changedefense("Self", 1341100)
    end
end