
// 59867 ~ 59877
function Func2731 takes nothing returns nothing
    local real loc_real01=GetUnitX(GetEnumUnit())
    local real loc_real02=GetUnitY(GetEnumUnit())
    local unit loc_unit01=CreateUnit(GetOwningPlayer(unit321),'e039',loc_real01,loc_real02,0)
    call UnitAddAbility(loc_unit01,'A05S')
    call SetUnitAbilityLevel(loc_unit01,'A05S',integer496)
    call IssueTargetOrder(loc_unit01,"chainlightning",GetEnumUnit())
    call UnitApplyTimedLife(loc_unit01,'BTLF',3)
    call UnitAddAbility(loc_unit01,'Aloc')
    set loc_unit01=null
endfunction

// 59879 ~ 59891
function Func2732 takes nothing returns nothing
    local group loc_group01=Func0030()
    set unit321=GetTriggerUnit()
    if GetSpellAbilityId()=='A29G' then
        set integer496=GetUnitAbilityLevel(GetTriggerUnit(),'A29G')+4
    else
        set integer496=GetUnitAbilityLevel(GetTriggerUnit(),'A29H')+7
    endif
    call GroupEnumUnitsInRect(loc_group01,bj_mapInitialPlayableArea,Condition(function Func2730))
    call ForGroup(loc_group01,function Func2731)
    call Func0029(loc_group01)
    set loc_group01=null
endfunction

// 59893 ~ 59898
function Func2733 takes nothing returns boolean
    if GetSpellAbilityId()=='A29G' or GetSpellAbilityId()=='A29H' then
        call Func2732()
    endif
    return false
endfunction

// 59900 ~ 59905
function Func2734 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2733))
    set loc_trigger01=null
endfunction
