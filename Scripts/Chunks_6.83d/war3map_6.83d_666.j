
// 72835 ~ 72848
function Func3460 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(783)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(238)))
    if loc_integer03!=loc_integer02 then
        call Func0420(loc_unit01,loc_integer02)
        call SaveInteger(hashtable001,(loc_integer01),(238),(loc_integer02))
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 72850 ~ 72864
function Func3461 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3459))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    set loc_trigger01=CreateTrigger()
    set loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.25,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3460))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    set loc_unit01=null
    set loc_trigger01=null
endfunction

// 72866 ~ 72871
function Func3462 takes nothing returns boolean
    if GetLearnedSkill()=='AIcd' and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),'AIcd')==1 then
        call Func3461()
    endif
    return false
endfunction

// 72873 ~ 72878
function Func3463 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3462))
    set loc_trigger01=null
endfunction
