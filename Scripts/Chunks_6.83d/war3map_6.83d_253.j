
// 45006 ~ 45008
function Func1808 takes nothing returns boolean
    return GetSpellAbilityId()=='A0LV' or GetSpellAbilityId()=='A2MC'
endfunction

// 45010 ~ 45025
function Func1809 takes nothing returns boolean
    if(IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==false)then
        if(IsUnitAliveBJ(GetFilterUnit()))then
            if Func0096(GetFilterUnit())==false then
                if(GetUnitTypeId(GetFilterUnit())!='ncop')then
                    if(GetUnitAbilityLevel(GetFilterUnit(),'Aeth')==1)then
                        if((GetUnitAbilityLevel(GetFilterUnit(),'A0KO')==1)or(GetUnitAbilityLevel(GetFilterUnit(),'A0KQ')==1)or(GetUnitAbilityLevel(GetFilterUnit(),'A0KR')==1)or(GetUnitAbilityLevel(GetFilterUnit(),'A0KP')==1))then
                            return true
                        endif
                    endif
                endif
            endif
        endif
    endif
    return false
endfunction
