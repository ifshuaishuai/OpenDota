
// 74022 ~ 74055
function Func3528 takes unit loc_unit01,integer loc_integer01 returns nothing
    local integer array loc_integers01
    local integer loc_integer02=loc_integer01
    local integer loc_integer03=1
    local integer loc_integer04=0
    local integer loc_integer05
    if loc_integer01<1 then
        call UnitRemoveAbility(loc_unit01,integers052[0])
        call UnitRemoveAbility(loc_unit01,integers052[1])
        call UnitRemoveAbility(loc_unit01,integers052[2])
        call UnitRemoveAbility(loc_unit01,integers052[3])
        call UnitRemoveAbility(loc_unit01,integers052[4])
        call UnitRemoveAbility(loc_unit01,integers052[5])
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
            call Func0193(loc_unit01,integers052[loc_integer04])
        else
            call UnitRemoveAbility(loc_unit01,integers052[loc_integer04])
        endif
        set loc_integer04=loc_integer04+1
    endloop
endfunction

// 74057 ~ 74062
function Func3529 takes unit loc_unit01,integer loc_integer01 returns nothing
    if IsUnitType(loc_unit01,UNIT_TYPE_STRUCTURE)==false then
        call Func3528(loc_unit01,loc_integer01+Func3527(loc_unit01))
        call Func3526(loc_unit01,integer521)
    endif
endfunction

// 74064 ~ 74068
function Func3530 takes unit loc_unit01,unit loc_unit02,unit loc_unit03,integer loc_integer01 returns nothing
    call IssueTargetOrder(loc_unit02,"chainlightning",loc_unit03)
    call Func0117(loc_unit01,loc_unit03,2,(50+25*loc_integer01)/2.0,0.3)
    call Func3529(loc_unit03,1)
endfunction
