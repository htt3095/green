function DefenseBugAllowanceAndShield()
    local activations = getactivations()
    local reduction = math.min(activations * 3, 20)
    local defenseBug = 50 - reduction
    
    if defenseBug > 0 then
        buff("Self", "DefenseBug", defenseBug, 1, 0)
    end
    
    local currentDefenseBug = getbuff("Self", "DefenseBug", "stack")
    if currentDefenseBug > 0 then
        shield("Self", currentDefenseBug * 40)
    end
end