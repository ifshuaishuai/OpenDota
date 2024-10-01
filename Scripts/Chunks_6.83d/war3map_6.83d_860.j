
// 89391 ~ 89427
function Func4291 takes unit loc_unit01,integer loc_integer01 returns nothing
    local integer array loc_integers01
    local integer loc_integer02=loc_integer01
    local integer loc_integer03=1
    local integer loc_integer04=0
    local integer loc_integer05
    if loc_integer01<1 then
        call UnitRemoveAbility(loc_unit01,integers178[0])
        call UnitRemoveAbility(loc_unit01,integers178[1])
        call UnitRemoveAbility(loc_unit01,integers178[2])
        call UnitRemoveAbility(loc_unit01,integers178[3])
        call UnitRemoveAbility(loc_unit01,integers178[4])
        call UnitRemoveAbility(loc_unit01,integers178[5])
        call UnitRemoveAbility(loc_unit01,integers178[6])
        call UnitRemoveAbility(loc_unit01,integers178[7])
        call UnitRemoveAbility(loc_unit01,integers178[8])
        return
    endif
    loop
        exitwhen loc_integer03==0
        set loc_integer03=loc_integer02/2
        set loc_integers01[loc_integer04]=loc_integer02-loc_integer03*2
        set loc_integer02=loc_integer03
        set loc_integer04=loc_integer04+1
    endloop
    set loc_integer05=8
    set loc_integer04=0
    loop
        exitwhen loc_integer04>loc_integer05
        if loc_integers01[loc_integer04]==1 then
            call Func0193(loc_unit01,integers178[loc_integer04])
        else
            call UnitRemoveAbility(loc_unit01,integers178[loc_integer04])
        endif
        set loc_integer04=loc_integer04+1
    endloop
endfunction

// 89429 ~ 89438
function Func4292 takes unit loc_unit01,integer loc_integer01,unit loc_unit02 returns nothing
    local integer loc_integer02=GetHandleId(loc_unit01)
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer02),(739)))
    if IsUnitType(loc_unit02,UNIT_TYPE_HERO)==true then
        set loc_integer03=loc_integer03+6+4*loc_integer01
        call SaveInteger(hashtable001,(loc_integer02),(739),(loc_integer03))
        call Func0173(GetUnitName(loc_unit01)+" Won The Duel!!",5,loc_unit01,0.03,255,0,0,255)
        call Func4291(loc_unit01,loc_integer03)
    endif
endfunction
