
// 41700 ~ 41703
function Func1620 takes string loc_string01 returns nothing
    call Func0152(bj_FORCE_ALL_PLAYERS,20.00,"|c00CC0000"+GetObjectName('n0NE')+": |r|c006699CC"+loc_string01+"|r")
    call StartSound(sound063)
endfunction

// 41705 ~ 41710
function Func1621 takes nothing returns nothing
    call Func1620(GetObjectName(('n0NG')))
    call CreateItem(integers088[integer263],GetUnitX(unit262),GetUnitY(unit262))
    call ReviveHero(unit262,GetUnitX(unit262),GetUnitY(unit262),false)
    call RemoveUnit(unit262)
endfunction

// 41712 ~ 41717
function Func1622 takes nothing returns nothing
    call Func1620(GetObjectName(('n0NH')))
    call SetItemVisible(item003,true)
    call SetItemPosition(item003,GetUnitX(unit262),GetUnitY(unit262))
    call RemoveUnit(unit262)
endfunction
