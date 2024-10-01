
// 76187 ~ 76215
function Func3662 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    if GetTriggerEventId()==EVENT_UNIT_DEATH then
        call UnitRemoveAbility(loc_unit01,'A1RA')
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1PH',true)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        if GetTriggerEvalCount(loc_trigger01)==1 then
            call IssueImmediateOrderById(loc_unit01,851993)
        endif
        if IsUnitAlly(loc_unit01,GetOwningPlayer(loc_unit02))==false then
            call SetUnitX(loc_unit03,GetUnitX(loc_unit01))
            call SetUnitY(loc_unit03,GetUnitY(loc_unit01))
        else
            call SetUnitX(loc_unit03,GetUnitX(loc_unit02))
            call SetUnitY(loc_unit03,GetUnitY(loc_unit02))
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    return false
endfunction

// 76217 ~ 76263
function Func3663 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A1PH')
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    local unit loc_unit03
    if IsUnitAlly(loc_unit01,GetOwningPlayer(loc_unit02))==false then
        set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'u01G',0,0,0)
        call Func0193(loc_unit03,'A04L')
        call SetUnitAbilityLevel(loc_unit03,'A04L',loc_integer01)
        call SetUnitX(loc_unit03,GetUnitX(loc_unit01))
        call SetUnitY(loc_unit03,GetUnitY(loc_unit01))
        call IssueTargetOrderById(loc_unit03,852487,loc_unit02)
    else
        call Func0193(loc_unit01,'A1RA')
        call UnitMakeAbilityPermanent(loc_unit01,true,'A1RA')
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1PH',false)
        set loc_unit03=CreateUnit(player001,'u01G',0,0,0)
        call Func0193(loc_unit03,'A04L')
        call SetUnitAbilityLevel(loc_unit03,'A04L',loc_integer01)
        call SetUnitX(loc_unit03,GetUnitX(loc_unit02))
        call SetUnitY(loc_unit03,GetUnitY(loc_unit02))
        call IssueTargetOrderById(loc_unit03,852487,loc_unit01)
    endif
    call TriggerRegisterTimerEvent(loc_trigger01,0.25,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3661))
    call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer02),(17),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer02),(19),(loc_unit03))
    call SaveInteger(hashtable001,(loc_integer02),(5),(loc_integer01))
    call SaveInteger(hashtable001,(loc_integer02),(34),(0))
    set loc_trigger01=CreateTrigger()
    set loc_integer02=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.01,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit03,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3662))
    call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer02),(17),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer02),(19),(loc_unit03))
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 76265 ~ 76270
function Func3664 takes nothing returns boolean
    if GetSpellAbilityId()=='A1PH' and GetUnitTypeId(GetSpellTargetUnit())!='n00L' and(IsUnitAlly(GetSpellTargetUnit(),GetOwningPlayer(GetTriggerUnit()))or Func0028(GetSpellTargetUnit())==false)then
        call Func3663()
    endif
    return false
endfunction

// 76272 ~ 76276
function Func3665 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3664))
endfunction
