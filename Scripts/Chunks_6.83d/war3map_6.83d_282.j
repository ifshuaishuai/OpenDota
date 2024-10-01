
// 47114 ~ 47128
function Func1935 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.01,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1932))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    set loc_trigger01=CreateTrigger()
    set loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit01)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1933))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    set loc_unit01=null
    set loc_trigger01=null
endfunction

// 47130 ~ 47141
function Func1936 takes nothing returns boolean
    if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT then
        if GetSpellAbilityId()=='A03G' then
            call Func1935()
        endif
    else
        if GetLearnedSkill()=='A03G' and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),'A03G')==1 then
            call Func1931()
        endif
    endif
    return false
endfunction

// 47143 ~ 47149
function Func1937 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1936))
    set loc_trigger01=null
endfunction
