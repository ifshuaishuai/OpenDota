
// 30137 ~ 30142
function Func1216 takes nothing returns boolean
    if IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false then
        call KillUnit(GetFilterUnit())
    endif
    return false
endfunction

// 30144 ~ 30150
function Func1217 takes nothing returns nothing
    local group loc_group01=Func0030()
    call GroupEnumUnitsOfPlayer(loc_group01,players004[0],Condition(function Func1216))
    call Func0029(loc_group01)
    set loc_group01=null
    set boolean043=true
endfunction

// 30152 ~ 30158
function Func1218 takes nothing returns nothing
    local group loc_group01=Func0030()
    call GroupEnumUnitsOfPlayer(loc_group01,players003[0],Condition(function Func1216))
    call Func0029(loc_group01)
    set loc_group01=null
    set boolean043=true
endfunction
