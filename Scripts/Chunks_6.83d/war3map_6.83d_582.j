
// 66887 ~ 66896
function Func3132 takes nothing returns nothing
    if boolean148 or(Func0194(GetEnumUnit())or IsUnitInRangeXY(GetEnumUnit(),GetUnitX(unit341),GetUnitY(unit341),900)==false or IsUnitType(GetEnumUnit(),UNIT_TYPE_RANGED_ATTACKER)==false)then
        call GroupRemoveUnit(group022,GetEnumUnit())
        call UnitRemoveAbility(GetEnumUnit(),'A2VL')
        if IsUnitType(GetEnumUnit(),UNIT_TYPE_RANGED_ATTACKER)==false then
            call UnitRemoveAbility(GetEnumUnit(),'B0GY')
            call UnitRemoveAbility(GetEnumUnit(),'B0H4')
        endif
    endif
endfunction

// 66898 ~ 66902
function Func3133 takes nothing returns nothing
    if IsUnitType(GetEnumUnit(),UNIT_TYPE_RANGED_ATTACKER)and IsUnitInGroup(GetEnumUnit(),group022)==false then
        call GroupAddUnit(group022,GetEnumUnit())
    endif
endfunction
