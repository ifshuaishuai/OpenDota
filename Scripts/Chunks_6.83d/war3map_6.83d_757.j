
// 79352 ~ 79355
function Func3845 takes unit loc_unit01,integer loc_integer01 returns nothing
    local real loc_real01=(8+loc_integer01*8)/3
    call SetUnitState(loc_unit01,UNIT_STATE_LIFE,GetUnitState(loc_unit01,UNIT_STATE_LIFE)+loc_real01)
endfunction

// 79357 ~ 79362
function Func3846 takes nothing returns boolean
    if(IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))==false and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit())))then
        call Func3845(GetFilterUnit(),integer022)
    endif
    return false
endfunction

// 79364 ~ 79372
function Func3847 takes unit loc_unit01 returns nothing
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A0NE')
    local group loc_group01=Func0030()
    set unit124=loc_unit01
    set integer022=loc_integer01
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),525,Condition(function Func3846))
    call Func0029(loc_group01)
    set loc_group01=null
endfunction
