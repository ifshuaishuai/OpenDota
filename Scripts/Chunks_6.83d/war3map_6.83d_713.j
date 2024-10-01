
// 76097 ~ 76107
function Func3656 takes nothing returns nothing
    local unit loc_unit01=GetSummoningUnit()
    local unit loc_unit02=GetSummonedUnit()
    call SelectUnitAddForPlayer(loc_unit02,GetOwningPlayer(loc_unit01))
    call UnitAddAbility(loc_unit02,'A2KY')
    call UnitRemoveAbility(loc_unit02,'A2KY')
    call SetUnitState(loc_unit02,UNIT_STATE_LIFE,GetUnitState(loc_unit02,UNIT_STATE_MAX_LIFE))
    call SetUnitPosition(loc_unit02,GetUnitX(loc_unit02),GetUnitY(loc_unit02))
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 76109 ~ 76114
function Func3657 takes nothing returns boolean
    if GetUnitAbilityLevel(GetSummonedUnit(),'B0EI')>0 then
        call Func3656()
    endif
    return false
endfunction
