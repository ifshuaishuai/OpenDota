
// 18874 ~ 18890
function Func0725 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local real loc_real01=(LoadReal(hashtable001,(GetHandleId(loc_unit01)),(833)))
    if GetTriggerEventId()==EVENT_WIDGET_DEATH or loc_real01<(TimerGetElapsed(timer001))then
        call UnitRemoveAbility(loc_unit01,'A265')
        call UnitRemoveAbility(loc_unit01,'B08N')
        call UnitRemoveAbility(loc_unit01,'A26C')
        call SaveReal(hashtable001,(GetHandleId(loc_unit01)),(833),((0)*1.0))
    endif
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 18892 ~ 18917
function Func0726 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local real loc_real01
    if GetTriggerEventId()!=EVENT_UNIT_DAMAGED then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        if GetEventDamageSource()==loc_unit01 and GetEventDamage()>0 then
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
            if GetUnitAbilityLevel(loc_unit01,'A022')==0 then
                set loc_real01=RMinBJ(25,GetUnitState(loc_unit02,UNIT_STATE_MANA))
                call SetUnitState(loc_unit02,UNIT_STATE_MANA,GetUnitState(loc_unit02,UNIT_STATE_MANA)-loc_real01)
                call Func0115(loc_unit01,loc_unit02,2,loc_real01)
                call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Human\\Feedback\\ArcaneTowerAttack.mdl",loc_unit02,"origin"))
            endif
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 18919 ~ 18936
function Func0727 takes nothing returns nothing
    local unit loc_unit01=GetAttacker()
    local unit loc_unit02=GetTriggerUnit()
    local trigger loc_trigger01
    local integer loc_integer01
    if((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4340))))==1)==false and GetUnitState(loc_unit02,UNIT_STATE_MANA)>0 then
        call Func0044(loc_unit01,4340,0.2)
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DAMAGED)
        call TriggerRegisterTimerEvent(loc_trigger01,2.5,false)
        call TriggerAddCondition(loc_trigger01,Condition(function Func0726))
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
        call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    endif
    set loc_unit01=null
    set loc_unit02=null
endfunction
