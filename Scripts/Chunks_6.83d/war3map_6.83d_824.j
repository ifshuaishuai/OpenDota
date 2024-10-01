
// 86215 ~ 86235
function Func4133 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    if GetTriggerEventId()==EVENT_UNIT_DEATH then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        call SetUnitX(loc_unit01,GetUnitX(loc_unit02))
        call SetUnitY(loc_unit01,GetUnitY(loc_unit02))
        call SetUnitX(loc_unit03,GetUnitX(loc_unit02))
        call SetUnitY(loc_unit03,GetUnitY(loc_unit02))
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    return false
endfunction

// 86237 ~ 86252
function Func4134 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    if GetTriggerEventId()==EVENT_UNIT_DEATH then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        set unit400=GetEventDamageSource()
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 86254 ~ 86304
function Func4135 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetSummoningUnit()
    local unit loc_unit02=GetSummonedUnit()
    local unit loc_unit03
    local integer loc_integer02
    local integer loc_integer03
    local integer loc_integer04
    if GetUnitTypeId(loc_unit02)=='npn3' or GetUnitTypeId(loc_unit02)=='npn6' or GetUnitTypeId(loc_unit02)=='n010' then
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
        call TriggerRegisterTimerEvent(loc_trigger01,0.05,true)
        call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DEATH)
        call TriggerAddCondition(loc_trigger01,Condition(function Func4133))
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
        call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
        call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit03))
        if Func0379(loc_unit01,'I0A8')then
            call UnitAddAbility(loc_unit03,'A04I')
        endif
    endif
    if GetUnitAbilityLevel(loc_unit01,'A1B6')>0 then
        if GetUnitTypeId(loc_unit02)=='npn1' or GetUnitTypeId(loc_unit02)=='npn4' or GetUnitTypeId(loc_unit02)=='n011' then
            set loc_integer02=GetUnitAbilityLevel(loc_unit01,'A0MX')
            if loc_integer02>0 then
                call Func0193(loc_unit02,'A0MX')
                call SetUnitAbilityLevel(loc_unit02,'A0MX',loc_integer02)
            endif
        endif
        if GetUnitTypeId(loc_unit02)=='npn2' or GetUnitTypeId(loc_unit02)=='npn5' or GetUnitTypeId(loc_unit02)=='n012' then
            set loc_integer04=GetUnitAbilityLevel(loc_unit01,'Acdh')
            if loc_integer04>0 then
                call Func0193(loc_unit02,'Acdh')
                call SetUnitAbilityLevel(loc_unit02,'Acdh',loc_integer04)
            endif
        endif
        if GetUnitTypeId(loc_unit02)=='npn3' or GetUnitTypeId(loc_unit02)=='npn6' or GetUnitTypeId(loc_unit02)=='n010' then
            set loc_integer03=GetUnitAbilityLevel(loc_unit01,'A06M')
            if loc_integer03>0 then
                call Func0193(loc_unit02,'A06M')
                call SetUnitAbilityLevel(loc_unit02,'A06M',loc_integer03)
            endif
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
endfunction
