
// 89440 ~ 89442
function Func4293 takes unit loc_unit01 returns boolean
    return GetUnitAbilityLevel(loc_unit01,'Bcyc')==0 or Func0108(loc_unit01)==false
endfunction

// 89444 ~ 89491
function Func4294 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(442)))
    local unit loc_unit03
    call Func0282(loc_unit01)
    call Func0282(loc_unit02)
    if GetTriggerEvalCount(loc_trigger01)==1 then
        set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit02),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
        call UnitAddAbility(loc_unit03,'A2G5')
        call IssueTargetOrder(loc_unit03,"doom",loc_unit02)
        set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
        call UnitAddAbility(loc_unit03,'A2G5')
        call IssueTargetOrder(loc_unit03,"doom",loc_unit01)
        set loc_unit03=null
    endif
    if GetTriggerEventId()==EVENT_WIDGET_DEATH or loc_real01<(TimerGetElapsed(timer001))or Func4293(loc_unit01)==false or Func4293(loc_unit02)==false then
        if GetTriggerEventId()==EVENT_WIDGET_DEATH then
            if GetTriggerUnit()==loc_unit01 then
                call Func4292(loc_unit02,loc_integer02,GetTriggerUnit())
            else
                call Func4292(loc_unit01,loc_integer02,GetTriggerUnit())
            endif
        endif
        call UnitRemoveAbility(loc_unit01,'B0FG')
        call UnitRemoveAbility(loc_unit02,'B0FG')
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(175))))
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(176))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call SetUnitPathing(loc_unit01,true)
        call SetUnitPathing(loc_unit02,true)
    elseif GetIssuedOrderId()!=851973 then
        call SetUnitPathing(loc_unit01,false)
        call SetUnitPathing(loc_unit02,false)
        call DisableTrigger(loc_trigger01)
        call IssueTargetOrder(loc_unit01,"attack",loc_unit02)
        call IssueTargetOrder(loc_unit02,"attack",loc_unit01)
        call EnableTrigger(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 89493 ~ 89525
function Func4295 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A2CI')
    local trigger loc_trigger01
    local integer loc_integer02
    call SetUnitPathing(loc_unit01,false)
    call SetUnitPathing(loc_unit02,false)
    call IssueTargetOrder(loc_unit01,"attack",loc_unit02)
    call IssueTargetOrder(loc_unit02,"attack",loc_unit01)
    set loc_trigger01=CreateTrigger()
    set loc_integer02=GetHandleId(loc_trigger01)
    call SaveEffectHandle(hashtable001,(loc_integer02),(175),(AddSpecialEffectTarget("war3mapImported\\DuelFX.mdx",loc_unit01,"overhead")))
    call SaveEffectHandle(hashtable001,(loc_integer02),(176),(AddSpecialEffectTarget("war3mapImported\\DuelFX.mdx",loc_unit02,"overhead")))
    call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer02),(17),(loc_unit02))
    call SaveInteger(hashtable001,(loc_integer02),(5),(loc_integer01))
    call SaveReal(hashtable001,(loc_integer02),(442),(((TimerGetElapsed(timer001))+0.75*loc_integer01+3.25)*1.0))
    call TriggerAddCondition(loc_trigger01,Condition(function Func4294))
    call TriggerRegisterTimerEvent(loc_trigger01,0.05,true)
    call TriggerRegisterTimerEvent(loc_trigger01,0.01,false)
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit01)
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit02)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_ISSUED_TARGET_ORDER)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_ISSUED_POINT_ORDER)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_ISSUED_ORDER)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_ISSUED_TARGET_ORDER)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_ISSUED_POINT_ORDER)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_ISSUED_ORDER)
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 89527 ~ 89532
function Func4296 takes nothing returns boolean
    if GetSpellAbilityId()=='A2CI' and Func0028(GetSpellTargetUnit())==false then
        call Func4295()
    endif
    return false
endfunction

// 89534 ~ 89548
function Func4297 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4296))
    set loc_trigger01=null
    set integers178[0]='A2GK'
    set integers178[1]='A2GJ'
    set integers178[2]='A2GI'
    set integers178[3]='A2GH'
    set integers178[4]='A2GN'
    set integers178[5]='A2GO'
    set integers178[6]='A2GM'
    set integers178[7]='A2GL'
    set integers178[8]='A2GP'
endfunction
