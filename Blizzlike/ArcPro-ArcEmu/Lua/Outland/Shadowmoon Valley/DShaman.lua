--[[ WoTD License - 
This software is provided as free and open source by the
team of The WoTD Team. This script was written and is
protected by the GPL v2. Please give credit where credit
is due, if modifying, redistributing and/or using this 
software. Thank you.
Thank: WoTD Team; for the Script
~~End of License... Please Stand By...
-- WoTD Team, Janurary 19, 2010. ]]

function DShaman_OnEnterCombat(Unit,Event)
	Unit:RegisterEvent("DShaman_LShield", 20000, 0)
	Unit:RegisterEvent("DShaman_Bloodlust", 33000, 0)
end

function DShaman_LShield(Unit,Event)
	Unit:CastSpell(12550)
end

function DShaman_Bloodlust(Unit,Event)
	Unit:CastSpell(6742)
end

function DShaman_OnDied(Unit,Event)
	Unit:RemoveEvents()
end

function DShaman_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(21720, 1, "DShaman_OnEnterCombat")
RegisterUnitEvent(21720, 2, "DShaman_OnLeaveCombat")
RegisterUnitEvent(21720, 4, "DShaman_OnDied")