
// 72791 ~ 72802
function Func3458 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(34)))
    call SaveInteger(hashtable001,(GetHandleId(loc_unit01)),(783),((LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(783)))-loc_integer02))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_unit01=null
    set loc_trigger01=null
    return false
endfunction

// 72804 ~ 72833
function Func3459 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=GetTriggerUnit()
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'AIcd')
    local integer loc_integer03
    local integer loc_integer04
    if IsUnitInRange(loc_unit01,loc_unit02,900+25)and Func0194(loc_unit01)==false and IsUnitAlly(loc_unit01,GetOwningPlayer(loc_unit02))==false and GetUnitTypeId(loc_unit02)!='n0F5' and IsUnitIllusion(loc_unit02)==false and Func0468(GetUnitTypeId(loc_unit02))==false and GetUnitAbilityLevel(loc_unit02,'A04R')==0 then
        set loc_integer04=(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(783)))
        if IsUnitType(loc_unit02,UNIT_TYPE_HERO)==true then
            set loc_integer03=30
        else
            set loc_integer03=5
        endif
        set loc_integer04=loc_integer04+loc_integer03
        call SaveInteger(hashtable001,(GetHandleId(loc_unit01)),(783),(loc_integer04))
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call TriggerRegisterTimerEvent(loc_trigger01,25+loc_integer02*5,false)
        call TriggerRegisterDeathEvent(loc_trigger01,loc_unit01)
        call TriggerAddCondition(loc_trigger01,Condition(function Func3458))
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
        call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer03))
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction
