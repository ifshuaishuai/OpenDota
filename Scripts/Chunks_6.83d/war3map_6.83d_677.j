
// 73469 ~ 73493
function Func3499 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A0CC')
    local real loc_real01=80+40*loc_integer02
    if loc_integer02==0 then
        set loc_integer02=GetUnitAbilityLevel(loc_unit01,'A02Z')
        set loc_real01=120+60*loc_integer02
    endif
    set loc_real01=loc_real01*0.25
    if GetUnitAbilityLevel(loc_unit01,'Bdcl')==0 or(GetTriggerEventId()==EVENT_UNIT_SPELL_ENDCAST and(GetSpellAbilityId()=='A0CC' or GetSpellAbilityId()=='A02Z'))then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif GetTriggerEventId()!=EVENT_UNIT_SPELL_ENDCAST then
        if GetUnitState(loc_unit01,UNIT_STATE_LIFE)+loc_real01>=GetUnitState(loc_unit01,UNIT_STATE_MAX_LIFE)then
            call SetUnitState(loc_unit01,UNIT_STATE_MANA,GetUnitState(loc_unit01,UNIT_STATE_MANA)+loc_real01+GetUnitState(loc_unit01,UNIT_STATE_LIFE)-GetUnitState(loc_unit01,UNIT_STATE_MAX_LIFE))
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 73495 ~ 73508
function Func3500 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.25,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SPELL_ENDCAST)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3499))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 73510 ~ 73515
function Func3501 takes nothing returns boolean
    if(GetSpellAbilityId()=='A0CC' or GetSpellAbilityId()=='A02Z')and IsUnitType(GetSpellTargetUnit(),UNIT_TYPE_HERO)then
        call Func3500()
    endif
    return false
endfunction

// 73517 ~ 73522
function Func3502 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3501))
    set loc_trigger01=null
endfunction
