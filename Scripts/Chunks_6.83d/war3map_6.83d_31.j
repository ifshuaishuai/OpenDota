
// 12050 ~ 12052
function Func0499 takes nothing returns nothing
    call RemoveUnit(GetEnumUnit())
endfunction

// 12054 ~ 12060
function Func0500 takes player loc_player01 returns nothing
    local group loc_group01=Func0030()
    local boolexpr loc_boolexpr01=Condition(function Func0498)
    call GroupEnumUnitsOfPlayer(loc_group01,loc_player01,loc_boolexpr01)
    call ForGroup(loc_group01,function Func0499)
    call Func0029(loc_group01)
endfunction

// 12062 ~ 12073
function Func0501 takes nothing returns nothing
    call Func0500(players003[1])
    call Func0500(players003[2])
    call Func0500(players003[3])
    call Func0500(players003[4])
    call Func0500(players003[5])
    call Func0500(players004[1])
    call Func0500(players004[2])
    call Func0500(players004[3])
    call Func0500(players004[4])
    call Func0500(players004[5])
endfunction
