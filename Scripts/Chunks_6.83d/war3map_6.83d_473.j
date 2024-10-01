
// 59702 ~ 59712
function Func2722 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    call SetUnitAnimation(loc_unit01,"attack")
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 59714 ~ 59737
function Func2723 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local location loc_location01=GetSpellTargetLoc()
    local real loc_real01=GetLocationX(loc_location01)
    local real loc_real02=GetLocationY(loc_location01)
    call RemoveLocation(loc_location01)
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call TriggerRegisterTimerEvent(loc_trigger01,0.,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2722))
    call SaveReal(hashtable001,(GetHandleId(loc_unit01)),(356),((loc_real01)*1.0))
    call SaveReal(hashtable001,(GetHandleId(loc_unit01)),(357),((loc_real02)*1.0))
    call SaveReal(hashtable001,(GetHandleId(loc_unit01)),(358),(((TimerGetElapsed(timer001)))*1.0))
    call SetUnitTimeScale(loc_unit01,1)
    set loc_trigger01=CreateTrigger()
    set loc_integer01=GetHandleId(loc_trigger01)
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call TriggerRegisterTimerEvent(loc_trigger01,1,false)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2721))
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 59739 ~ 59751
function Func2724 takes nothing returns boolean
    if GetSpellAbilityId()=='A12K' then
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_CHANNEL then
            call SaveBoolean(hashtable001,(GetHandleId(GetTriggerUnit())),(360),(false))
            call Func2723()
        elseif GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT then
            call SaveBoolean(hashtable001,(GetHandleId(GetTriggerUnit())),(360),(true))
        elseif(LoadBoolean(hashtable001,(GetHandleId(GetTriggerUnit())),(360)))==true then
            call Func2720()
        endif
    endif
    return false
endfunction

// 59753 ~ 59760
function Func2725 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_ENDCAST)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_CHANNEL)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2724))
    set loc_trigger01=null
endfunction
