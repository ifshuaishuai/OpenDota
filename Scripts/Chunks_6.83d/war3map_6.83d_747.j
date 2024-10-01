
// 78736 ~ 78739
function Func3804 takes nothing returns nothing
    call Func0115(unit372,GetEnumUnit(),1,20+10*integer526)
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\NightElf\\Immolation\\ImmolationDamage.mdl",GetEnumUnit(),"head"))
endfunction

// 78741 ~ 78771
function Func3805 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02
    local integer loc_integer03=GetUnitTypeId(loc_unit01)
    local group loc_group01
    if loc_integer03=='n00U' or loc_integer03=='n0KU' then
        set loc_integer02=1
    elseif loc_integer03=='n00Y' or loc_integer03=='n0KV' then
        set loc_integer02=2
    elseif loc_integer03=='n00Z' or loc_integer03=='n0KW' then
        set loc_integer02=3
    endif
    if GetTriggerEventId()==EVENT_UNIT_DEATH then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        set unit124=loc_unit01
        set unit372=loc_unit01
        set integer526=loc_integer02
        set loc_group01=Func0030()
        call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),325,Condition(function Func0305))
        call ForGroup(loc_group01,function Func3804)
        call Func0029(loc_group01)
        set loc_group01=null
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 78773 ~ 78781
function Func3806 takes unit loc_unit01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3805))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    set loc_trigger01=null
endfunction

// 78783 ~ 78789
function Func3807 takes nothing returns boolean
    local integer loc_integer01=GetUnitTypeId(GetTriggerUnit())
    if loc_integer01=='n00U' or loc_integer01=='n0KU' or loc_integer01=='n00Y' or loc_integer01=='n0KV' or loc_integer01=='n00Z' or loc_integer01=='n0KW' then
        call Func3806(GetTriggerUnit())
    endif
    return false
endfunction
