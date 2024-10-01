
// 54617 ~ 54646
function Func2411 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A00J')
    local trigger loc_trigger01
    local integer loc_integer02
    if loc_integer01==1 then
        set loc_trigger01=CreateTrigger()
        set loc_integer02=GetHandleId(loc_trigger01)
        call TriggerRegisterTimerEvent(loc_trigger01,0.25,true)
        call TriggerAddCondition(loc_trigger01,Condition(function Func2409))
        call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit01))
        set loc_trigger01=null
    endif
    if GetUnitAbilityLevel(loc_unit01,'A0MB')==0 then
        call Func0193(loc_unit01,'A0MB')
    endif
    if loc_integer01==2 then
        call UnitRemoveAbility(loc_unit01,integers156[1])
    elseif loc_integer01==3 then
        call UnitRemoveAbility(loc_unit01,integers156[1])
        call UnitRemoveAbility(loc_unit01,integers156[2])
    elseif loc_integer01==4 then
        call UnitRemoveAbility(loc_unit01,integers156[1])
        call UnitRemoveAbility(loc_unit01,integers156[2])
        call UnitRemoveAbility(loc_unit01,integers156[3])
    endif
    call SetUnitAbilityLevel(loc_unit01,'A0MB',loc_integer01)
    call Func0193(loc_unit01,integers156[loc_integer01])
    set loc_unit01=null
endfunction

// 54648 ~ 54653
function Func2412 takes nothing returns boolean
    if GetLearnedSkill()=='A00J' and IsUnitIllusion(GetTriggerUnit())==false then
        call Func2411()
    endif
    return false
endfunction

// 54655 ~ 54667
function Func2413 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2412))
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2410))
    set integers156[1]='A2UR'
    set integers156[2]='A2US'
    set integers156[3]='A2UT'
    set integers156[4]='A2YU'
    set loc_trigger01=null
endfunction
