
// 44683 ~ 44685
function Func1779 takes nothing returns boolean
    return GetSpellAbilityId()=='A0FW' and Func0028(GetSpellTargetUnit())==false
endfunction

// 44687 ~ 44689
function Func1780 takes nothing returns boolean
    return(GetUnitTypeId(GetFilterUnit())=='e02E')
endfunction

// 44691 ~ 44693
function Func1781 takes nothing returns nothing
    call KillUnit(GetEnumUnit())
endfunction

// 44695 ~ 44697
function Func1782 takes nothing returns boolean
    return(GetUnitTypeId(GetFilterUnit())=='e02E')
endfunction
