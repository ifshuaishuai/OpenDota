
// 55210 ~ 55212
function Func2450 takes nothing returns boolean
    return GetLearnedSkill()=='A0A5' and IsUnitIllusion(GetTriggerUnit())==false
endfunction

// 55214 ~ 55228
function Func2451 takes nothing returns boolean
    if Func0194(GetFilterUnit())then
        return false
    endif
    if((GetUnitTypeId(GetFilterUnit())=='n01C'))then
        return true
    endif
    if((GetUnitTypeId(GetFilterUnit())=='n018'))then
        return true
    endif
    if((GetUnitTypeId(GetFilterUnit())=='n004'))then
        return true
    endif
    return false
endfunction
