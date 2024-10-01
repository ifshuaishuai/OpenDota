
// 68240 ~ 68247
function Func3199 takes nothing returns nothing
    local unit loc_unit01=unit344
    local unit loc_unit02=GetEnumUnit()
    call Func0115(loc_unit01,loc_unit02,1,real346)
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl",loc_unit02,"origin"))
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 68249 ~ 68295
function Func3200 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A21F')
    local group loc_group01
    if loc_integer02!=0 then
        if loc_integer02==1 then
            set real346=100
        elseif loc_integer02==2 then
            set real346=130
        else
            set real346=160
        endif
    else
        set loc_integer02=GetUnitAbilityLevel(loc_unit01,'A21G')
        if loc_integer02==1 then
            set real346=160
        elseif loc_integer02==2 then
            set real346=190
        else
            set real346=220
        endif
    endif
    if GetTriggerEventId()==EVENT_WIDGET_DEATH or GetUnitState(loc_unit01,UNIT_STATE_MANA)<20*loc_integer02 or(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(704)))==-1 or(GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT and(GetSpellAbilityId()=='A21H' or GetSpellAbilityId()=='A27H'))then
        if(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(704)))==0 or(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(704)))=='A21F' then
            call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A21F',true)
        endif
        if(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(704)))==0 or(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(704)))=='A21G' then
            call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A21G',true)
        endif
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A21H',false)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif GetTriggerEventId()!=EVENT_UNIT_SPELL_EFFECT then
        call SetUnitState(loc_unit01,UNIT_STATE_MANA,GetUnitState(loc_unit01,UNIT_STATE_MANA)-20*loc_integer02)
        set unit124=loc_unit01
        set unit344=loc_unit01
        set loc_group01=Func0030()
        call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),475,Condition(function Func0305))
        call ForGroup(loc_group01,function Func3199)
        call Func0029(loc_group01)
        set loc_group01=null
    endif
    set loc_trigger01=null
    return false
endfunction

// 68297 ~ 68314
function Func3201 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl",loc_unit01,"origin"))
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A21F',false)
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A21G',false)
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A21H',true)
    call UnitAddAbility(loc_unit01,'A21H')
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit01)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3200))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call TriggerEvaluate(loc_trigger01)
    set loc_unit01=null
    set loc_trigger01=null
endfunction

// 68316 ~ 68321
function Func3202 takes nothing returns boolean
    if GetSpellAbilityId()=='A21F' or GetSpellAbilityId()=='A21G' then
        call Func3201()
    endif
    return false
endfunction

// 68323 ~ 68328
function Func3203 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3202))
    set loc_trigger01=null
endfunction
