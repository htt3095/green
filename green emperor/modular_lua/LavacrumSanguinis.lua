function LavacrumSanguinis_main()
    local roundNum = round()
    local lastAction = getdata("Self", 3300)
    local hasLavacrum = bufcheck("Self", "LavacrumSanguinis", "stack")
    
    if lastAction == roundNum then
        return
    end
    
    if hasLavacrum > 0 then
        buf("Self", "LavacrumSanguinis", -1, 0, 0)
        buf("Self", "RitusAntebellum", 1, 1, 1)
    else
        buf("Self", "LavacrumSanguinis", 1, 1, 1)
        buf("Self", "RitusAntebellum", -1, 0, 0)
    end
    
    setdata("Self", 3300, roundNum)
end

function LavacrumSanguinis_start()
    local started = getdata("Self", 3301)
    
    if started == 0 then
        buf("Self", "RitusAntebellum", 1, 0, 0)
        setdata("Self", 3301, 1)
    end
end

function LavacrumSanguinis_skills()
    local hasLavacrum = bufcheck("Self", "LavacrumSanguinis", "stack")
    
    if hasLavacrum > 0 then
        skillslotreplace("All", 400012010, 400012060)
        skillslotreplace("All", 400012020, 400012070)
        skillslotreplace("All", 400012030, 400012080)
        skillslotreplace("All", 400012050, 400012090)
        appearance("Self", "9999_Vergilius_EgoAppearance")
    else
        skillslotreplace("All", 400012060, 400012010)
        skillslotreplace("All", 400012070, 400012020)
        skillslotreplace("All", 400012080, 400012030)
        skillslotreplace("All", 400012090, 400012050)
        appearance("Self", "400012_VergiliusAppearance")
    end
end