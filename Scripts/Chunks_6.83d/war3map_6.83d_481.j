
// 60078 ~ 60080
function Func2748 takes nothing returns boolean
    return GetSpellAbilityId()==('A0I3')and(IsUnitAlly(GetSpellTargetUnit(),GetOwningPlayer(GetTriggerUnit()))or Func0028(GetSpellTargetUnit())==false)
endfunction
