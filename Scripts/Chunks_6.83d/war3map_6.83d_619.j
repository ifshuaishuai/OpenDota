
// 69930 ~ 69934
function Func3285 takes nothing returns nothing
    local unit loc_unit01=GetEnumUnit()
    call SaveReal(hashtable001,(GetHandleId(loc_unit01)),(799),((0)*1.0))
    set loc_unit01=null
endfunction

// 69936 ~ 69943
function Func3286 takes nothing returns nothing
    local unit loc_unit01=GetEnumUnit()
    call UnitRemoveAbility(loc_unit01,'A2S3')
    call UnitRemoveAbility(loc_unit01,'A2TM')
    call UnitRemoveAbility(loc_unit01,'B0BQ')
    call SetUnitTurnSpeed(loc_unit01,GetUnitDefaultTurnSpeed(loc_unit01))
    set loc_unit01=null
endfunction
