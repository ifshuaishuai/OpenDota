
// 48773 ~ 48799
function Func2055 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer03=Func0047(loc_unit01)
    local real loc_real01=GetUnitState(loc_unit01,UNIT_STATE_LIFE)
    local real loc_real02=GetUnitState(loc_unit01,UNIT_STATE_MAX_LIFE)
    local real loc_real03
    if loc_real01/loc_real02>0.4 then
        set loc_real03=I2R(loc_integer02)/4*0.2*loc_integer03+10
    else
        set loc_real03=0.2*loc_integer02*loc_integer03+10
    endif
    set loc_real03=loc_real03/8.0
    if GetTriggerEvalCount(loc_trigger01)>16*8.0 then
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(31))))
        call UnitRemoveAbility(loc_unit01,'A0QO')
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        call SetUnitState(loc_unit01,UNIT_STATE_LIFE,loc_real01+loc_real03)
    endif
    set loc_unit01=null
    set loc_trigger01=null
    return false
endfunction

// 48801 ~ 48817
function Func2056 takes nothing returns nothing
    local unit loc_unit01=GetSpellTargetUnit()
    local unit loc_unit02=GetTriggerUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit02,'A0QP')
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,1/8.0,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2055))
    call SaveInteger(hashtable001,(loc_integer02),(5),(loc_integer01))
    call SaveUnitHandle(hashtable001,(loc_integer02),(17),(loc_unit01))
    call SaveEffectHandle(hashtable001,(loc_integer02),(31),(AddSpecialEffectTarget("InnerVitality.mdx",loc_unit01,"chest")))
    call Func0193(loc_unit01,'A0QO')
    call SetUnitAbilityLevel(loc_unit01,'A0QO',loc_integer01)
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 48819 ~ 48824
function Func2057 takes nothing returns boolean
    if GetSpellAbilityId()=='A0QP' then
        call Func2056()
    endif
    return false
endfunction

// 48826 ~ 48830
function Func2058 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2057))
endfunction
