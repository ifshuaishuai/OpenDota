
// 68538 ~ 68542
function Func3214 takes nothing returns nothing
    if Func0263(GetUnitTypeId(GetEnumUnit()))==false then
        set integer515=integer515+1
    endif
endfunction

// 68544 ~ 68548
function Func3215 takes nothing returns nothing
    if Func0263(GetUnitTypeId(GetFilterUnit()))==false then
        call AddHeroXP(GetEnumUnit(),integer516,true)
    endif
endfunction

// 68550 ~ 68573
function Func3216 takes unit loc_unit01 returns nothing
    local group loc_group01=Func0030()
    local integer loc_integer01=Func0571(loc_unit01)
    set integer515=0
    set unit124=loc_unit01
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),1300+25,Condition(function Func0342))
    call ForGroup(loc_group01,function Func3214)
    if integer515>0 then
        set integer516=loc_integer01/integer515
        call ForGroup(loc_group01,function Func3215)
    endif
    call Func0029(loc_group01)
    set integer515=0
    set unit124=loc_unit01
    set loc_group01=Func0030()
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),1300+25,Condition(function Func0338))
    call ForGroup(loc_group01,function Func3214)
    if integer515>0 then
        set integer516=loc_integer01/integer515
        call ForGroup(loc_group01,function Func3215)
    endif
    call Func0029(loc_group01)
    set loc_group01=null
endfunction
