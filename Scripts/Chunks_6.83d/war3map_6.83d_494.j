
// 60945 ~ 60953
function Func2800 takes nothing returns boolean
    if GetSpellAbilityId()=='A04Y' and IsUnitType(GetTriggerUnit(),UNIT_TYPE_HERO)==true then
        if GetOwningPlayer(GetTriggerUnit())!=GetOwningPlayer(GetSpellTargetUnit())and IsUnitAlly(GetSpellTargetUnit(),GetOwningPlayer(GetTriggerUnit()))and(LoadBoolean(hashtable001,(GetHandleId(GetOwningPlayer(GetSpellTargetUnit()))),(139)))then
            call Func0123(GetTriggerUnit())
            call Func0120(GetOwningPlayer(GetTriggerUnit()),GetObjectName('n038'))
        endif
    endif
    return false
endfunction
