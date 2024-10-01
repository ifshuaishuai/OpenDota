
// 62023 ~ 62031
function Func2849 takes nothing returns nothing
    local real loc_real01
    if Func0194(unit328)==false and IsUnitInGroup(GetEnumUnit(),group018)==false and IsUnitIllusion(GetEnumUnit())==false then
        set loc_real01=0.3
        if GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)/GetUnitState(GetEnumUnit(),UNIT_STATE_MAX_LIFE)<loc_real01 then
            call GroupAddUnit(group018,GetEnumUnit())
        endif
    endif
endfunction

// 62033 ~ 62039
function Func2850 takes nothing returns nothing
    local real loc_real01
    if Func0194(unit328)==false and IsUnitIllusion(GetEnumUnit())==false then
        set real332=real332+1
        set real331=real331+(GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)/GetUnitState(GetEnumUnit(),UNIT_STATE_MAX_LIFE))
    endif
endfunction
