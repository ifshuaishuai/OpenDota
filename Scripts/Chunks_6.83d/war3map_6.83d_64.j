
// 19641 ~ 19656
function Func0760 takes integer loc_integer01 returns integer
    if loc_integer01=='I006' then
        return integer121
    elseif loc_integer01=='I008' then
        return integer122
    elseif loc_integer01=='I00J' then
        return integer119
    elseif loc_integer01=='I00K' then
        return integer120
    elseif loc_integer01=='I007' then
        return integer123
    elseif loc_integer01=='I0RC' then
        return integer124
    endif
    return-1
endfunction

// 19658 ~ 19671
function Func0761 takes nothing returns boolean
    if GetSpellAbilityId()=='A0H6' then
        call SaveUnitHandle(hashtable001,(GetHandleId(GetTriggerUnit())),(103),(null))
        call SaveInteger(hashtable001,(GetHandleId(GetTriggerUnit())),(104),(0))
        if(Func0394(GetTriggerUnit(),integers089[integer115])!=null or Func0394(GetTriggerUnit(),integers091[integer115])!=null)and(GetUnitTypeId(GetSpellTargetUnit())=='nfoh' or GetUnitTypeId(GetSpellTargetUnit())=='ndfl')then
            call SaveUnitHandle(hashtable001,(GetHandleId(GetTriggerUnit())),(103),(GetSpellTargetUnit()))
        elseif Func0607(GetItemTypeId(GetSpellTargetItem()))then
            call Func0663(GetTriggerUnit(),GetItemTypeId(GetSpellTargetItem()),true)
            call SaveInteger(hashtable001,(GetHandleId(GetTriggerUnit())),(104),(GetItemTypeId(GetSpellTargetItem())))
            call Func0392(GetSpellTargetItem())
        endif
    endif
    return false
endfunction
