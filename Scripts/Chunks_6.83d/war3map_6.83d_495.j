
// 60955 ~ 60968
function Func2801 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    call UnitRemoveAbility(loc_unit01,'B02F')
    call UnitRemoveAbility(loc_unit01,'A2O9')
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A04Y',true)
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2O9',false)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 60970 ~ 60979
function Func2802 takes nothing returns boolean
    local trigger loc_trigger01
    if GetIssuedOrderId()==String2OrderIdBJ("manashieldon")and GetUnitAbilityLevel(GetTriggerUnit(),'A2O9')>0 then
        set loc_trigger01=CreateTrigger()
        call TriggerRegisterTimerEvent(loc_trigger01,0,false)
        call TriggerAddCondition(loc_trigger01,Condition(function Func2801))
        call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(2),(GetTriggerUnit()))
    endif
    return false
endfunction

// 60981 ~ 60992
function Func2803 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2799))
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2800))
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2802))
    set loc_trigger01=null
endfunction
