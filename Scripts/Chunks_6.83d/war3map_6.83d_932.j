
// 94505 ~ 94527
function Func4581 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(335)))
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        call SetUnitState(loc_unit02,UNIT_STATE_LIFE,RMaxBJ(1,GetUnitState(loc_unit02,UNIT_STATE_LIFE)-GetEventDamage()))
    elseif GetTriggerEventId()==EVENT_WIDGET_DEATH then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        if GetTriggerUnit()==loc_unit02 then
            call KillUnit(loc_unit03)
        endif
    else
        call IssueTargetOrderById(loc_unit03,851986,loc_unit02)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    return false
endfunction

// 94529 ~ 94562
function Func4582 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local unit loc_unit03=GetSummonedUnit()
    local unit loc_unit04
    if GetUnitAbilityLevel(loc_unit03,'B0GO')>0 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
        call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
        call SaveUnitHandle(hashtable001,(loc_integer01),(335),(loc_unit03))
        call TriggerRegisterDeathEvent(loc_trigger01,loc_unit03)
        call TriggerRegisterDeathEvent(loc_trigger01,loc_unit02)
        call TriggerRegisterUnitEvent(loc_trigger01,loc_unit03,EVENT_UNIT_DAMAGED)
        call TriggerRegisterTimerEvent(loc_trigger01,0.1,true)
        call TriggerAddCondition(loc_trigger01,Condition(function Func4581))
        set loc_unit04=CreateUnit(GetOwningPlayer(loc_unit03),'e00E',GetUnitX(loc_unit03),GetUnitY(loc_unit03),0)
        call UnitAddAbility(loc_unit04,'A2RU')
        call SetUnitAbilityLevel(loc_unit04,'A2RU',GetUnitAbilityLevel(loc_unit01,'A2QW'))
        call IssueTargetOrder(loc_unit04,"banish",loc_unit03)
        call UnitShareVision(loc_unit03,GetOwningPlayer(loc_unit01),true)
        call IssueTargetOrderById(loc_unit03,851986,loc_unit02)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    set loc_unit04=null
    return false
endfunction

// 94564 ~ 94587
function Func4583 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local unit loc_unit03
    local player loc_player01
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SUMMON)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4582))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    if IsUnitAlly(loc_unit02,players003[0])==true then
        set loc_player01=players003[0]
    else
        set loc_player01=players004[0]
    endif
    set loc_unit03=CreateUnit(loc_player01,'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
    call UnitAddAbility(loc_unit03,'A2RT')
    call SetUnitAbilityLevel(loc_unit03,'A2RT',GetUnitAbilityLevel(loc_unit01,'A2QW'))
    call IssueTargetOrderById(loc_unit03,852274,loc_unit02)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 94589 ~ 94594
function Func4584 takes nothing returns boolean
    if GetSpellAbilityId()=='A2QW' then
        call Func4583()
    endif
    return false
endfunction

// 94596 ~ 94601
function Func4585 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4584))
    set loc_trigger01=null
endfunction
