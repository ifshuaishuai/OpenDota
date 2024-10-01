
// 88498 ~ 88520
function Func4240 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    if GetTriggerEventId()==EVENT_WIDGET_DEATH then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if GetEventDamage()>2 and boolean155 then
            set boolean155=false
            call Func0115(GetEventDamageSource(),loc_unit02,3,GetEventDamage()*0.25)
            set boolean155=true
        endif
    else
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 88522 ~ 88542
function Func4241 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A2A8')
    set boolean155=true
    call UnitAddAbility(loc_unit03,'A2A7')
    call SetUnitAbilityLevel(loc_unit03,'A2A7',loc_integer02)
    call IssueTargetOrder(loc_unit03,"soulburn",loc_unit02)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DAMAGED)
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit02)
    call TriggerRegisterTimerEvent(loc_trigger01,2+loc_integer02,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4240))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 88544 ~ 88549
function Func4242 takes nothing returns boolean
    if GetSpellAbilityId()=='A2A8' then
        call Func4241()
    endif
    return false
endfunction

// 88551 ~ 88556
function Func4243 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4242))
    set loc_trigger01=null
endfunction
