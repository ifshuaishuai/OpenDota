
// 61089 ~ 61106
function Func2808 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local real loc_real01=(LoadReal(hashtable001,(GetHandleId(loc_unit01)),(789)))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    if GetTriggerEventId()==EVENT_WIDGET_DEATH or loc_real01<(TimerGetElapsed(timer001))then
        call UnitRemoveAbility(loc_unit01,'A2OG')
        call UnitRemoveAbility(loc_unit01,'A2OA')
        call UnitRemoveAbility(loc_unit01,'A2OF')
        call UnitRemoveAbility(loc_unit01,'A2OH')
        call UnitRemoveAbility(loc_unit01,'B0GE')
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 61108 ~ 61155
function Func2809 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A2OI')
    if loc_integer02==1 then
        call UnitRemoveAbility(loc_unit02,'B0GE')
        call UnitRemoveAbility(loc_unit02,'A2OA')
        call UnitRemoveAbility(loc_unit02,'A2OF')
        call UnitRemoveAbility(loc_unit02,'A2OH')
        call Func0193(loc_unit02,'A2OG')
        call UnitMakeAbilityPermanent(loc_unit02,true,'A2OD')
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),'A2OG',false)
    elseif loc_integer02==2 then
        call UnitRemoveAbility(loc_unit02,'B0GE')
        call UnitRemoveAbility(loc_unit02,'A2OG')
        call UnitRemoveAbility(loc_unit02,'A2OF')
        call UnitRemoveAbility(loc_unit02,'A2OH')
        call Func0193(loc_unit02,'A2OA')
        call UnitMakeAbilityPermanent(loc_unit02,true,'A2OE')
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),'A2OA',false)
    elseif loc_integer02==3 then
        call UnitRemoveAbility(loc_unit02,'B0GE')
        call UnitRemoveAbility(loc_unit02,'A2OG')
        call UnitRemoveAbility(loc_unit02,'A2OA')
        call UnitRemoveAbility(loc_unit02,'A2OH')
        call Func0193(loc_unit02,'A2OF')
        call UnitMakeAbilityPermanent(loc_unit02,true,'A2OC')
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),'A2OF',false)
    elseif loc_integer02==4 then
        call UnitRemoveAbility(loc_unit02,'B0GE')
        call UnitRemoveAbility(loc_unit02,'A2OG')
        call UnitRemoveAbility(loc_unit02,'A2OA')
        call UnitRemoveAbility(loc_unit02,'A2OF')
        call Func0193(loc_unit02,'A2OH')
        call UnitMakeAbilityPermanent(loc_unit02,true,'A2OB')
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),'A2OH',false)
    endif
    call TriggerRegisterTimerEvent(loc_trigger01,20,false)
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit02)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2808))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveReal(hashtable001,(GetHandleId(loc_unit02)),(789),((19.9+(TimerGetElapsed(timer001)))*1.0))
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 61157 ~ 61162
function Func2810 takes nothing returns boolean
    if GetSpellAbilityId()=='A2OI' and Func0028(GetSpellTargetUnit())==false then
        call Func2809()
    endif
    return false
endfunction

// 61164 ~ 61169
function Func2811 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2810))
    set loc_trigger01=null
endfunction
