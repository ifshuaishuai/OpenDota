
// 91857 ~ 91870
function Func4433 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    call SetUnitTimeScale(loc_unit01,1)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    if GetTriggerEventId()!=EVENT_UNIT_DEATH then
        call Func0123(loc_unit01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 91872 ~ 91893
function Func4434 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local location loc_location01=GetSpellTargetLoc()
    local real loc_real01=GetLocationX(loc_location01)
    local real loc_real02=GetLocationY(loc_location01)
    local real loc_real03=Func0169(GetUnitX(loc_unit01),GetUnitY(loc_unit01),loc_real01,loc_real02)*bj_DEGTORAD
    local real loc_real04=RMaxBJ(Func0149(GetUnitX(loc_unit01),GetUnitY(loc_unit01),loc_real01,loc_real02)/600,0.32)
    call RemoveLocation(loc_location01)
    call SaveReal(hashtable001,(GetHandleId(loc_unit01)),(356),((loc_real01)*1.0))
    call SaveReal(hashtable001,(GetHandleId(loc_unit01)),(357),((loc_real02)*1.0))
    call SaveReal(hashtable001,(GetHandleId(loc_unit01)),(736),((loc_real03)*1.0))
    call SaveReal(hashtable001,(GetHandleId(loc_unit01)),(358),(((TimerGetElapsed(timer001)))*1.0))
    call SetUnitTimeScale(loc_unit01,0.75)
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call TriggerRegisterTimerEvent(loc_trigger01,loc_real04-0.01,false)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4433))
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 91895 ~ 91907
function Func4435 takes nothing returns boolean
    if GetSpellAbilityId()=='A2EE' then
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_CAST then
            call SaveBoolean(hashtable001,(GetHandleId(GetTriggerUnit())),(360),(false))
            call Func4434()
        elseif GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT then
            call SaveBoolean(hashtable001,(GetHandleId(GetTriggerUnit())),(360),(true))
        elseif(LoadBoolean(hashtable001,(GetHandleId(GetTriggerUnit())),(360)))==true then
            call Func4432()
        endif
    endif
    return false
endfunction

// 91909 ~ 91916
function Func4436 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_ENDCAST)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_CAST)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4435))
    set loc_trigger01=null
endfunction
