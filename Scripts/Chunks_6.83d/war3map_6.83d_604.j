
// 68831 ~ 68846
function Func3235 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    if loc_unit01!=null and GetUnitTypeId(loc_unit01)=='e01V' then
        if Func0194(loc_unit02)==false then
            call SetUnitX(loc_unit01,GetUnitX(loc_unit02))
            call SetUnitY(loc_unit01,GetUnitY(loc_unit02))
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 68848 ~ 68882
function Func3236 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A03E')
    local unit loc_unit02
    local trigger loc_trigger01
    local integer loc_integer02
    if loc_integer01==1 then
        set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e01V',0,0,0)
        call Func0193(loc_unit02,'A0ZJ')
        call SaveUnitHandle(hashtable001,(GetHandleId(loc_unit01)),(219),(loc_unit02))
        set loc_trigger01=CreateTrigger()
        set loc_integer02=GetHandleId(loc_trigger01)
        call TriggerAddCondition(loc_trigger01,Condition(function Func3235))
        call TriggerRegisterTimerEvent(loc_trigger01,0.2,true)
        call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit01))
        call SaveUnitHandle(hashtable001,(loc_integer02),(19),(loc_unit02))
    else
        set loc_unit02=(LoadUnitHandle(hashtable001,(GetHandleId(loc_unit01)),(219)))
    endif
    if loc_integer01==2 then
        call UnitRemoveAbility(loc_unit02,'A0ZJ')
        call Func0193(loc_unit02,'A0ZI')
    elseif loc_integer01==3 then
        call UnitRemoveAbility(loc_unit02,'A0ZJ')
        call UnitRemoveAbility(loc_unit02,'A0ZI')
        call Func0193(loc_unit02,'A0ZH')
    elseif loc_integer01==4 then
        call UnitRemoveAbility(loc_unit02,'A0ZJ')
        call UnitRemoveAbility(loc_unit02,'A0ZI')
        call UnitRemoveAbility(loc_unit02,'A0ZH')
        call Func0193(loc_unit02,'A0ZG')
    endif
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 68884 ~ 68889
function Func3237 takes nothing returns boolean
    if GetLearnedSkill()=='A03E' and IsUnitIllusion(GetTriggerUnit())==false then
        call Func3236()
    endif
    return false
endfunction

// 68891 ~ 68896
function Func3238 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3237))
    set loc_trigger01=null
endfunction
