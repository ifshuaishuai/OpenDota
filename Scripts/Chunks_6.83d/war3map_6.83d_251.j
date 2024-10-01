
// 44851 ~ 44853
function Func1797 takes nothing returns nothing
    call Func0115(unit271,GetEnumUnit(),1,real278)
endfunction

// 44855 ~ 44874
function Func1798 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A2ON')
    local real loc_real01
    local group loc_group01=Func0030()
    set real278=100+loc_integer01*75
    set unit271=loc_unit01
    set unit124=loc_unit01
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit02),GetUnitY(loc_unit02),190+25,Condition(function Func0313))
    call ForGroup(loc_group01,function Func1797)
    set loc_real01=real278
    if GetUnitState(loc_unit01,UNIT_STATE_LIFE)<=loc_real01*0.75 then
        set loc_real01=GetUnitState(loc_unit01,UNIT_STATE_LIFE)/0.75-10
    endif
    call Func0115(loc_unit01,loc_unit01,1,loc_real01)
    call DestroyEffect(AddSpecialEffect("war3mapImported\\DoubleEdgeTarget.mdx",GetUnitX(loc_unit02),GetUnitY(loc_unit02)))
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 44876 ~ 44885
function Func1799 takes nothing returns boolean
    if GetSpellAbilityId()=='A2ON' then
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT then
            call Func1798()
        else
            call DestroyEffect(AddSpecialEffectTarget("war3mapImported\\DoubleEdgeCaster.mdx",GetTriggerUnit(),"hand, right"))
        endif
    endif
    return false
endfunction

// 44887 ~ 44893
function Func1800 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1799))
    set loc_trigger01=null
endfunction
