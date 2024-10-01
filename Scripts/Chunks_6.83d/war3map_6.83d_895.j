
// 91918 ~ 91931
function Func4437 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    if GetUnitAbilityLevel(loc_unit01,'B086')==0 and GetUnitAbilityLevel(loc_unit01,'B087')==0 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call UnitRemoveAbility(loc_unit01,'A2F2')
        call UnitRemoveAbility(loc_unit01,'B0F7')
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 91933 ~ 91945
function Func4438 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit02=GetSpellTargetUnit()
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),'A2F2',false)
    call Func0193(loc_unit02,'A2F2')
    call TriggerRegisterTimerEvent(loc_trigger01,0.2,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4437))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit02))
    set loc_unit01=null
    set loc_trigger01=null
endfunction

// 91947 ~ 91952
function Func4439 takes nothing returns boolean
    if GetSpellAbilityId()=='A2F0' then
        call Func4438()
    endif
    return false
endfunction

// 91954 ~ 91959
function Func4440 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4439))
    set loc_trigger01=null
endfunction
