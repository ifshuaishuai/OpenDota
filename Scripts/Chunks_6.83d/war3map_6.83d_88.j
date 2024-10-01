
// 21852 ~ 21856
function Func0858 takes nothing returns nothing
    if GetSpellAbilityId()=='A12W' and GetUnitAbilityLevel(GetTriggerUnit(),'Bpsh')>0 then
        call UnitRemoveAbility(GetTriggerUnit(),'Bpsh')
    endif
endfunction
