
// 59236 ~ 59243
function Func2697 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    call UnitRemoveAbility((LoadUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(14))),'A0RC')
    call FlushChildHashtable(hashtable001,(GetHandleId(loc_trigger01)))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    return false
endfunction

// 59245 ~ 59256
function Func2698 takes unit loc_unit01,unit loc_unit02 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(14),(loc_unit02))
    call TriggerRegisterTimerEvent(loc_trigger01,10,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2697))
    call Func0193(loc_unit02,'A0RC')
    call SetUnitAbilityLevel(loc_unit02,'A0RC',GetUnitAbilityLevel(loc_unit01,'A0RV'))
    call Func0115(loc_unit01,loc_unit02,2,50*GetUnitAbilityLevel(loc_unit01,'A0RV'))
    call Func0173(I2S(50*GetUnitAbilityLevel(loc_unit01,'A0RV')),1,loc_unit02,0.03,255,0,0,255)
    call UnitRemoveAbility(loc_unit01,'B08K')
    set loc_trigger01=null
endfunction

// 59258 ~ 59285
function Func2699 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(30)))
    local unit loc_unit01=Func0022(loc_integer02)
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local trigger loc_trigger02=(LoadTriggerHandle(hashtable001,(loc_integer01),(353)))
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if GetEventDamageSource()==loc_unit02 then
            call DisableTrigger(loc_trigger01)
            call FlushChildHashtable(hashtable001,(GetHandleId(loc_trigger02)))
            call Func0035(loc_trigger02)
            call Func2698(loc_unit02,loc_unit01)
            call Func0021(loc_integer02)
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        endif
    else
        call Func0021(loc_integer02)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger02=null
    return false
endfunction

// 59287 ~ 59297
function Func2700 takes unit loc_unit01,unit loc_unit02,trigger loc_trigger01 returns nothing
    local trigger loc_trigger02=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger02)
    call TriggerRegisterUnitEvent(loc_trigger02,loc_unit02,EVENT_UNIT_DAMAGED)
    call TriggerRegisterTimerEvent(loc_trigger02,2.0,false)
    call TriggerAddCondition(loc_trigger02,Condition(function Func2699))
    call SaveInteger(hashtable001,(loc_integer01),(30),(Func0024(loc_unit02)))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveTriggerHandle(hashtable001,(loc_integer01),(353),(loc_trigger01))
    set loc_trigger02=null
endfunction

// 59299 ~ 59326
function Func2701 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    if GetTriggerEventId()==EVENT_UNIT_DEATH or GetTriggerEventId()==EVENT_UNIT_SPELL_CAST or(GetTriggerEventId()==EVENT_PLAYER_UNIT_ATTACKED and GetAttacker()==loc_unit01 and IsUnitAlly(GetTriggerUnit(),GetOwningPlayer(loc_unit01))==false)then
        if GetTriggerEventId()!=EVENT_UNIT_DEATH and GetTriggerEventId()!=EVENT_UNIT_SPELL_CAST and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false then
            call Func2700(loc_unit01,GetTriggerUnit(),loc_trigger01)
            call UnitRemoveAbility(loc_unit01,'B08K')
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        endif
        if GetTriggerEventId()==EVENT_UNIT_DEATH or GetTriggerEventId()==EVENT_UNIT_SPELL_CAST then
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        endif
    elseif GetTriggerEventId()!=EVENT_PLAYER_UNIT_ATTACKED then
        if loc_real01!=GetUnitX(loc_unit01)or loc_real02!=GetUnitY(loc_unit01)then
            call UnitRemoveAbility(loc_unit01,'B08K')
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 59328 ~ 59345
function Func2702 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call DestroyEffect(AddSpecialEffectTarget("effects\\PurpleAura.mdx",loc_unit01,"origin"))
    call Func0184(sound019,GetUnitX(loc_unit01),GetUnitY(loc_unit01))
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SPELL_CAST)
    call TriggerRegisterTimerEvent(loc_trigger01,0.2,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2701))
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer01),(6),((GetUnitX(loc_unit01))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((GetUnitY(loc_unit01))*1.0))
    call IssueImmediateOrder(loc_unit01,"holdposition")
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 59347 ~ 59352
function Func2703 takes nothing returns boolean
    if GetSpellAbilityId()=='A0RV' then
        call Func2702()
    endif
    return false
endfunction

// 59354 ~ 59359
function Func2704 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2703))
    set loc_trigger01=null
endfunction
