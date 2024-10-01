
// 43399 ~ 43427
function Func1710 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02
    local integer loc_integer01=GetHandleId(loc_unit01)
    local location loc_location01=GetSpellTargetLoc()
    local real loc_real01=Func0169(GetUnitX(loc_unit01),GetUnitY(loc_unit01),GetLocationX(loc_location01),GetLocationY(loc_location01))
    local real loc_real02=GetUnitX(loc_unit01)
    local real loc_real03=GetUnitY(loc_unit01)
    call RemoveLocation(loc_location01)
    call SetUnitPathing(loc_unit01,false)
    call Func0193(loc_unit01,'Aeth')
    set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'h06K',GetUnitX(loc_unit01),GetUnitY(loc_unit01),loc_real01)
    call Func0221(loc_unit02,5)
    call SetUnitPathing(loc_unit02,false)
    call Func0193(loc_unit02,'Aeth')
    call Func0193(loc_unit02,'Aloc')
    call Func0193(loc_unit02,'A04R')
    call SetUnitVertexColor(loc_unit02,255,255,255,0)
    call SetUnitX(loc_unit02,loc_real02)
    call SetUnitY(loc_unit02,loc_real03)
    call SetUnitX(loc_unit01,loc_real02)
    call SetUnitY(loc_unit01,loc_real03)
    call SetUnitAnimation(loc_unit02,"Spell Throw")
    call SetUnitPathing(loc_unit01,true)
    call UnitRemoveAbility(loc_unit01,'Aeth')
    call SaveUnitHandle(hashtable001,(loc_integer01),(293),(loc_unit02))
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 43429 ~ 43438
function Func1711 takes nothing returns boolean
    if GetSpellAbilityId()=='AEbl' then
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT then
            call Func1709()
        else
            call Func1710()
        endif
    endif
    return false
endfunction

// 43440 ~ 43449
function Func1712 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1711))
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1711))
    set loc_trigger01=null
    call Func0237('h06K')
endfunction
