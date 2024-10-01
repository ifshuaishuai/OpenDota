
// 71663 ~ 71696
function Func3402 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(30)))
    local unit loc_unit02=Func0022(loc_integer02)
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(34)))
    if GetTriggerEventId()==EVENT_UNIT_DEATH then
        call UnitRemoveAbility(loc_unit01,'A1CO')
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif GetTriggerEventId()==EVENT_PLAYER_UNIT_ATTACKED then
        if GetTriggerUnit()!=loc_unit02 and GetAttacker()==loc_unit01 then
            call UnitRemoveAbility(loc_unit01,'A1CO')
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        elseif GetTriggerUnit()==loc_unit02 and GetAttacker()==loc_unit01 then
            set loc_integer03=loc_integer03+1
            call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer03))
            if loc_integer03==4 then
                call UnitRemoveAbility(loc_unit01,'A1CO')
                call FlushChildHashtable(hashtable001,(loc_integer01))
                call Func0035(loc_trigger01)
            endif
        endif
    else
        call UnitRemoveAbility(loc_unit01,'A1CO')
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 71698 ~ 71723
function Func3403 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A0PL')
    local trigger loc_trigger01
    local integer loc_integer02
    call DestroyEffect(AddSpecialEffect("war3mapImported\\PhantomStrike.mdx",GetUnitX(loc_unit01),GetUnitY(loc_unit01)))
    call SetUnitX(loc_unit01,GetUnitX(loc_unit02))
    call SetUnitY(loc_unit01,GetUnitY(loc_unit02))
    if IsUnitAlly(loc_unit01,GetOwningPlayer(loc_unit02))==false then
        set loc_trigger01=CreateTrigger()
        set loc_integer02=GetHandleId(loc_trigger01)
        call Func0193(loc_unit01,'A1CO')
        call IssueTargetOrder(loc_unit01,"attack",loc_unit02)
        call TriggerRegisterTimerEvent(loc_trigger01,3,false)
        call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
        call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
        call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DEATH)
        call TriggerAddCondition(loc_trigger01,Condition(function Func3402))
        call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit01))
        call SaveInteger(hashtable001,(loc_integer02),(30),(Func0024(loc_unit02)))
    endif
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 71725 ~ 71730
function Func3404 takes nothing returns boolean
    if GetSpellAbilityId()=='A0PL' then
        call Func3403()
    endif
    return false
endfunction

// 71732 ~ 71737
function Func3405 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3404))
    set loc_trigger01=null
endfunction
