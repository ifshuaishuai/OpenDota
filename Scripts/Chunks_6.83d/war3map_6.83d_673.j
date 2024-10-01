
// 73286 ~ 73300
function Func3488 takes nothing returns boolean
    if(GetUnitTypeId(GetSummonedUnit())=='o00L')then
        return true
    endif
    if(GetUnitTypeId(GetSummonedUnit())=='o00M')then
        return true
    endif
    if(GetUnitTypeId(GetSummonedUnit())=='o00N')then
        return true
    endif
    if(GetUnitTypeId(GetSummonedUnit())=='o00O')then
        return true
    endif
    return false
endfunction

// 73302 ~ 73317
function Func3489 takes unit loc_unit01,real loc_real01 returns nothing
    local real loc_real02=GetUnitState(loc_unit01,UNIT_STATE_MAX_LIFE)
    local real loc_real03=GetUnitState(loc_unit01,UNIT_STATE_LIFE)
    if loc_real01>0 then
        if loc_real01>(loc_real02-loc_real03)then
            if loc_real01>=loc_real03 then
                call SetUnitState(loc_unit01,UNIT_STATE_LIFE,loc_real02)
                call Func0144(loc_unit01,loc_real01-(loc_real02-loc_real03))
            else
                call Func0144(loc_unit01,loc_real01)
            endif
        else
            call SetUnitState(loc_unit01,UNIT_STATE_LIFE,GetUnitState(loc_unit01,UNIT_STATE_LIFE)+loc_real01)
        endif
    endif
endfunction
