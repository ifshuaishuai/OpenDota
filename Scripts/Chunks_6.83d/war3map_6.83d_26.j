
// 8692 ~ 8698
function Func0456 takes unit loc_unit01 returns boolean
    local integer loc_integer01=GetUnitTypeId(loc_unit01)
    if loc_integer01=='n00V' or loc_integer01=='n00W' or loc_integer01=='n002' or loc_integer01=='n00X' or loc_integer01=='nC38' or loc_integer01=='n01K' or loc_integer01=='n009' then
        return true
    endif
    return false
endfunction

// 8700 ~ 8712
function Func0457 takes nothing returns nothing
    if(GetOwningPlayer(GetEnumUnit())==Player(0))then
        call SetUnitOwner(GetEnumUnit(),players003[0],false)
        if Func0456(GetEnumUnit())==false then
            call SetUnitColor(GetEnumUnit(),ConvertPlayerColor(0))
        endif
    else
        call SetUnitOwner(GetEnumUnit(),players004[0],false)
        if Func0456(GetEnumUnit())==false then
            call SetUnitColor(GetEnumUnit(),ConvertPlayerColor(6))
        endif
    endif
endfunction

// 8714 ~ 8722
function Func0458 takes nothing returns nothing
    local group loc_group01=Func0030()
    call GroupEnumUnitsOfPlayer(loc_group01,Player(0),Condition(function Func0011))
    call ForGroup(loc_group01,function Func0457)
    call GroupClear(loc_group01)
    call GroupEnumUnitsOfPlayer(loc_group01,Player(6),Condition(function Func0011))
    call ForGroup(loc_group01,function Func0457)
    call Func0029(loc_group01)
endfunction
