
// 55729 ~ 55756
function Func2488 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(335)))
    local boolean loc_boolean01=(LoadBoolean(hashtable001,(loc_integer01),(336)))
    if GetTriggerEventId()==EVENT_UNIT_SPELL_ENDCAST then
        call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4269)),(2))
        call SaveBoolean(hashtable001,(GetHandleId(loc_unit02)),(337),(true))
        if loc_boolean01 then
            call ShowUnit(loc_unit02,false)
            call KillUnit(loc_unit02)
        else
            call ShowUnit(loc_unit02,false)
            call UnitRemoveAbility(loc_unit02,'Aloc')
            call ShowUnit(loc_unit02,true)
        endif
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        if loc_boolean01 then
            call SetUnitFacing(loc_unit02,GetUnitFacing(loc_unit01))
        endif
    endif
    set loc_trigger01=null
    set loc_unit02=null
    return false
endfunction

// 55758 ~ 55789
function Func2489 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02
    local boolean loc_boolean01
    call SaveBoolean(hashtable001,(loc_integer01),(336),(false))
    if((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4270))))==1)==false then
        call SaveBoolean(hashtable001,(loc_integer01),(336),(true))
        set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'h07U',GetUnitX(loc_unit01),GetUnitY(loc_unit01),GetUnitFacing(loc_unit01))
        call Func0193(loc_unit02,'Aloc')
        call Func0193(loc_unit02,'Aetl')
        call SetUnitPosition(loc_unit02,GetUnitX(loc_unit01),GetUnitY(loc_unit01))
        call SetUnitScale(loc_unit02,1.4,1.4,1.4)
    else
        set loc_unit02=(units025[GetPlayerId(GetOwningPlayer((loc_unit01)))])
        call UnitAddAbility(loc_unit02,'Aloc')
    endif
    call IssueImmediateOrder(loc_unit02,"stop")
    call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4269)),(1))
    call SetUnitAnimation(loc_unit02,"spell slam")
    call QueueUnitAnimation(loc_unit02,"spell slam")
    call SaveUnitHandle(hashtable001,(loc_integer01),(335),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call TriggerRegisterTimerEvent(loc_trigger01,0.1,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SPELL_ENDCAST)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2488))
    call SaveUnitHandle(hashtable001,(loc_integer01),(335),(loc_unit02))
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 55791 ~ 55801
function Func2490 takes nothing returns boolean
    local integer loc_integer01
    if GetSpellAbilityId()=='A1AA' then
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_FINISH then
            call Func2487()
        else
            call Func2489()
        endif
    endif
    return false
endfunction

// 55803 ~ 55809
function Func2491 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_FINISH)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2490))
    set loc_trigger01=null
endfunction
