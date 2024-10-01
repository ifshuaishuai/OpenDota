
// 46312 ~ 46323
function Func1879 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'AHab')
    if Func0194(loc_unit01)==false then
        call SetUnitState(loc_unit01,UNIT_STATE_MANA,GetUnitState(loc_unit01,UNIT_STATE_MANA)+(0.5+0.5*loc_integer02)*0.25)
    endif
    set loc_unit01=null
    set loc_trigger01=null
    return false
endfunction

// 46325 ~ 46334
function Func1880 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    call TriggerRegisterTimerEvent(loc_trigger01,0.25,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1879))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 46336 ~ 46341
function Func1881 takes nothing returns boolean
    if GetLearnedSkill()=='AHab' and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),'AHab')==1 then
        call Func1880()
    endif
    return false
endfunction

// 46343 ~ 46348
function Func1882 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1881))
    set loc_trigger01=null
endfunction
