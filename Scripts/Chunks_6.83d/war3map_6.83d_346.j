
// 51034 ~ 51036
function Func2194 takes nothing returns boolean
    return GetSpellAbilityId()==('A0LN')
endfunction

// 51038 ~ 51040
function Func2195 takes nothing returns boolean
    return IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true and IsUnitAlly(GetFilterUnit(),GetOwningPlayer(unit002))
endfunction

// 51042 ~ 51048
function Func2196 takes nothing returns nothing
    local unit loc_unit01=GetEnumUnit()
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e01R',0,0,0)
    call Func0193(loc_unit02,('A0LO'))
    call SetUnitAbilityLevel(loc_unit02,('A0LO'),GetUnitAbilityLevel(unit002,('A0LN')))
    call UnitApplyTimedLife(loc_unit02,'BTLF',10)
endfunction

// 51050 ~ 51056
function Func2197 takes unit loc_unit01 returns nothing
    local group loc_group01=Func0030()
    set unit002=loc_unit01
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),800,Condition(function Func2195))
    call ForGroup(loc_group01,function Func2196)
    call Func0029(loc_group01)
endfunction
