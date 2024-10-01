
// 80383 ~ 80390
function Func3898 takes unit loc_unit01 returns nothing
    local real loc_real01=(GetUnitAbilityLevel(loc_unit01,'A1IM')*75)/2
    set loc_real01=loc_real01/10.0
    if GetUnitState(loc_unit01,UNIT_STATE_LIFE)<=loc_real01*0.75 then
        set loc_real01=GetUnitState(loc_unit01,UNIT_STATE_LIFE)/0.75-10
    endif
    call Func0115(loc_unit01,loc_unit01,1,loc_real01)
endfunction

// 80392 ~ 80440
function Func3899 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local group loc_group01
    local real loc_real03
    local unit loc_unit02
    local integer loc_integer02=0
    local integer loc_integer03=GetTriggerEvalCount(loc_trigger01)
    if GetTriggerEventId()==EVENT_UNIT_DEATH then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        return false
    else
        if GetTriggerEvalCount(loc_trigger01)==1 then
            set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'h0B2',loc_real01,loc_real02,0)
            call UnitApplyTimedLife(loc_unit02,'BTLF',1)
            set loc_unit02=null
            call TriggerRegisterTimerEvent(loc_trigger01,0.1,true)
            set loc_group01=Func0030()
            set unit375=loc_unit01
            set unit124=loc_unit01
            call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,350,Condition(function Func0305))
            call ForGroup(loc_group01,function Func3897)
            call Func3898(loc_unit01)
            call Func0029(loc_group01)
        else
            if loc_integer03==10 then
                call FlushChildHashtable(hashtable001,(loc_integer01))
                call Func0035(loc_trigger01)
            endif
            set loc_group01=Func0030()
            set unit375=loc_unit01
            set unit124=loc_unit01
            call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,350,Condition(function Func0305))
            call ForGroup(loc_group01,function Func3897)
            call Func3898(loc_unit01)
            call Func0029(loc_group01)
            call Func0373(loc_unit01)
            call Func0371(loc_unit01,0,0)
        endif
    endif
    set loc_trigger01=null
    set loc_group01=null
    set loc_unit01=null
    return false
endfunction

// 80442 ~ 80453
function Func3900 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=(GetUnitAbilityLevel(loc_unit01,'A1IM')*75)/2
    call TriggerRegisterTimerEvent(loc_trigger01,1.5,false)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3899))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 80455 ~ 80460
function Func3901 takes nothing returns boolean
    if GetSpellAbilityId()=='A1IM' then
        call Func3900()
    endif
    return false
endfunction

// 80462 ~ 80467
function Func3902 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3901))
    set loc_trigger01=null
endfunction
