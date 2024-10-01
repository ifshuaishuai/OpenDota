
// 93695 ~ 93697
function Func4531 takes nothing returns boolean
    return GetUnitTypeId(GetFilterUnit())=='N0MU' and IsUnitIllusion(GetFilterUnit())==false
endfunction

// 93699 ~ 93742
function Func4532 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(442)))
    local integer loc_integer02=(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(800)))
    local group loc_group01
    if loc_unit01==null then
        set loc_group01=Func0030()
        call GroupEnumUnitsInRange(loc_group01,0,0,99999,Condition(function Func4531))
        set loc_unit01=FirstOfGroup(loc_group01)
        call Func0029(loc_group01)
        set loc_group01=null
        if loc_unit01!=null then
            call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
            call SaveInteger(hashtable001,(GetHandleId(loc_unit01)),(800),(6))
            call Func0193(loc_unit01,integers181[6])
        endif
    endif
    if GetTriggerEventId()==EVENT_UNIT_SPELL_CAST then
        if(Func4520(GetSpellAbilityId()))and loc_integer02<=0 then
            call Func0123(loc_unit01)
        endif
    elseif GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT then
        if Func4520(GetSpellAbilityId())or GetSpellAbilityId()=='A2TJ' then
            if GetSpellAbilityId()=='A2TJ' then
                call Func4528(loc_unit01,null)
            endif
        endif
    elseif loc_integer02<6 then
        set loc_real01=loc_real01-0.2
        call SaveReal(hashtable001,(loc_integer01),(442),((loc_real01)*1.0))
        if loc_real01<=0.then
            call UnitRemoveAbility(loc_unit01,integers181[loc_integer02])
            set loc_integer02=loc_integer02+1
            call Func0193(loc_unit01,integers181[loc_integer02])
            call SaveInteger(hashtable001,(GetHandleId(loc_unit01)),(800),(loc_integer02))
            call SaveReal(hashtable001,(loc_integer01),(442),((real414)*1.0))
        endif
    endif
    set loc_unit01=null
    set loc_trigger01=null
    return false
endfunction

// 93744 ~ 93756
function Func4533 takes unit loc_unit01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.2,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SPELL_CAST)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4532))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer01),(442),((real414)*1.0))
    call SaveInteger(hashtable001,(GetHandleId(loc_unit01)),(800),(6))
    call Func0193(loc_unit01,integers181[6])
    set loc_trigger01=null
endfunction

// 93758 ~ 93760
function Func4534 takes nothing returns nothing
    call Func4533(unit124)
endfunction
