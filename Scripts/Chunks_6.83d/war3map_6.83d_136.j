
// 29630 ~ 29664
function Func1191 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT or(LoadBoolean(hashtable001,(GetHandleId(loc_unit01)),(140)))==true then
        if(LoadBoolean(hashtable001,(GetHandleId(loc_unit01)),(140)))==true then
            call SaveBoolean(hashtable001,(GetHandleId(loc_unit01)),(140),(false))
            call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4259)),(2))
            call UnitRemoveAbility(loc_unit01,'A04R')
            call Func0276(loc_unit01,false)
            call PauseUnit(loc_unit01,false)
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        elseif GetSpellTargetUnit()==loc_unit01 and GetSpellAbilityId()==integer430 and(GetPlayerSlotState(GetOwningPlayer((loc_unit01)))==PLAYER_SLOT_STATE_LEFT)and((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4259))))==1)==true then
            call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4259)),(2))
            call UnitRemoveAbility(loc_unit01,'A04R')
            call Func0276(loc_unit01,false)
            call PauseUnit(loc_unit01,false)
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        endif
    elseif Func0194(loc_unit01)==false then
        call SetUnitX(loc_unit01,loc_real01)
        call SetUnitY(loc_unit01,loc_real02)
        call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4259)),(1))
        call UnitAddAbility(loc_unit01,'A04R')
        call Func0276(loc_unit01,true)
        call PauseUnit(loc_unit01,true)
    endif
    set loc_unit01=null
    set loc_trigger01=null
    return false
endfunction

// 29666 ~ 29683
function Func1192 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetSpellTargetUnit()
    call SaveBoolean(hashtable001,(GetHandleId(loc_unit01)),(140),(false))
    call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4259)),(1))
    call UnitAddAbility(loc_unit01,'A04R')
    call Func0276(loc_unit01,true)
    call PauseUnit(loc_unit01,true)
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer01),(6),((GetUnitX(loc_unit01))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((GetUnitY(loc_unit01))*1.0))
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1191))
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 29685 ~ 29695
function Func1193 takes nothing returns boolean
    if boolean134==true then
        return false
    endif
    if GetSpellAbilityId()==integer429 and(GetPlayerSlotState(GetOwningPlayer((GetSpellTargetUnit())))==PLAYER_SLOT_STATE_LEFT)and((LoadInteger(hashtable001,(GetHandleId((GetSpellTargetUnit()))),((4259))))==1)==false then
        call Func1192()
    elseif(GetSpellAbilityId()==integer430 or GetSpellAbilityId()==integer429)and(GetPlayerSlotState(GetOwningPlayer((GetSpellTargetUnit())))==PLAYER_SLOT_STATE_LEFT)==false then
        call Func0120(GetOwningPlayer(GetTriggerUnit()),GetObjectName('n02N'))
    endif
    return false
endfunction
