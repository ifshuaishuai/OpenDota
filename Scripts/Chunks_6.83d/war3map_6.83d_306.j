
// 48237 ~ 48267
function Func2020 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local integer loc_integer02
    local integer loc_integer03
    local integer loc_integer04
    if(GetTriggerEventId()==EVENT_UNIT_ISSUED_ORDER and GetIssuedOrderId()!=String2OrderIdBJ("phaseshift"))or GetTriggerEventId()==EVENT_UNIT_ISSUED_POINT_ORDER or GetTriggerEventId()==EVENT_UNIT_ISSUED_TARGET_ORDER or GetTriggerEventId()==EVENT_UNIT_DEATH then
        call SetUnitInvulnerable(loc_unit01,false)
        call UnitRemoveAbility(loc_unit01,'A04R')
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        set loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
        set loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(28)))+1
        call SaveInteger(hashtable001,(loc_integer01),(28),(loc_integer03))
        set loc_integer04=3*loc_integer02
        if loc_integer02==4 then
            set loc_integer04=loc_integer04+1
        endif
        if loc_integer03>loc_integer04 or Func0149(GetUnitX(loc_unit01),GetUnitY(loc_unit01),(LoadReal(hashtable001,(loc_integer01),(6))),(LoadReal(hashtable001,(loc_integer01),(7))))>125 then
            call SetUnitInvulnerable(loc_unit01,false)
            call UnitRemoveAbility(loc_unit01,'A04R')
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 48269 ~ 48289
function Func2021 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call SetUnitInvulnerable(loc_unit01,true)
    call Func0193(loc_unit01,'A04R')
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call SaveInteger(hashtable001,(loc_integer01),(5),(GetUnitAbilityLevel(loc_unit01,'A0SB')))
    call SaveInteger(hashtable001,(loc_integer01),(28),(0))
    call SaveReal(hashtable001,(loc_integer01),(6),((GetUnitX(loc_unit01))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((GetUnitY(loc_unit01))*1.0))
    call TriggerRegisterTimerEvent(loc_trigger01,0.25,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_ISSUED_ORDER)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_ISSUED_POINT_ORDER)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_ISSUED_TARGET_ORDER)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2020))
    call Func0044(loc_unit01,4266,5.9)
    set loc_trigger01=null
    set loc_unit01=null
endfunction
