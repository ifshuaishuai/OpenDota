
// 49231 ~ 49241
function Func2081 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    call IssueImmediateOrder(loc_unit01,"unpoisonarrows")
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 49243 ~ 49257
function Func2082 takes nothing returns boolean
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01
    if GetTriggerEventId()==EVENT_UNIT_ISSUED_ORDER then
        if GetIssuedOrderId()==OrderId("poisonarrows")then
            set loc_trigger01=CreateTrigger()
            call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(2),(loc_unit01))
            call TriggerRegisterTimerEvent(loc_trigger01,0,false)
            call TriggerAddCondition(loc_trigger01,Condition(function Func2081))
        endif
    elseif GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT and GetSpellAbilityId()=='A2UM' then
        call Func2080()
    endif
    return false
endfunction

// 49259 ~ 49272
function Func2083 takes nothing returns nothing
    local trigger loc_trigger01
    if GetUnitAbilityLevel(GetTriggerUnit(),'A2VO')==1 then
        set loc_trigger01=CreateTrigger()
        call TriggerRegisterUnitEvent(loc_trigger01,GetTriggerUnit(),EVENT_UNIT_SPELL_EFFECT)
        call TriggerRegisterUnitEvent(loc_trigger01,GetTriggerUnit(),EVENT_UNIT_ISSUED_ORDER)
        call TriggerAddCondition(loc_trigger01,Condition(function Func2082))
        set loc_trigger01=null
    endif
    if GetUnitAbilityLevel(GetTriggerUnit(),'A2UM')==0 then
        call Func0193(GetTriggerUnit(),'A2UM')
    endif
    call SetUnitAbilityLevel(GetTriggerUnit(),'A2UM',GetUnitAbilityLevel(GetTriggerUnit(),'A2VO'))
endfunction

// 49274 ~ 49279
function Func2084 takes nothing returns boolean
    if GetLearnedSkill()=='A2VO' and IsUnitIllusion(GetTriggerUnit())==false then
        call Func2083()
    endif
    return false
endfunction

// 49281 ~ 49286
function Func2085 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2084))
    set loc_trigger01=null
endfunction
