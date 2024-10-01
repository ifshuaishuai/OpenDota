
// 65334 ~ 65352
function Func3046 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    if GetUnitAbilityLevel(loc_unit02,'B08X')==0 then
        call KillUnit(loc_unit01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        call SetUnitAbilityLevel(loc_unit01,'A0VH',(LoadInteger(hashtable001,(GetHandleId(loc_unit02)),(3001))))
        call SetUnitX(loc_unit01,GetUnitX(loc_unit02))
        call SetUnitY(loc_unit01,GetUnitY(loc_unit02))
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 65354 ~ 65367
function Func3047 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e01V',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    call Func0193(loc_unit02,'A0VH')
    call SetUnitAbilityLevel(loc_unit02,'A0VH',(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(3001))))
    call TriggerRegisterTimerEvent(loc_trigger01,0.05,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3046))
    call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 65369 ~ 65374
function Func3048 takes nothing returns boolean
    if GetSpellAbilityId()=='A0XL' then
        call Func3047()
    endif
    return false
endfunction
