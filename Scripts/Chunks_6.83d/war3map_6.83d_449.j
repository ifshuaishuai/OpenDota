
// 57786 ~ 57797
function Func2602 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    call SetUnitAbilityLevel(loc_unit01,'A09E',GetUnitAbilityLevel(loc_unit01,'A0BE'))
    call UnitRemoveAbility(loc_unit01,'B09Y')
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 57799 ~ 57808
function Func2603 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call TriggerRegisterTimerEvent(loc_trigger01,0,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2602))
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 57810 ~ 57816
function Func2604 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_FINISH)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2601))
    call TriggerAddAction(loc_trigger01,function Func2603)
endfunction
