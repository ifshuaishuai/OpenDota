
// 61990 ~ 61996
function Func2846 takes unit loc_unit01,player loc_player01,boolean loc_boolean01 returns nothing
    if loc_boolean01 then
        set units027[GetPlayerId(GetOwningPlayer(loc_unit01))]=loc_unit01
    else
        set units027[GetPlayerId(GetOwningPlayer(loc_unit01))]=null
    endif
endfunction

// 61998 ~ 62012
function Func2847 takes nothing returns nothing
    local unit loc_unit01
    if Func0284(GetEnumUnit())==false then
        call UnitRemoveAbility(GetEnumUnit(),'Bdet')
        call Func2846(GetEnumUnit(),GetOwningPlayer(unit328),true)
    else
        call Func2846(GetEnumUnit(),GetOwningPlayer(unit328),true)
        if GetUnitAbilityLevel(GetEnumUnit(),'Bdet')==0 and GetUnitAbilityLevel(GetEnumUnit(),'B00T')==0 and GetUnitAbilityLevel(GetEnumUnit(),'B00L')==0 then
            set loc_unit01=CreateUnit(GetOwningPlayer(unit328),'e00E',GetUnitX(GetEnumUnit()),GetUnitY(GetEnumUnit()),0)
            call UnitAddAbility(loc_unit01,'A2VW')
            call IssueImmediateOrderById(loc_unit01,852625)
            set loc_unit01=null
        endif
    endif
endfunction

// 62014 ~ 62021
function Func2848 takes nothing returns nothing
    local real loc_real01=0.3
    if Func0194(unit328)==true or IsUnitInGroup(GetEnumUnit(),group019)==false or GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)/GetUnitState(GetEnumUnit(),UNIT_STATE_MAX_LIFE)>loc_real01 or(GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)/GetUnitState(GetEnumUnit(),UNIT_STATE_MAX_LIFE)>loc_real01/2 and Func0284(GetEnumUnit())==true)then
        call GroupRemoveUnit(group018,GetEnumUnit())
        call Func2846(GetEnumUnit(),GetOwningPlayer(unit328),false)
        call UnitRemoveAbility(GetEnumUnit(),'Bdet')
    endif
endfunction
