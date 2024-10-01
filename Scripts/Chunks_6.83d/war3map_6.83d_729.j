
// 77010 ~ 77024
function Func3713 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(20)))
    local real loc_real02=Func0142(GetUnitState(loc_unit01,UNIT_STATE_LIFE)-loc_real01,1)
    local real loc_real03=(LoadReal(hashtable001,(GetHandleId(loc_unit01)),(243)))
    call SetUnitState(loc_unit01,UNIT_STATE_LIFE,loc_real02)
    call SaveReal(hashtable001,(GetHandleId(loc_unit01)),(243),((loc_real03-loc_real01)*1.0))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 77026 ~ 77036
function Func3714 takes unit loc_unit01,real loc_real01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local real loc_real02=(LoadReal(hashtable001,(GetHandleId(loc_unit01)),(243)))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer01),(20),((loc_real01)*1.0))
    call SaveReal(hashtable001,(GetHandleId(loc_unit01)),(243),((loc_real02+loc_real01)*1.0))
    call TriggerRegisterTimerEvent(loc_trigger01,0,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3713))
    set loc_trigger01=null
endfunction

// 77038 ~ 77077
function Func3715 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01
    local real loc_real01
    local real loc_real02
    local integer loc_integer02=GetTriggerEvalCount(loc_trigger01)
    local real loc_real03
    local real loc_real04=(LoadReal(hashtable001,(loc_integer01),(389)))
    local real loc_real05=(LoadReal(hashtable001,(loc_integer01),(390)))
    if loc_real04!=(TimerGetElapsed(timer001))then
        set loc_real04=(TimerGetElapsed(timer001))
        set loc_real05=0
        call SaveReal(hashtable001,(loc_integer01),(389),((loc_real04)*1.0))
        call SaveReal(hashtable001,(loc_integer01),(390),((loc_real05)*1.0))
    endif
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        set loc_unit01=GetTriggerUnit()
        set loc_real03=(LoadReal(hashtable001,(GetHandleId(loc_unit01)),(243)))
        set loc_real01=GetUnitState(loc_unit01,UNIT_STATE_LIFE)
        set loc_real02=GetEventDamage()
        if((loc_real01-loc_real03-loc_real05)-loc_real02)<1 then
            call SetUnitState(loc_unit01,UNIT_STATE_LIFE,loc_real01+loc_real02+loc_real05)
            call Func3714(loc_unit01,loc_real02)
        else
            set loc_real05=loc_real05+loc_real02
            call SaveReal(hashtable001,(loc_integer01),(390),((loc_real05)*1.0))
        endif
    else
        call SaveInteger(hashtable001,(GetHandleId(((LoadUnitHandle(hashtable001,(loc_integer01),(17)))))),((2485)),(2))
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call UnitRemoveAbility((LoadUnitHandle(hashtable001,(loc_integer01),(17))),'A21I')
        call UnitRemoveAbility((LoadUnitHandle(hashtable001,(loc_integer01),(17))),'B07D')
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_unit01=null
    set loc_trigger01=null
    return false
endfunction

// 77079 ~ 77103
function Func3716 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    call Func0193(loc_unit02,'A21I')
    call TriggerRegisterTimerEvent(loc_trigger01,5,false)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DAMAGED)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3715))
    call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget("war3mapImported\\DarkHands.mdx",loc_unit02,"overhead")))
    call SaveReal(hashtable001,(GetHandleId(loc_unit02)),(243),((0)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(389),(((TimerGetElapsed(timer001)))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(390),((0)*1.0))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveInteger(hashtable001,(GetHandleId((loc_unit02))),((2485)),(1))
    set loc_trigger01=CreateTrigger()
    set loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.5,true)
    call TriggerRegisterTimerEvent(loc_trigger01,0,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3712))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 77105 ~ 77110
function Func3717 takes nothing returns boolean
    if GetSpellAbilityId()=='A10L' then
        call Func3716()
    endif
    return false
endfunction

// 77112 ~ 77117
function Func3718 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3717))
    set loc_trigger01=null
endfunction
