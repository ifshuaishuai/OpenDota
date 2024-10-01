
// 83326 ~ 83347
function Func4007 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local unit loc_unit03=GetSummonedUnit()
    if GetTriggerEventId()!=EVENT_PLAYER_UNIT_SUMMON then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif GetUnitAbilityLevel(loc_unit03,'B0DA')>0 and GetOwningPlayer(GetSummoningUnit())==GetOwningPlayer(loc_unit01)then
        if IsUnitAlly(loc_unit02,GetOwningPlayer(loc_unit01))==true then
            call SelectUnitAddForPlayer(loc_unit03,GetOwningPlayer(loc_unit01))
        else
            call IssueTargetOrder(loc_unit03,"attack",loc_unit02)
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    return false
endfunction

// 83349 ~ 83383
function Func4008 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
    call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
    call SaveInteger(hashtable001,(GetHandleId((loc_unit02))),((4293)),(2))
    call SetUnitInvulnerable(loc_unit02,false)
    call PauseUnit(loc_unit02,false)
    call ShowUnit(loc_unit02,true)
    call RemoveSavedHandle(hashtable001,(GetHandleId(loc_unit02)),(673))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    if GetTriggerEventId()!=EVENT_UNIT_DEATH then
        call ClearSelectionForPlayer(GetOwningPlayer(loc_unit02))
        call SelectUnitAddForPlayer(loc_unit02,GetOwningPlayer(loc_unit02))
        call Func0184(sound059,GetUnitX(loc_unit02),GetUnitY(loc_unit02))
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call TriggerRegisterTimerEvent(loc_trigger01,3,false)
        call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SUMMON)
        call TriggerAddCondition(loc_trigger01,Condition(function Func4007))
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
        call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
        call Func0193(loc_unit03,'A1S5')
        call SetUnitAbilityLevel(loc_unit03,'A1S5',GetUnitAbilityLevel(loc_unit01,'A1S8'))
        call IssueTargetOrderById(loc_unit03,852274,loc_unit02)
        call IssueTargetOrderById(loc_unit03,852274,loc_unit02)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 83385 ~ 83412
function Func4009 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A1S8')
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit02),'o019',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
    call UnitApplyTimedLife(loc_unit03,'BTLF',2.6)
    if IsUnitAlly(loc_unit02,GetOwningPlayer(loc_unit01))==false then
        set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'o019',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
        call UnitApplyTimedLife(loc_unit03,'BTLF',2.6)
    endif
    call SetUnitInvulnerable(loc_unit02,true)
    call PauseUnit(loc_unit02,true)
    call ShowUnit(loc_unit02,false)
    call SaveEffectHandle(hashtable001,(loc_integer02),(32),(AddSpecialEffect("war3mapImported\\WILLTHEALMIGHTY-Void5.mdx",GetUnitX(loc_unit02),GetUnitY(loc_unit02))))
    call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer02),(17),(loc_unit02))
    call TriggerRegisterTimerEvent(loc_trigger01,2.5,false)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4008))
    call SaveUnitHandle(hashtable001,(GetHandleId(loc_unit01)),(673),(loc_unit02))
    call SaveInteger(hashtable001,(GetHandleId((loc_unit02))),((4293)),(1))
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
    set loc_unit03=null
endfunction

// 83414 ~ 83426
function Func4010 takes nothing returns boolean
    if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT then
        if GetSpellAbilityId()=='A1S8' and(IsUnitAlly(GetSpellTargetUnit(),GetOwningPlayer(GetTriggerUnit()))==true or Func0028(GetSpellTargetUnit())==false)then
            call Func4009()
        endif
    else
        if GetSpellAbilityId()=='A1S8' and GetSpellTargetUnit()!=GetTriggerUnit()and IsUnitAlly(GetSpellTargetUnit(),GetOwningPlayer(GetTriggerUnit()))==true and(LoadBoolean(hashtable001,(GetHandleId(GetOwningPlayer(GetSpellTargetUnit()))),(139)))then
            call Func0123(GetTriggerUnit())
            call Func0120(GetOwningPlayer(GetTriggerUnit()),GetObjectName('n038'))
        endif
    endif
    return false
endfunction

// 83428 ~ 83434
function Func4011 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4010))
    set loc_trigger01=null
endfunction
