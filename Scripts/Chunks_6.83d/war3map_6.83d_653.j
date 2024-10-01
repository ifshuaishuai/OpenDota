
// 71928 ~ 71964
function Func3416 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(393)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local integer loc_integer03=90
    local integer loc_integer04=(LoadInteger(hashtable001,(loc_integer01),(34)))
    if GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT and GetSpellAbilityId()=='A2MB' then
        call KillUnit(loc_unit02)
        call Func0035(loc_trigger01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
    else
        set loc_integer04=loc_integer04+1
        call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer04))
    endif
    if loc_integer02==1 then
        set loc_integer03=160
    elseif loc_integer02==2 then
        set loc_integer03=120
    endif
    call SetUnitX(loc_unit02,GetUnitX(loc_unit01))
    call SetUnitY(loc_unit02,GetUnitY(loc_unit01))
    if loc_integer04>loc_integer03 then
        call KillUnit(loc_unit02)
        call Func0035(loc_trigger01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
    elseif loc_integer04>30 then
        call UnitRemoveAbility(loc_unit02,'Aloc')
        call ShowUnit(loc_unit02,true)
        call Func0193(loc_unit02,'Aloc')
    endif
    set loc_trigger01=null
    set loc_unit02=null
    set loc_unit01=null
    return false
endfunction
