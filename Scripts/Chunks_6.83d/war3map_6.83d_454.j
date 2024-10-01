
// 58232 ~ 58282
function Func2624 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(34)))
    local integer loc_integer04=2+loc_integer02
    if GetTriggerEventId()==EVENT_UNIT_DEATH then
        call UnitRemoveAbility(loc_unit01,'A1N3')
        call UnitRemoveAbility(loc_unit01,'A1N6')
        call UnitRemoveAbility(loc_unit01,'A1N7')
        call UnitRemoveAbility(loc_unit01,'B0CH')
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif GetTriggerEventId()==EVENT_PLAYER_UNIT_ATTACKED then
        if GetAttacker()==loc_unit01 then
            set loc_integer03=loc_integer03+1
            call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer03))
            if loc_integer03>=loc_integer04 then
                call UnitRemoveAbility(loc_unit01,'A1N3')
                call UnitRemoveAbility(loc_unit01,'A1N6')
                call UnitRemoveAbility(loc_unit01,'A1N7')
                call UnitRemoveAbility(loc_unit01,'B0CH')
                call FlushChildHashtable(hashtable001,(loc_integer01))
                call Func0035(loc_trigger01)
            endif
        endif
    elseif GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT then
        if GetTriggerUnit()==loc_unit01 and GetSpellAbilityId()=='A1P9' and(TimerGetElapsed(timer001))>(LoadReal(hashtable001,(loc_integer01),(442)))then
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        elseif Func0374(GetSpellAbilityId())and loc_unit01==GetSpellTargetUnit()then
            call UnitRemoveAbility(loc_unit01,'A1N3')
            call UnitRemoveAbility(loc_unit01,'A1N6')
            call UnitRemoveAbility(loc_unit01,'A1N7')
            call UnitRemoveAbility(loc_unit01,'B0CH')
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        endif
    else
        call UnitRemoveAbility(loc_unit01,'A1N3')
        call UnitRemoveAbility(loc_unit01,'A1N6')
        call UnitRemoveAbility(loc_unit01,'A1N7')
        call UnitRemoveAbility(loc_unit01,'B0CH')
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 58284 ~ 58304
function Func2625 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A1P9')
    call Func0193(loc_unit01,'A1N3')
    call Func0193(loc_unit01,'A1N6')
    call Func0193(loc_unit01,'A1N7')
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1N6',false)
    call TriggerRegisterTimerEvent(loc_trigger01,15,false)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2624))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveInteger(hashtable001,(loc_integer01),(34),(0))
    call SaveInteger(hashtable001,(loc_integer01),(5),(loc_integer02))
    call SaveReal(hashtable001,(loc_integer01),(442),(((TimerGetElapsed(timer001))+1)*1.0))
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 58306 ~ 58311
function Func2626 takes nothing returns boolean
    if GetSpellAbilityId()=='A1P9' then
        call Func2625()
    endif
    return false
endfunction

// 58313 ~ 58319
function Func2627 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2626))
    call Func0132('A1N3')
    set loc_trigger01=null
endfunction
