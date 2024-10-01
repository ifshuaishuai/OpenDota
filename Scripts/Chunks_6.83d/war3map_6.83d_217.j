
// 42568 ~ 42597
function Func1662 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=1
    local player loc_player01
    local real loc_real01
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(136)))
    local integer loc_integer04=(LoadInteger(hashtable001,(loc_integer01),(188)))
    if GetTriggerEventId()==EVENT_UNIT_DEATH or GetTriggerEvalCount(loc_trigger01)>loc_integer04 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        loop
            exitwhen loc_integer02>loc_integer03
            set loc_player01=(LoadPlayerHandle(hashtable001,(loc_integer01),(1300+loc_integer02)))
            set loc_real01=(LoadReal(hashtable001,(loc_integer01),(1200+loc_integer02)))
            if loc_player01==null then
                set loc_integer02=loc_integer03
            else
                call SetUnitState(loc_unit01,UNIT_STATE_LIFE,Func0142(1,GetUnitState(loc_unit01,UNIT_STATE_LIFE)-loc_real01/loc_integer04))
            endif
            set loc_integer02=loc_integer02+1
        endloop
    endif
    set loc_trigger01=null
    set loc_player01=null
    set loc_unit01=null
    return false
endfunction

// 42599 ~ 42624
function Func1663 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local player loc_player01=(LoadPlayerHandle(hashtable001,(loc_integer01),(54)))
    local trigger loc_trigger02=(LoadTriggerHandle(hashtable001,(loc_integer01),(135)))
    local integer loc_integer02=GetTriggerEvalCount(loc_trigger01)
    if GetTriggerEventId()!=EVENT_UNIT_DAMAGED then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call TriggerRegisterTimerEvent(loc_trigger02,1,true)
        call TriggerAddCondition(loc_trigger02,Condition(function Func1662))
        call UnitRemoveAbility(loc_unit01,'B09U')
    else
        set loc_integer01=GetHandleId(loc_trigger02)
        call SetUnitState(loc_unit01,UNIT_STATE_LIFE,GetUnitState(loc_unit01,UNIT_STATE_LIFE)+0.5*GetEventDamage())
        call SavePlayerHandle(hashtable001,(loc_integer01),(1300+loc_integer02),(GetOwningPlayer(GetEventDamageSource())))
        call SaveReal(hashtable001,(loc_integer01),(1200+loc_integer02),((0.5*GetEventDamage())*1.0))
        call SaveInteger(hashtable001,(loc_integer01),(136),(loc_integer02))
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_player01=null
    set loc_trigger02=null
    return false
endfunction

// 42626 ~ 42649
function Func1664 takes nothing returns nothing
    local unit loc_unit01=unit267
    local unit loc_unit02=GetEnumUnit()
    local integer loc_integer01=integer460
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    local integer loc_integer03=10
    local trigger loc_trigger02=CreateTrigger()
    call Func0243(loc_unit02,'A126',1,loc_integer03)
    call UnitMakeAbilityPermanent(loc_unit02,true,'A126')
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),'A126',false)
    call TriggerRegisterTimerEvent(loc_trigger01,loc_integer03+0.01,false)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DAMAGED)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1663))
    call SavePlayerHandle(hashtable001,(loc_integer02),(54),(GetOwningPlayer(loc_unit01)))
    call SaveUnitHandle(hashtable001,(loc_integer02),(17),(loc_unit02))
    call SaveTriggerHandle(hashtable001,(loc_integer02),(135),(loc_trigger02))
    call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger02)),(17),(loc_unit02))
    call SaveInteger(hashtable001,(GetHandleId(loc_trigger02)),(188),(loc_integer03))
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
    set loc_trigger02=null
endfunction
