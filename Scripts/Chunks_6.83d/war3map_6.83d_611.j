
// 69214 ~ 69228
function Func3255 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    call UnitRemoveAbility(loc_unit01,'A1OL')
    call UnitRemoveAbility(loc_unit01,'A1ON')
    call UnitRemoveAbility(loc_unit01,'A1OO')
    call UnitRemoveAbility(loc_unit01,'A1OM')
    call UnitRemoveAbility(loc_unit01,'B04J')
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 69230 ~ 69254
function Func3256 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A1OP')
    if loc_integer02==1 then
        call Func0193(loc_unit01,'A1OL')
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1OL',false)
    elseif loc_integer02==2 then
        call Func0193(loc_unit01,'A1ON')
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1ON',false)
    elseif loc_integer02==3 then
        call Func0193(loc_unit01,'A1OO')
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1OO',false)
    elseif loc_integer02==4 then
        call Func0193(loc_unit01,'A1OM')
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1OM',false)
    endif
    call TriggerRegisterTimerEvent(loc_trigger01,8+2*loc_integer02,false)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3255))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    set loc_unit01=null
    set loc_trigger01=null
endfunction

// 69256 ~ 69261
function Func3257 takes nothing returns boolean
    if GetSpellAbilityId()=='A1OP' then
        call Func3256()
    endif
    return false
endfunction

// 69263 ~ 69268
function Func3258 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3257))
    set loc_trigger01=null
endfunction
