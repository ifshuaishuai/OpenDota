
// 79260 ~ 79269
function Func3839 takes unit loc_unit01,unit loc_unit02 returns unit
    local group loc_group01=Func0030()
    set unit124=loc_unit01
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit02),GetUnitY(loc_unit02),600,Condition(function Func0304))
    call GroupRemoveUnit(loc_group01,loc_unit02)
    set unit124=GroupPickRandomUnit(loc_group01)
    call Func0029(loc_group01)
    set loc_group01=null
    return unit124
endfunction

// 79271 ~ 79303
function Func3840 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(391)))
    local unit loc_unit02=Func0022(loc_integer03)
    local integer loc_integer04=(LoadInteger(hashtable001,(loc_integer01),(34)))
    local unit loc_unit03
    local real loc_real01
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    if loc_integer04<(loc_integer02*2+1)then
        set loc_unit03=Func3839(loc_unit01,loc_unit02)
        if loc_unit03!=null then
            set loc_real01=Func3838(loc_unit01,loc_unit02,loc_unit03,loc_integer02,false)
            set loc_trigger01=CreateTrigger()
            set loc_integer01=GetHandleId(loc_trigger01)
            call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
            call SaveInteger(hashtable001,(loc_integer01),(5),(loc_integer02))
            call SaveInteger(hashtable001,(loc_integer01),(391),(Func0024(loc_unit03)))
            call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer04+1))
            call TriggerRegisterTimerEvent(loc_trigger01,loc_real01+0.4,false)
            call TriggerAddCondition(loc_trigger01,Condition(function Func3840))
        endif
    endif
    call Func0021(loc_integer03)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    return false
endfunction

// 79305 ~ 79321
function Func3841 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A0NM')
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    local real loc_real01=Func3838(loc_unit01,loc_unit01,loc_unit02,loc_integer01,true)
    call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit01))
    call SaveInteger(hashtable001,(loc_integer02),(5),(loc_integer01))
    call SaveInteger(hashtable001,(loc_integer02),(391),(Func0024(loc_unit02)))
    call SaveInteger(hashtable001,(loc_integer02),(34),(1))
    call TriggerRegisterTimerEvent(loc_trigger01,loc_real01,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3840))
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 79323 ~ 79328
function Func3842 takes nothing returns boolean
    if GetSpellAbilityId()=='A0NM' and Func0028(GetSpellTargetUnit())==false then
        call Func3841()
    endif
    return false
endfunction

// 79330 ~ 79335
function Func3843 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3842))
    set loc_trigger01=null
endfunction
