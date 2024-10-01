
// 88637 ~ 88640
function Func4248 takes nothing returns nothing
    call IssueTargetOrder(unit407,"ensnare",GetEnumUnit())
    call Func0115(GetTriggerUnit(),GetEnumUnit(),1,60*integer545)
endfunction

// 88642 ~ 88663
function Func4249 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local group loc_group01=Func0030()
    local group loc_group02=Func0030()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A2A6')
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    set integer545=loc_integer01
    set unit407=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',loc_real01,loc_real02,0)
    call UnitAddAbility(unit407,'A2AE')
    call SetUnitAbilityLevel(unit407,'A2AE',loc_integer01)
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,425,Condition(function Func0298))
    call GroupEnumUnitsInRange(loc_group02,loc_real01,loc_real02,825,Condition(function Func0298))
    call GroupRemoveGroup(loc_group01,loc_group02)
    call ForGroup(loc_group02,function Func4248)
    call Func0029(loc_group01)
    call Func0029(loc_group02)
    call DestroyEffect(AddSpecialEffect("war3mapImported\\ConjureForceAoE.mdx",loc_real01,loc_real02))
    set loc_unit01=null
    set loc_group01=null
    set loc_group02=null
endfunction

// 88665 ~ 88670
function Func4250 takes nothing returns boolean
    if GetSpellAbilityId()=='A2A6' then
        call Func4249()
    endif
    return false
endfunction

// 88672 ~ 88677
function Func4251 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4250))
    set loc_trigger01=null
endfunction
