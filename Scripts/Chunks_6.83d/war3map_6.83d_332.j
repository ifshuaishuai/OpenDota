
// 50254 ~ 50271
function Func2141 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(188)))
    local integer loc_integer03=GetTriggerEvalCount(loc_trigger01)
    if loc_integer03==loc_integer02 or GetUnitTypeId(loc_unit01)=='Hblm' then
        if(LoadReal(hashtable001,(GetHandleId(loc_unit01)),(241)))<=(TimerGetElapsed(timer001))or GetUnitTypeId(loc_unit01)=='Hblm' then
            call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A11T',true)
        else
        endif
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 50273 ~ 50287
function Func2142 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A11T')
    local integer loc_integer03=40
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A11T',false)
    call SaveReal(hashtable001,(GetHandleId(loc_unit01)),(241),(((TimerGetElapsed(timer001))+loc_integer03)*1.0))
    call SaveInteger(hashtable001,(loc_integer01),(188),(loc_integer03))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2141))
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 50289 ~ 50294
function Func2143 takes nothing returns boolean
    if GetSpellAbilityId()=='A11T' and GetUnitTypeId(GetTriggerUnit())=='Hblm' then
        call Func2142()
    endif
    return false
endfunction
