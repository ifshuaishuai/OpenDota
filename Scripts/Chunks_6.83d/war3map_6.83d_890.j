
// 91573 ~ 91590
function Func4416 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    if Func0194(loc_unit02)==false then
        call Func0115(loc_unit01,loc_unit02,7,GetUnitState(loc_unit02,UNIT_STATE_LIFE)*0.06)
    endif
    if GetTriggerEvalCount(loc_trigger01)==5 then
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 91592 ~ 91625
function Func4417 takes unit loc_unit01,unit loc_unit02 returns nothing
    local trigger loc_trigger01
    local integer loc_integer01
    local integer loc_integer02
    local integer loc_integer03
    local integer loc_integer04
    if((LoadInteger(hashtable001,(GetHandleId((loc_unit02))),((4329))))==1)==false and GetUnitTypeId(loc_unit02)!='n00L' then
        call Func0044(loc_unit02,4329,real407)
        set loc_integer02=GetUnitAbilityLevel(loc_unit01,'A2NE')
        if loc_integer02==1 then
            set loc_integer03='A2NB'
            set loc_integer04='A2NA'
        elseif loc_integer02==2 then
            set loc_integer03='A2N6'
            set loc_integer04='A2N8'
        elseif loc_integer02==3 then
            set loc_integer03='A2NC'
            set loc_integer04='A2N7'
        elseif loc_integer02==4 then
            set loc_integer03='A2ND'
            set loc_integer04='A2N9'
        endif
        call Func0246(loc_unit02,loc_integer03,1,5,'B0GA')
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),loc_integer03,false)
        call UnitMakeAbilityPermanent(loc_unit02,true,loc_integer04)
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call TriggerRegisterTimerEvent(loc_trigger01,1,true)
        call TriggerAddCondition(loc_trigger01,Condition(function Func4416))
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
        call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
        call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget("Abilities\\Spells\\Other\\FrostDamage\\FrostDamage.mdl",loc_unit02,"chest")))
    endif
endfunction

// 91627 ~ 91647
function Func4418 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if GetEventDamageSource()==loc_unit01 then
            call DisableTrigger(loc_trigger01)
            call Func4417(loc_unit01,loc_unit02)
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        endif
    else
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit02=null
    set loc_unit01=null
    return false
endfunction

// 91649 ~ 91662
function Func4419 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetAttacker()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DAMAGED)
    call TriggerRegisterTimerEvent(loc_trigger01,2.5,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4418))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit01))
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 91664 ~ 91675
function Func4420 takes nothing returns boolean
    if GetTriggerEventId()==EVENT_PLAYER_UNIT_ATTACKED then
        if GetAttacker()==(LoadUnitHandle(hashtable001,(GetHandleId(GetTriggeringTrigger())),(2)))and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false and IsUnitAlly(GetAttacker(),GetOwningPlayer(GetTriggerUnit()))==false then
            if GetUnitTypeId(GetAttacker())=='N0MB' or GetUnitTypeId(GetAttacker())=='N0MC' or GetUnitTypeId(GetAttacker())=='N0MO' or GetUnitTypeId(GetAttacker())=='N0MA' then
                call Func4419()
            endif
        endif
    else
        call Func4415()
    endif
    return false
endfunction

// 91677 ~ 91693
function Func4421 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'o01Y',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    if IsUnitIllusion(loc_unit01)==false then
        call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
    else
        call TriggerRegisterDeathEvent(loc_trigger01,loc_unit01)
    endif
    call TriggerRegisterTimerEvent(loc_trigger01,0.02,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4420))
    call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(19),(loc_unit02))
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction
