
// 44749 ~ 44751
function Func1787 takes nothing returns boolean
    return GetLearnedSkill()=='A0M3' and IsUnitIllusion(GetTriggerUnit())==false
endfunction

// 44753 ~ 44758
function Func1788 takes nothing returns boolean
    if(IsUnitType(GetEventDamageSource(),UNIT_TYPE_STRUCTURE)==true)then
        return false
    endif
    return true
endfunction
