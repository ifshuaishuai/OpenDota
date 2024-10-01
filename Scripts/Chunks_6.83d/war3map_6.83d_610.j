
// 69165 ~ 69175
function Func3251 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(34)))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 69177 ~ 69191
function Func3252 takes nothing returns nothing
    local integer loc_integer01=GetSpellAbilityId()
    local trigger loc_trigger01
    local integer loc_integer02
    if loc_integer01=='A1OQ' or loc_integer01=='A1OR' or loc_integer01=='A1OS' or loc_integer01=='A1OT' or loc_integer01=='A1OU' or loc_integer01=='A1OV' or loc_integer01=='A1OW' or loc_integer01=='A1OX' or loc_integer01=='A1OY' or loc_integer01=='S00M' or loc_integer01=='A1OZ' or loc_integer01=='S00N' or loc_integer01=='A1P0' or loc_integer01=='A1P1' or loc_integer01=='A1P2' or loc_integer01=='A1P3' or loc_integer01=='A1P4' or loc_integer01=='A1P5' or loc_integer01=='A1P6' then
        set loc_trigger01=CreateTrigger()
        set loc_integer02=GetHandleId(loc_trigger01)
        call TriggerRegisterUnitEvent(loc_trigger01,GetTriggerUnit(),EVENT_UNIT_DEATH)
        call TriggerRegisterTimerEvent(loc_trigger01,1,false)
        call TriggerAddCondition(loc_trigger01,Condition(function Func3251))
        call SaveUnitHandle(hashtable001,(loc_integer02),(2),(GetTriggerUnit()))
        call SaveInteger(hashtable001,(loc_integer02),(34),(loc_integer01))
        set loc_trigger01=null
    endif
endfunction

// 69193 ~ 69204
function Func3253 takes nothing returns boolean
    if GetSpellAbilityId()=='A10R' then
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_CAST then
            call Func3250()
        else
            call Func3249()
        endif
    elseif GetUnitTypeId(GetTriggerUnit())=='UC42' then
        call Func3252()
    endif
    return false
endfunction

// 69206 ~ 69212
function Func3254 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3253))
    set loc_trigger01=null
endfunction
