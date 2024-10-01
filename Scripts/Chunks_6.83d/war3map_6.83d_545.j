
// 64037 ~ 64088
function Func2973 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(30)))
    local unit loc_unit01=Func0022(loc_integer02)
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(269)))
    local real loc_real01=GetUnitState(loc_unit01,UNIT_STATE_LIFE)
    local real loc_real02=GetUnitState(loc_unit01,UNIT_STATE_MAX_LIFE)
    if GetTriggerEventId()==EVENT_UNIT_DEATH then
        call Func0021(loc_integer02)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        if GetTriggerUnit()==loc_unit01 then
            call KillUnit(loc_unit02)
        endif
    elseif boolean036==true then
        call Func0021(loc_integer02)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call PauseUnit(loc_unit02,true)
    elseif GetTriggerEventId()==EVENT_UNIT_ISSUED_ORDER or GetTriggerEventId()==EVENT_UNIT_ISSUED_POINT_ORDER or GetTriggerEventId()==EVENT_UNIT_ISSUED_TARGET_ORDER then
        call DisableTrigger(loc_trigger01)
        call IssueTargetOrder(loc_unit02,"attack",loc_unit01)
        call EnableTrigger(loc_trigger01)
    elseif(loc_real01<(100*integer509)or loc_real01/loc_real02<(0.15+0.05*integer509))and GetUnitAbilityLevel(loc_unit02,'B0AN')==0 then
        call IssueTargetOrder(units028[GetPlayerId(GetOwningPlayer(loc_unit02))],"bloodlust",loc_unit02)
    elseif IsUnitVisible(loc_unit01,GetOwningPlayer(loc_unit02))==false then
        if(LoadBoolean(hashtable001,(loc_integer01),(270)))==true then
            if(LoadBoolean(hashtable001,(loc_integer01),(271)))==true then
                if(LoadBoolean(hashtable001,(loc_integer01),(272)))==true then
                    call FlushChildHashtable(hashtable001,(loc_integer01))
                    call Func0035(loc_trigger01)
                    call KillUnit(loc_unit02)
                else
                    call SaveBoolean(hashtable001,(loc_integer01),(272),(true))
                endif
            else
                call SaveBoolean(hashtable001,(loc_integer01),(271),(true))
            endif
        else
            call SaveBoolean(hashtable001,(loc_integer01),(270),(true))
        endif
    else
        call SaveBoolean(hashtable001,(loc_integer01),(270),(false))
        call SaveBoolean(hashtable001,(loc_integer01),(271),(false))
        call SaveBoolean(hashtable001,(loc_integer01),(272),(false))
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 64090 ~ 64110
function Func2974 takes nothing returns boolean
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetEnumUnit()
    local unit loc_unit02=CreateUnit(player023,'n0F5',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    call IssueTargetOrder(loc_unit02,"attack",loc_unit01)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_ISSUED_ORDER)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_ISSUED_POINT_ORDER)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_ISSUED_TARGET_ORDER)
    call TriggerRegisterTimerEvent(loc_trigger01,0.5,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2973))
    call SaveInteger(hashtable001,(loc_integer01),(30),(Func0024(loc_unit01)))
    call SaveUnitHandle(hashtable001,(loc_integer01),(269),(loc_unit02))
    call SaveInteger(hashtable001,(loc_integer01),(5),(integer509))
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction
