
// 47435 ~ 47441
function Func1960 takes nothing returns boolean
    if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT then
        return GetUnitAbilityLevel(GetSpellTargetUnit(),('A0DW'))>0
    else
        return GetUnitAbilityLevel(GetTriggerUnit(),('A0DW'))>0
    endif
endfunction

// 47443 ~ 47458
function Func1961 takes nothing returns nothing
    local unit loc_unit01
    local unit loc_unit02
    local unit loc_unit03
    if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT then
        set loc_unit01=GetSpellTargetUnit()
        set loc_unit02=GetTriggerUnit()
    else
        set loc_unit01=GetTriggerUnit()
        set loc_unit02=GetAttacker()
    endif
    set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
    call Func0193(loc_unit03,('A0B0'))
    call SetUnitAbilityLevel(loc_unit03,('A0B0'),GetUnitAbilityLevel(loc_unit01,('A0DW')))
    call IssueTargetOrder(loc_unit03,"acidbomb",loc_unit02)
endfunction

// 47460 ~ 47466
function Func1962 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1960))
    call TriggerAddAction(loc_trigger01,function Func1961)
endfunction

// 47468 ~ 47470
function Func1963 takes nothing returns boolean
    return(IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))==false and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit())))and GetUnitState(GetFilterUnit(),UNIT_STATE_LIFE)!=GetUnitState(GetFilterUnit(),UNIT_STATE_MAX_LIFE)
endfunction

// 47472 ~ 47496
function Func1964 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(28)))
    local group loc_group01
    local unit loc_unit02
    if loc_integer02>10 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        call SaveInteger(hashtable001,(loc_integer01),(28),(loc_integer02+1))
        set unit124=loc_unit01
        set loc_group01=Func0030()
        call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),300,Condition(function Func1963))
        set loc_unit02=GroupPickRandomUnit(loc_group01)
        call Func0029(loc_group01)
        call SetUnitState(loc_unit02,UNIT_STATE_LIFE,GetUnitState(loc_unit02,UNIT_STATE_LIFE)+10)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_group01=null
    set loc_unit02=null
    return false
endfunction
