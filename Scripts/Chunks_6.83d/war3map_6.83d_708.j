
// 75817 ~ 75829
function Func3638 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    call UnitShareVision(loc_unit02,GetOwningPlayer(loc_unit01),false)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 75831 ~ 75847
function Func3639 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call TriggerRegisterTimerEvent(loc_trigger01,0.,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3637))
    set loc_trigger01=CreateTrigger()
    set loc_integer01=GetHandleId(loc_trigger01)
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(GetSpellTargetUnit()))
    call TriggerRegisterTimerEvent(loc_trigger01,1.,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3638))
    call UnitShareVision(GetSpellTargetUnit(),GetOwningPlayer(loc_unit01),true)
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 75849 ~ 75860
function Func3640 takes nothing returns boolean
    if GetSpellAbilityId()=='A0G4' or GetSpellAbilityId()=='A1D8' then
        if Func0028(GetSpellTargetUnit())==false then
            if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT then
                call Func3636()
            else
                call Func3639()
            endif
        endif
    endif
    return false
endfunction

// 75862 ~ 75868
function Func3641 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_CHANNEL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3640))
    set loc_trigger01=null
endfunction
