
// 73700 ~ 73735
function Func3515 takes unit loc_unit01,integer loc_integer01 returns nothing
    local integer array loc_integers01
    local integer loc_integer02=loc_integer01
    local integer loc_integer03=1
    local integer loc_integer04=0
    local integer loc_integer05
    if loc_integer01<1 then
        call UnitRemoveAbility(loc_unit01,integers169[0])
        call UnitRemoveAbility(loc_unit01,integers169[1])
        call UnitRemoveAbility(loc_unit01,integers169[2])
        call UnitRemoveAbility(loc_unit01,integers169[3])
        call UnitRemoveAbility(loc_unit01,integers169[4])
        call UnitRemoveAbility(loc_unit01,integers169[5])
        call UnitRemoveAbility(loc_unit01,integers169[6])
        call UnitRemoveAbility(loc_unit01,integers169[7])
        return
    endif
    loop
        exitwhen loc_integer03==0
        set loc_integer03=loc_integer02/2
        set loc_integers01[loc_integer04]=loc_integer02-loc_integer03*2
        set loc_integer02=loc_integer03
        set loc_integer04=loc_integer04+1
    endloop
    set loc_integer05=loc_integer04
    set loc_integer04=0
    loop
        exitwhen loc_integer04>loc_integer05
        if loc_integers01[loc_integer04]==1 then
            call Func0193(loc_unit01,integers169[loc_integer04])
        else
            call UnitRemoveAbility(loc_unit01,integers169[loc_integer04])
        endif
        set loc_integer04=loc_integer04+1
    endloop
endfunction
