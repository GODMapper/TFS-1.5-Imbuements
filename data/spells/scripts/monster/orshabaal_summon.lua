local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_NONE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_LOSEENERGY)

local maxsummons = 6

function onCastSpell(creature, var)
	local summoncount = creature:getSummons()
	if #summoncount < 6 then
		mid = Game.createMonster("Orshabaal", creature:getPosition())
    	if not mid then
			return
		end
		mid:setMaster(creature)
	end
return combat:execute(creature, var)
end
