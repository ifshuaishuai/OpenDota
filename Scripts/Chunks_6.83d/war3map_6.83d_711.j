
// 75909 ~ 75940
function Func3646 takes nothing returns nothing
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(295)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(296)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A07Q')
    local real loc_real03=0.2
    if GetSpellTargetUnit()==loc_unit01 then
        call SetUnitState(loc_unit01,UNIT_STATE_LIFE,RMaxBJ(GetUnitState(loc_unit01,UNIT_STATE_MAX_LIFE)*loc_real02*0.01,GetUnitState(loc_unit01,UNIT_STATE_MAX_LIFE)*loc_real03))
    endif
    if GetSpellTargetUnit()==loc_unit02 then
        call SetUnitLifePercentBJ(loc_unit02,loc_real01)
        if GetUnitLifePercent(loc_unit02)<25.00 and loc_integer02==1 and GetUnitState(loc_unit02,UNIT_STATE_LIFE)>1 then
            call SetUnitLifePercentBJ(loc_unit02,20.00)
        endif
        if GetUnitLifePercent(loc_unit02)<20.00 and loc_integer02==2 and GetUnitState(loc_unit02,UNIT_STATE_LIFE)>1 then
            call SetUnitLifePercentBJ(loc_unit02,20.00)
        endif
        if GetUnitLifePercent(loc_unit02)<15.00 and loc_integer02==3 and GetUnitState(loc_unit02,UNIT_STATE_LIFE)>1 then
            call SetUnitLifePercentBJ(loc_unit02,20.00)
        endif
    endif
    if GetTriggerEvalCount(loc_trigger01)==2 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 75942 ~ 75947
function Func3647 takes nothing returns boolean
    if GetSpellAbilityId()=='A07R' then
        call Func3646()
    endif
    return false
endfunction

// 75949 ~ 75980
function Func3648 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local unit loc_unit03
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveReal(hashtable001,(loc_integer01),(295),((GetUnitLifePercent(loc_unit01))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(296),((GetUnitLifePercent(loc_unit02))*1.0))
    call TriggerAddCondition(loc_trigger01,Condition(function Func3647))
    set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit02),'e00Y',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit03,EVENT_UNIT_SPELL_EFFECT)
    call Func0193(loc_unit03,'A07R')
    call IssueTargetOrder(loc_unit03,"thunderbolt",loc_unit01)
    call ShowUnit(loc_unit03,false)
    call SetUnitPathing(loc_unit03,false)
    call SetUnitInvulnerable(loc_unit03,true)
    call UnitApplyTimedLife(loc_unit03,'BTLF',0.2)
    set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'e00Y',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit03,EVENT_UNIT_SPELL_EFFECT)
    call Func0193(loc_unit03,'A07R')
    call IssueTargetOrder(loc_unit03,"thunderbolt",loc_unit02)
    call ShowUnit(loc_unit03,false)
    call SetUnitPathing(loc_unit03,false)
    call SetUnitInvulnerable(loc_unit03,true)
    call UnitApplyTimedLife(loc_unit03,'BTLF',0.2)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
endfunction

// 75982 ~ 75987
function Func3649 takes nothing returns boolean
    if GetSpellAbilityId()=='A07Q' then
        call Func3648()
    endif
    return false
endfunction

// 75989 ~ 75993
function Func3650 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3649))
endfunction
