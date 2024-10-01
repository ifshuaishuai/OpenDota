
// 57564 ~ 57571
function Func2585 takes nothing returns boolean
    local integer loc_integer01
    if IsUnitIllusion(GetTriggerUnit())and(GetUnitTypeId(GetTriggerUnit())=='Ucrl' or GetUnitTypeId(GetTriggerUnit())=='U01X')then
        set loc_integer01=GetUnitAbilityLevel((LoadUnitHandle(hashtable001,(GetHandleId(GetTriggeringTrigger())),(298))),'A0CY')
        call SetUnitScale(GetTriggerUnit(),0.5+0.25*loc_integer01,0.5+0.25*loc_integer01,0.5+0.25*loc_integer01)
    endif
    return false
endfunction

// 57573 ~ 57617
function Func2586 takes nothing returns nothing
    local trigger loc_trigger01
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A0CY')
    local unit loc_unit02
    local unit loc_unit03=GetTriggerUnit()
    local region loc_region01
    if loc_integer01==1 then
        set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit03),'e01V',0,0,0)
        call Func0193(loc_unit02,'A10B')
        call SaveUnitHandle(hashtable001,(GetHandleId(loc_unit03)),(297),(loc_unit02))
    else
        set loc_unit02=(LoadUnitHandle(hashtable001,(GetHandleId(loc_unit03)),(297)))
    endif
    if loc_integer01==2 then
        call UnitRemoveAbility(loc_unit02,'A10B')
        call Func0193(loc_unit02,'A10A')
    elseif loc_integer01==3 then
        call UnitRemoveAbility(loc_unit02,'A10B')
        call UnitRemoveAbility(loc_unit02,'A10A')
        call Func0193(loc_unit02,'A0ZS')
    endif
    call SetPlayerTechResearched(GetOwningPlayer(loc_unit01),'R00E',loc_integer01)
    if loc_integer01==1 then
        set loc_trigger01=CreateTrigger()
        call TriggerAddAction(loc_trigger01,function Func2584)
        call TriggerRegisterTimerEvent(loc_trigger01,2.00,true)
        call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(298),(loc_unit01))
        call SetUnitScale(loc_unit01,0.5+0.25*loc_integer01,0.5+0.25*loc_integer01,0.5+0.25*loc_integer01)
        set loc_trigger01=CreateTrigger()
        set loc_region01=CreateRegion()
        call RegionAddRect(loc_region01,GetWorldBounds())
        call TriggerRegisterEnterRegion(loc_trigger01,loc_region01,Condition(function Func0175))
        call TriggerAddCondition(loc_trigger01,Condition(function Func2585))
        call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(298),(loc_unit01))
        set loc_trigger01=null
        set loc_region01=null
        set loc_trigger01=CreateTrigger()
        call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(2),(loc_unit01))
        call TriggerRegisterTimerEvent(loc_trigger01,0.5,true)
        set loc_trigger01=null
    endif
    set loc_unit03=null
    set loc_unit02=null
endfunction

// 57619 ~ 57629
function Func2587 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2583))
    call TriggerAddAction(loc_trigger01,function Func2586)
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2579))
    call Func2575()
    set loc_trigger01=null
endfunction
