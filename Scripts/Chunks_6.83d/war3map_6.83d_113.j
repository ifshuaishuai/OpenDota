
// 22962 ~ 22966
function Func0930 takes nothing returns nothing
    if IsUnitAlly(GetSpellTargetUnit(),GetOwningPlayer(GetTriggerUnit()))==false then
        call Func0115(GetTriggerUnit(),GetSpellTargetUnit(),2,100)
    endif
endfunction

// 22968 ~ 22974
function Func0931 takes nothing returns nothing
    if GetSpellAbilityId()=='A1FD' then
        if GetUnitTypeId(GetSpellTargetUnit())=='o004' or GetUnitTypeId(GetSpellTargetUnit())=='oeye' then
            call Func0930()
        endif
    endif
endfunction
