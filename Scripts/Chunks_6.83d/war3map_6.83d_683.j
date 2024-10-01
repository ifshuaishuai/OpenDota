
// 73986 ~ 74008
function Func3525 takes integer loc_integer01 returns nothing
    local integer loc_integer02=1
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(136)))
    local unit loc_unit01
    local integer loc_integer04
    if loc_integer03==0 then
        return
    endif
    loop
        exitwhen loc_integer02>loc_integer03
        set loc_integer04=(LoadInteger(hashtable001,(loc_integer01),(2200+loc_integer02)))
        set loc_unit01=Func0022(loc_integer04)
        call Func0021(loc_integer04)
        call UnitRemoveAbility(loc_unit01,integers052[0])
        call UnitRemoveAbility(loc_unit01,integers052[1])
        call UnitRemoveAbility(loc_unit01,integers052[2])
        call UnitRemoveAbility(loc_unit01,integers052[3])
        call UnitRemoveAbility(loc_unit01,integers052[4])
        call UnitRemoveAbility(loc_unit01,integers052[5])
        set loc_integer02=loc_integer02+1
    endloop
    set loc_unit01=null
endfunction

// 74010 ~ 74016
function Func3526 takes unit loc_unit01,integer loc_integer01 returns nothing
    local integer loc_integer02=Func0024(loc_unit01)
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(136)))
    set loc_integer03=loc_integer03+1
    call SaveInteger(hashtable001,(loc_integer01),(136),(loc_integer03))
    call SaveInteger(hashtable001,(loc_integer01),(2200+loc_integer03),(loc_integer02))
endfunction

// 74018 ~ 74020
function Func3527 takes unit loc_unit01 returns integer
    return GetUnitAbilityLevel(loc_unit01,integers052[0])*1+GetUnitAbilityLevel(loc_unit01,integers052[1])*2+GetUnitAbilityLevel(loc_unit01,integers052[2])*4+GetUnitAbilityLevel(loc_unit01,integers052[3])*8+GetUnitAbilityLevel(loc_unit01,integers052[4])*16
endfunction
