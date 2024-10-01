
// 68058 ~ 68064
function Func3184 takes nothing returns nothing
    local location loc_location01=GetSpellTargetLoc()
    call Func0163("Abilities\\Spells\\Orc\\EarthQuake\\EarthQuakeTarget.mdl",GetLocationX(loc_location01),GetLocationY(loc_location01),2)
    call TerrainDeformationRippleBJ(0.3,false,loc_location01,0,300,100,0.4,20)
    call RemoveLocation(loc_location01)
    set loc_location01=null
endfunction

// 68066 ~ 68071
function Func3185 takes nothing returns boolean
    if GetSpellAbilityId()=='A06W' then
        call Func3184()
    endif
    return false
endfunction

// 68073 ~ 68077
function Func3186 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3185))
endfunction
