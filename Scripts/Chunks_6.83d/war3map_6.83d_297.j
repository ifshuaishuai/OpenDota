
// 47689 ~ 47692
function Func1982 takes nothing returns nothing
    local real loc_real01=GetUnitState(GetEnumUnit(),UNIT_STATE_MAX_LIFE)*real284
    call Func0115(unit280,GetEnumUnit(),7,loc_real01)
endfunction

// 47694 ~ 47717
function Func1983 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    local group loc_group01
    if GetTriggerEvalCount(loc_trigger01)>11 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        set loc_group01=Func0030()
        set unit124=loc_unit01
        set unit280=loc_unit01
        set real284=(2.25+0.75*GetUnitAbilityLevel(loc_unit01,'A0B1'))/100
        call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,625,Condition(function Func0305))
        call ForGroup(loc_group01,function Func1982)
        call Func0029(loc_group01)
        set loc_group01=null
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 47719 ~ 47730
function Func1984 takes real loc_real01,real loc_real02 returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1983))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer01),(6),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((loc_real02)*1.0))
    set loc_trigger01=null
    set loc_unit01=null
endfunction
