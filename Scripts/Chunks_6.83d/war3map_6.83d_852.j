
// 88834 ~ 88853
function Func4259 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    if GetTriggerEventId()!=EVENT_UNIT_SPELL_EFFECT or GetSpellAbilityId()=='A2BD' then
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2BC',true)
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2BD',false)
        call UnitRemoveAbility(loc_unit01,'Aetl')
        call UnitRemoveAbility(loc_unit01,'A2B3')
        call UnitRemoveAbility(loc_unit01,'A2B0')
        call UnitRemoveAbility(loc_unit01,'A2B1')
        call UnitRemoveAbility(loc_unit01,'A2B2')
        call UnitRemoveAbility(loc_unit01,'B0F2')
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 88855 ~ 88885
function Func4260 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A2BC')
    call TriggerRegisterTimerEvent(loc_trigger01,5,false)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4259))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call UnitAddAbility(loc_unit01,'A2BD')
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2BC',false)
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2BD',true)
    call UnitAddAbility(loc_unit01,'Aetl')
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'Aetl',false)
    if loc_integer02==1 then
        call UnitAddAbility(loc_unit01,'A2B3')
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2B3',false)
    elseif loc_integer02==2 then
        call UnitAddAbility(loc_unit01,'A2B0')
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2B0',false)
    elseif loc_integer02==3 then
        call UnitAddAbility(loc_unit01,'A2B1')
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2B1',false)
    elseif loc_integer02==4 then
        call UnitAddAbility(loc_unit01,'A2B2')
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2B2',false)
    endif
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 88887 ~ 88892
function Func4261 takes nothing returns boolean
    if GetSpellAbilityId()=='A2BC' then
        call Func4260()
    endif
    return false
endfunction

// 88894 ~ 88899
function Func4262 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4261))
    set loc_trigger01=null
endfunction
