
// 48291 ~ 48301
function Func2022 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    call IssueImmediateOrder(loc_unit01,"phaseshiftoff")
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 48303 ~ 48312
function Func2023 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call TriggerRegisterTimerEvent(loc_trigger01,0,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2022))
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 48314 ~ 48321
function Func2024 takes nothing returns boolean
    if GetIssuedOrderId()==String2OrderIdBJ("phaseshift")and IsUnitIllusion(GetTriggerUnit())==false and((LoadInteger(hashtable001,(GetHandleId((GetTriggerUnit()))),((4266))))==1)==false then
        call Func2021()
    elseif GetIssuedOrderId()==String2OrderIdBJ("phaseshifton")then
        call Func2023()
    endif
    return false
endfunction

// 48323 ~ 48328
function Func2025 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0177(loc_trigger01,EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2024))
    set loc_trigger01=null
endfunction
