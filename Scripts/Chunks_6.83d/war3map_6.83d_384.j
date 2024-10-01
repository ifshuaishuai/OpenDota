
// 53381 ~ 53444
function Func2339 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit03
    local group loc_group01
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(442)))
    local real loc_real02
    local real loc_real03
    local integer loc_integer02
    local real loc_real04
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(34)))
    if GetTriggerEventId()!=EVENT_PLAYER_UNIT_DEATH then
        set loc_integer03=loc_integer03+1
        call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer03))
    endif
    if GetTriggerEventId()==EVENT_PLAYER_UNIT_DEATH then
        if GetTriggerUnit()==loc_unit01 then
            call UnitRemoveAbility(loc_unit01,'Apiv')
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        endif
    elseif GetUnitTypeId(loc_unit01)=='h0BT' then
        set unit124=loc_unit01
        set loc_group01=Func0030()
        call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),110,Condition(function Func0305))
        set loc_unit03=Func0253(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01))
        call Func0029(loc_group01)
        if loc_unit03!=null then
            call Func2337(loc_unit02,loc_unit03)
            set loc_real02=GetUnitX(loc_unit01)
            set loc_real03=GetUnitY(loc_unit01)
            set loc_real04=GetUnitState(loc_unit01,UNIT_STATE_LIFE)
            call ShowUnit(loc_unit01,false)
            call DisableTrigger(loc_trigger01)
            call KillUnit(loc_unit01)
            call EnableTrigger(loc_trigger01)
            set loc_unit01=CreateUnit(GetOwningPlayer(loc_unit02),'h0BU',loc_real02,loc_real03,0)
            call SetUnitState(loc_unit01,UNIT_STATE_LIFE,loc_real04)
            call UnitApplyTimedLife(loc_unit01,'BTLF',480-((TimerGetElapsed(timer001))-loc_real01))
            call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit01))
            call SaveReal(hashtable001,(loc_integer01),(411),(((TimerGetElapsed(timer001))+4)*1.0))
        endif
    elseif GetUnitTypeId(loc_unit01)=='h0BU' and(LoadReal(hashtable001,(loc_integer01),(411)))<(TimerGetElapsed(timer001))then
        set loc_real02=GetUnitX(loc_unit01)
        set loc_real03=GetUnitY(loc_unit01)
        set loc_real04=GetUnitState(loc_unit01,UNIT_STATE_LIFE)
        call ShowUnit(loc_unit01,false)
        call DisableTrigger(loc_trigger01)
        call KillUnit(loc_unit01)
        call EnableTrigger(loc_trigger01)
        set loc_unit01=CreateUnit(GetOwningPlayer(loc_unit02),'h0BT',loc_real02,loc_real03,0)
        call SetUnitState(loc_unit01,UNIT_STATE_LIFE,loc_real04)
        call UnitApplyTimedLife(loc_unit01,'BTLF',480-((TimerGetElapsed(timer001))-loc_real01))
        call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit01))
    endif
    set loc_trigger01=null
    set loc_unit02=null
    set loc_unit03=null
    set loc_unit01=null
    set loc_group01=null
    return false
endfunction

// 53446 ~ 53465
function Func2340 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A1G7')
    local real loc_real01=GetSpellTargetX()
    local real loc_real02=GetSpellTargetY()
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'h0BT',loc_real01,loc_real02,0)
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    call UnitApplyTimedLife(loc_unit02,'BTLF',480)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterTimerEvent(loc_trigger01,0.1,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2339))
    call SaveUnitHandle(hashtable001,(loc_integer02),(19),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer02),(442),(((TimerGetElapsed(timer001)))*1.0))
    call SaveInteger(hashtable001,(loc_integer02),(34),(0))
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 53467 ~ 53472
function Func2341 takes nothing returns boolean
    if GetSpellAbilityId()=='A1G7' then
        call Func2340()
    endif
    return false
endfunction

// 53474 ~ 53479
function Func2342 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2341))
    set loc_trigger01=null
endfunction
