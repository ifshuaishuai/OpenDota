
// 71489 ~ 71496
function Func3389 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    return false
endfunction

// 71498 ~ 71518
function Func3390 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02
    local integer loc_integer03=GetUnitAbilityLevel(loc_unit01,'A03K')
    if loc_integer03==0 then
        set loc_integer03=GetUnitAbilityLevel(loc_unit01,'A1B0')
    endif
    if loc_integer03==1 then
        set loc_integer02=25
    elseif loc_integer03==2 then
        set loc_integer02=50
    elseif loc_integer03==3 then
        set loc_integer02=80
    endif
    call TriggerRegisterTimerEvent(loc_trigger01,loc_integer02,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3389))
    set loc_unit01=null
    set loc_trigger01=null
endfunction

// 71520 ~ 71525
function Func3391 takes nothing returns boolean
    if GetSpellAbilityId()=='A03K' or GetSpellAbilityId()=='A1B0' then
        call Func3390()
    endif
    return false
endfunction

// 71527 ~ 71532
function Func3392 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3391))
    set loc_trigger01=null
endfunction
