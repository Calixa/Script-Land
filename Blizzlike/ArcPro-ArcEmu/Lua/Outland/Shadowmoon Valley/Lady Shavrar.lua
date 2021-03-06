--[[ WoTD License - 
This software is provided as free and open source by the
team of The WoTD Team. This script was written and is
protected by the GPL v2. Please give credit where credit
is due, if modifying, redistributing and/or using this 
software. Thank you.
Thank: WoTD Team; for the Script
~~End of License... Please Stand By...
-- WoTD Team, Janurary 19, 2010. ]]

function LadyShavRar_OnEnterCombat(Unit,Event)
	Unit:RegisterEvent("LadyShavRar_ArcaneBolt", 8500, 0)
	Unit:RegisterEvent("LadyShavRar_Freeze", 43000, 0)
end

function LadyShavRar_ArcaneBolt(Unit,Event)
	Unit:FullCastSpellOnTarget(13901, Unit:GetClosestPlayer())
end

function LadyShavRar_Freeze(Unit,Event)
	Unit:FullCastSpellOnTarget(38035, Unit:GetClosestPlayer())
end

function LadyShavRar_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

function LadyShavRar_OnDied(Unit,Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(20684, 1, "LadyShavRar_OnEnterCombat")
RegisterUnitEvent(20684, 2, "LadyShavRar_OnLeaveCombat")
RegisterUnitEvent(20684, 4, "LadyShavRar_OnDied")