
// 68980 ~ 69002
function Func3245 takes unit loc_unit01 returns nothing
    call UnitRemoveAbility(loc_unit01,'A1OQ')
    call UnitRemoveAbility(loc_unit01,'A1OR')
    call UnitRemoveAbility(loc_unit01,'A1OS')
    call UnitRemoveAbility(loc_unit01,'A1OT')
    call UnitRemoveAbility(loc_unit01,'A1OU')
    call UnitRemoveAbility(loc_unit01,'A1OV')
    call UnitRemoveAbility(loc_unit01,'A1OW')
    call UnitRemoveAbility(loc_unit01,'A1OX')
    call UnitRemoveAbility(loc_unit01,'A1OY')
    call UnitRemoveAbility(loc_unit01,'S00M')
    call UnitRemoveAbility(loc_unit01,'A1OZ')
    call UnitRemoveAbility(loc_unit01,'S00N')
    call UnitRemoveAbility(loc_unit01,'A1P0')
    call UnitRemoveAbility(loc_unit01,'A1P1')
    call UnitRemoveAbility(loc_unit01,'A1P7')
    call UnitRemoveAbility(loc_unit01,'A1PA')
    call UnitRemoveAbility(loc_unit01,'A1P3')
    call UnitRemoveAbility(loc_unit01,'A1P4')
    call UnitRemoveAbility(loc_unit01,'A1P5')
    call UnitRemoveAbility(loc_unit01,'A1P6')
    call UnitRemoveAbility(loc_unit01,'A2AG')
endfunction

// 69004 ~ 69053
function Func3246 takes unit loc_unit01,unit loc_unit02 returns nothing
    local integer loc_integer01=GetUnitTypeId(loc_unit02)
    local integer loc_integer02=0
    local integer loc_integer03=0
    if loc_integer01=='n0HX' then
        set loc_integer02='A1OQ'
    elseif loc_integer01=='nomg' then
        set loc_integer02='A1OR'
    elseif loc_integer01=='nfpu' then
        set loc_integer02='A1OS'
        set loc_integer03='S00N'
    elseif loc_integer01=='nstl' then
        set loc_integer02='A1OT'
    elseif loc_integer01=='nsat' then
        set loc_integer02='A1OU'
    elseif loc_integer01=='nsth' then
        set loc_integer02='A1OV'
        set loc_integer03='A1OW'
    elseif loc_integer01=='n00S' then
        set loc_integer02='A1OX'
        set loc_integer03='A1OY'
    elseif loc_integer01=='nkol' then
        set loc_integer02='S00M'
    elseif loc_integer01=='nfsh' then
        set loc_integer02='A1OZ'
        set loc_integer03='A2AG'
    elseif loc_integer01=='ncnk' then
        set loc_integer02='A1P0'
    elseif loc_integer01=='ngns' then
        set loc_integer02='A1P1'
    elseif loc_integer01=='ngh1' then
        set loc_integer02='A1P7'
        set loc_integer03='A1PA'
    elseif loc_integer01=='nowe' then
        set loc_integer02='A1P3'
        set loc_integer03='A1P4'
    elseif loc_integer01=='ndtw' then
        set loc_integer02='A1P5'
        set loc_integer03='A1P6'
    elseif loc_integer01=='nwlg' then
        set loc_integer02='A1OY'
    endif
    if loc_integer02!=0 then
        call Func3245(loc_unit01)
        call Func0193(loc_unit01,loc_integer02)
    endif
    if loc_integer03!=0 then
        call Func0193(loc_unit01,loc_integer03)
    endif
endfunction
