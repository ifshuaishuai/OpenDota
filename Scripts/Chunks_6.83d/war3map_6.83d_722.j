
// 76565 ~ 76567
function Func3689 takes nothing returns boolean
    return GetSpellAbilityId()==('A0OR')
endfunction

// 76569 ~ 76571
function Func3690 takes nothing returns boolean
    return IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(unit002))and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0
endfunction

// 76573 ~ 76575
function Func3691 takes nothing returns nothing
    call Func0115(unit002,GetEnumUnit(),2,real002)
endfunction

// 76577 ~ 76585
function Func3692 takes unit loc_unit01,unit loc_unit02,real loc_real01 returns nothing
    local group loc_group01=Func0030()
    local boolexpr loc_boolexpr01=Condition(function Func3690)
    set unit002=loc_unit01
    set real002=loc_real01
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit02),GetUnitY(loc_unit02),185+25,loc_boolexpr01)
    call ForGroup(loc_group01,function Func3691)
    call Func0029(loc_group01)
endfunction
