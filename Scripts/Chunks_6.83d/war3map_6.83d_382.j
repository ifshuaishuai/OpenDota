
// 53240 ~ 53246
function Func2330 takes nothing returns nothing
    local unit loc_unit01=CreateUnit(GetOwningPlayer(unit296),'e022',GetUnitX(GetEnumUnit()),GetUnitY(GetEnumUnit()),270)
    call Func0193(loc_unit01,'A316')
    call SetUnitAbilityLevel(loc_unit01,'A316',GetUnitAbilityLevel(unit296,'A07Z'))
    call IssueTargetOrder(loc_unit01,"entanglingroots",GetEnumUnit())
    set loc_unit01=null
endfunction

// 53248 ~ 53272
function Func2331 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local destructable loc_destructable01=(LoadDestructableHandle(hashtable001,(loc_integer01),(834)))
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local group loc_group01
    if GetDestructableLife(loc_destructable01)<=0 then
        call KillUnit(loc_unit01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT and GetSpellAbilityId()=='A07Z' then
        set unit296=loc_unit02
        set loc_group01=Func0030()
        call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),825,Condition(function Func2318))
        call ForGroup(loc_group01,function Func2330)
        call Func0029(loc_group01)
    endif
    set loc_trigger01=null
    set loc_destructable01=null
    set loc_group01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 53274 ~ 53290
function Func2332 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local destructable loc_destructable01=GetSpellTargetDestructable()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'o02E',GetDestructableX(loc_destructable01),GetDestructableY(loc_destructable01),0)
    call SaveDestructableHandle(hashtable001,(loc_integer01),(834),(loc_destructable01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call TriggerRegisterTimerEvent(loc_trigger01,0.1,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2331))
    set loc_trigger01=null
    set loc_unit01=null
    set loc_destructable01=null
    set loc_unit02=null
endfunction

// 53292 ~ 53297
function Func2333 takes nothing returns boolean
    if GetSpellAbilityId()=='A01V' then
        call Func2332()
    endif
    return false
endfunction

// 53299 ~ 53304
function Func2334 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2333))
    set loc_trigger01=null
endfunction
