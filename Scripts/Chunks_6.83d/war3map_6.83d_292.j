
// 47498 ~ 47508
function Func1965 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    call AddUnitAnimationProperties(loc_unit01,"alternate",false)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 47510 ~ 47534
function Func1966 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer01=1
    local trigger loc_trigger01
    local integer loc_integer02
    loop
        exitwhen loc_integer01>(1+2*GetUnitAbilityLevel(loc_unit01,'A01B'))
        set loc_trigger01=CreateTrigger()
        call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(2),(loc_unit01))
        call SaveInteger(hashtable001,(GetHandleId(loc_trigger01)),(28),(0))
        call TriggerRegisterTimerEvent(loc_trigger01,1,true)
        call TriggerAddCondition(loc_trigger01,Condition(function Func1964))
        set loc_integer01=loc_integer01+1
    endloop
    if GetUnitTypeId(loc_unit01)=='E02X' then
        set loc_trigger01=CreateTrigger()
        set loc_integer02=GetHandleId(loc_trigger01)
        call TriggerRegisterTimerEvent(loc_trigger01,0,false)
        call TriggerAddCondition(loc_trigger01,Condition(function Func1965))
        call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit01))
        set loc_trigger01=null
    endif
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 47536 ~ 47541
function Func1967 takes nothing returns boolean
    if GetSpellAbilityId()=='A01B' then
        call Func1966()
    endif
    return false
endfunction

// 47543 ~ 47548
function Func1968 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1967))
    set loc_trigger01=null
endfunction
