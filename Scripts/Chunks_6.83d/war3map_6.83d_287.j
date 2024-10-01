
// 47308 ~ 47315
function Func1950 takes nothing returns boolean
    if(GetItemTypeId(GetManipulatedItem())=='I00K')then
        if(GetUnitTypeId(GetTriggerUnit())=='Otch')then
            return true
        endif
    endif
    return false
endfunction
