
// 48078 ~ 48081
function Func2009 takes nothing returns nothing
    call Func0115(GetTriggerUnit(),GetEnumUnit(),1,real009)
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Items\\StaffOfPurification\\PurificationTarget.mdx",GetEnumUnit(),"chest"))
endfunction

// 48083 ~ 48101
function Func2010 takes nothing returns nothing
    local group loc_group01=Func0030()
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A0SC')
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',loc_real01,loc_real02,0)
    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Items\\StaffOfPurification\\PurificationCaster.mdx",loc_real01,loc_real02))
    call Func0193(loc_unit02,'A0SD')
    call SetUnitAbilityLevel(loc_unit02,'A0SD',loc_integer01)
    call IssuePointOrder(loc_unit02,"silence",loc_real01,loc_real02)
    set real009=loc_integer01*70
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,425,Condition(function Func0301))
    call ForGroup(loc_group01,function Func2009)
    call Func0029(loc_group01)
    set loc_unit02=null
    set loc_group01=null
    set loc_unit01=null
endfunction

// 48103 ~ 48108
function Func2011 takes nothing returns boolean
    if GetSpellAbilityId()=='A0SC' then
        call Func2010()
    endif
    return false
endfunction

// 48110 ~ 48115
function Func2012 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2011))
    set loc_trigger01=null
endfunction
