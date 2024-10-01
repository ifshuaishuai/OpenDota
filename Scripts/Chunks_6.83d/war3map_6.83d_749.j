
// 78844 ~ 78856
function Func3812 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    if GetUnitAbilityLevel(loc_unit01,'BHfs')==0 then
        call UnitRemoveAbility(loc_unit01,'A0C9')
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 78858 ~ 78869
function Func3813 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    call Func0193(loc_unit01,'A0C9')
    call SetUnitAbilityLevel(loc_unit01,'A0C9',GetUnitAbilityLevel(loc_unit01,'A0CA'))
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call TriggerRegisterTimerEvent(loc_trigger01,0.2,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3812))
    set loc_unit01=null
    set loc_trigger01=null
endfunction

// 78871 ~ 78876
function Func3814 takes nothing returns boolean
    if GetSpellAbilityId()=='A0CA' then
        call Func3813()
    endif
    return false
endfunction

// 78878 ~ 78882
function Func3815 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3814))
endfunction
