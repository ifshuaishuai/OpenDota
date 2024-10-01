
// 62920 ~ 62933
function Func2894 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),integer504,GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    call PlaySoundOnUnitBJ(sound002,100,loc_unit01)
    call KillUnit(loc_unit02)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_unit02=null
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 62935 ~ 62942
function Func2895 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2894))
    call TriggerRegisterTimerEvent(loc_trigger01,0.3,false)
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(GetTriggerUnit()))
    set loc_trigger01=null
endfunction

// 62944 ~ 62949
function Func2896 takes nothing returns boolean
    if GetSpellAbilityId()=='A0RW' then
        call Func2895()
    endif
    return false
endfunction

// 62951 ~ 62959
function Func2897 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2893))
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2896))
    set loc_trigger01=null
endfunction
