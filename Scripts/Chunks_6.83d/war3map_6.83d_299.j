
// 47760 ~ 47778
function Func1988 takes unit loc_unit01,unit loc_unit02,integer loc_integer01 returns nothing
    local real loc_real01
    local real loc_real02
    if loc_integer01==1 then
        set loc_real01=25
        set loc_real02=0.25
    elseif loc_integer01==2 then
        set loc_real01=40
        set loc_real02=0.5
    elseif loc_integer01==3 then
        set loc_real01=55
        set loc_real02=0.75
    else
        set loc_real01=70
        set loc_real02=1
    endif
    call Func0365(loc_unit02,loc_unit02,loc_real02)
    call Func0115(loc_unit01,loc_unit02,1,loc_real01)
endfunction

// 47780 ~ 47793
function Func1989 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    call Func1988(loc_unit01,loc_unit02,loc_integer02)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 47795 ~ 47819
function Func1990 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local trigger loc_trigger01
    local integer loc_integer01
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A0I7')
    call Func1988(loc_unit01,loc_unit02,loc_integer02)
    set loc_trigger01=CreateTrigger()
    set loc_integer01=GetHandleId(loc_trigger01)
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveInteger(hashtable001,(loc_integer01),(5),(loc_integer02))
    call TriggerRegisterTimerEvent(loc_trigger01,2,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1989))
    set loc_trigger01=CreateTrigger()
    set loc_integer01=GetHandleId(loc_trigger01)
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveInteger(hashtable001,(loc_integer01),(5),(loc_integer02))
    call TriggerRegisterTimerEvent(loc_trigger01,4,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1989))
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 47821 ~ 47826
function Func1991 takes nothing returns boolean
    if GetSpellAbilityId()=='A0I7' and Func0028(GetSpellTargetUnit())==false then
        call Func1990()
    endif
    return false
endfunction

// 47828 ~ 47832
function Func1992 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1991))
endfunction
