
// 66678 ~ 66688
function Func3118 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    call SelectUnitForPlayerSingle(loc_unit01,GetOwningPlayer(loc_unit01))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 66690 ~ 66714
function Func3119 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A01Y')
    local real loc_real01=360-100*loc_integer02
    local unit loc_unit02
    if loc_integer02==3 then
    endif
    if TimerGetRemaining(timers003[GetPlayerId(GetOwningPlayer(loc_unit01))])==0 and GetUnitState(loc_unit01,UNIT_STATE_MANA)>=140 then
        set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
        call UnitAddAbility(loc_unit02,'A274')
        call IssueImmediateOrder(loc_unit02,"thunderclap")
        call TimerStart(timers003[GetPlayerId(GetOwningPlayer(loc_unit01))],loc_real01,false,null)
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call TriggerRegisterTimerEvent(loc_trigger01,3+0.01,false)
        call TriggerAddCondition(loc_trigger01,Condition(function Func3118))
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 66716 ~ 66725
function Func3120 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit01)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3119))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 66727 ~ 66732
function Func3121 takes nothing returns boolean
    if GetLearnedSkill()=='A01Y' and GetUnitAbilityLevel(GetTriggerUnit(),'A01Y')==1 and IsUnitIllusion(GetTriggerUnit())==false then
        call Func3120()
    endif
    return false
endfunction

// 66734 ~ 66739
function Func3122 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3121))
    set loc_trigger01=null
endfunction
