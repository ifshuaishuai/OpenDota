
// 72538 ~ 72540
function Func3445 takes nothing returns nothing
    call Func0115(unit355,GetEnumUnit(),1,real355)
endfunction

// 72542 ~ 72553
function Func3446 takes unit loc_unit01,integer loc_integer01,real loc_real01,real loc_real02,integer loc_integer02,boolean loc_boolean01 returns nothing
    local group loc_group01=Func0030()
    set unit355=loc_unit01
    set real355=30*loc_integer02
    if loc_boolean01 then
        set real355=real355+10*loc_integer02
    endif
    set unit124=loc_unit01
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,350,Condition(function Func0305))
    call ForGroup(loc_group01,function Func3445)
    call Func0029(loc_group01)
endfunction
