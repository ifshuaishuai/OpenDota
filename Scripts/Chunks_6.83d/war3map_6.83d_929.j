
// 94332 ~ 94345
function Func4569 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local real loc_real01=(LoadReal(hashtable001,(GetHandleId(loc_unit01)),(804)))
    if loc_real01>(TimerGetElapsed(timer001))or GetTriggerEventId()==EVENT_WIDGET_DEATH then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call UnitRemoveAbility(loc_unit01,'A2SP')
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 94347 ~ 94358
function Func4570 takes unit loc_unit01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call SaveReal(hashtable001,(GetHandleId(loc_unit01)),(804),(((TimerGetElapsed(timer001))+10)*1.0))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit01))
    call TriggerRegisterTimerEvent(loc_trigger01,0.1,true)
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit01)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4569))
    call Func0193(loc_unit01,'A2SP')
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2SP',false)
    set loc_trigger01=null
endfunction

// 94360 ~ 94366
function Func4571 takes nothing returns nothing
    if IsUnitType(GetEnumUnit(),UNIT_TYPE_HERO)or IsUnitIllusion(GetEnumUnit())==true then
        set boolean158=true
        call Func4570(GetEnumUnit())
    endif
    call Func0115(unit432,GetEnumUnit(),1,75*integer569)
endfunction
