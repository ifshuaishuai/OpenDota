
// 70940 ~ 70942
function Func3350 takes nothing returns nothing
    call IssueTargetOrder(unit352,"soulburn",GetEnumUnit())
endfunction

// 70944 ~ 70961
function Func3351 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',loc_real01,loc_real02,0)
    local group loc_group01=Func0030()
    set unit352=loc_unit02
    call Func0193(loc_unit02,'A1GG')
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,325,Condition(function Func0298))
    call ForGroup(loc_group01,function Func3350)
    call Func0029(loc_group01)
    call KillUnit(loc_unit01)
    call SetUnitAnimation(loc_unit01,"death")
    call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Undead\\UndeadLargeDeathExplode\\UndeadLargeDeathExplode.mdl",loc_real01,loc_real02))
    set loc_unit01=null
    set loc_unit02=null
    set loc_group01=null
endfunction

// 70963 ~ 70968
function Func3352 takes nothing returns boolean
    if GetSpellAbilityId()=='A1HH' then
        call Func3351()
    endif
    return false
endfunction

// 70970 ~ 70976
function Func3353 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3352))
    call Func0132('A1GG')
    set loc_trigger01=null
endfunction
