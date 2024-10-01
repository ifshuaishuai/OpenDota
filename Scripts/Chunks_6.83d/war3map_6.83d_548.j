
// 64407 ~ 64426
function Func2986 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local trigger loc_trigger02=(LoadTriggerHandle(hashtable001,(loc_integer01),(275)))
    local integer loc_integer02=GetHandleId(loc_trigger02)
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    if IsUnitEnemy(loc_unit02,GetOwningPlayer(loc_unit01))==true and IsUnitType(loc_unit01,UNIT_TYPE_STRUCTURE)==false and GetUnitAbilityLevel(loc_unit01,'A04R')==0 then
        if(LoadBoolean(hashtable001,(loc_integer02),(GetHandleId(loc_unit01))))==false then
            call TriggerRegisterUnitEvent(loc_trigger02,loc_unit01,EVENT_UNIT_DAMAGED)
            call TriggerRegisterUnitEvent(loc_trigger02,loc_unit01,EVENT_UNIT_DEATH)
            call SaveBoolean(hashtable001,(loc_integer02),(GetHandleId(loc_unit01)),(true))
        endif
    endif
    set loc_trigger01=null
    set loc_trigger02=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 64428 ~ 64455
function Func2987 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local trigger loc_trigger02=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger02)
    local trigger loc_trigger03=CreateTrigger()
    local integer loc_integer03=GetHandleId(loc_trigger03)
    local integer loc_integer04=GetUnitAbilityLevel(loc_unit01,'A15J')
    set integer511=loc_integer04
    call TriggerRegisterUnitInRange(loc_trigger01,loc_unit01,750,Condition(function Func0011))
    call TriggerAddCondition(loc_trigger01,Condition(function Func2986))
    call SaveTriggerHandle(hashtable001,(loc_integer01),(275),(loc_trigger02))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call TriggerRegisterTimerEvent(loc_trigger02,30,false)
    call TriggerRegisterUnitEvent(loc_trigger02,loc_unit01,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger02,Condition(function Func2985))
    call SaveTriggerHandle(hashtable001,(loc_integer02),(274),(loc_trigger01))
    call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit01))
    call SaveBoolean(hashtable001,(loc_integer02),(273),(false))
    call TriggerRegisterTimerEvent(loc_trigger03,0.01,false)
    call TriggerAddCondition(loc_trigger03,Condition(function Func2983))
    call SaveUnitHandle(hashtable001,(loc_integer03),(2),(loc_unit01))
    set loc_unit01=null
    set loc_trigger01=null
    set loc_trigger02=null
    set loc_trigger03=null
endfunction

// 64457 ~ 64462
function Func2988 takes nothing returns boolean
    if GetSpellAbilityId()=='A15J' and GetUnitTypeId(GetTriggerUnit())=='H00R' then
        call Func2987()
    endif
    return false
endfunction

// 64464 ~ 64470
function Func2989 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2988))
    call Func0132('A17A')
    set loc_trigger01=null
endfunction
