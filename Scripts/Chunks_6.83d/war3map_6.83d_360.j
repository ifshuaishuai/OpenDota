
// 52102 ~ 52108
function Func2258 takes unit loc_unit01,unit loc_unit02,integer loc_integer01 returns nothing
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    call UnitAddAbility(loc_unit03,'A0BA')
    call SetUnitAbilityLevel(loc_unit03,'A0BA',loc_integer01)
    call IssueTargetOrder(loc_unit03,"ensnare",loc_unit02)
    set loc_unit03=null
endfunction

// 52110 ~ 52115
function Func2259 takes nothing returns boolean
    if IsUnitIllusion(GetFilterUnit())==true and GetUnitTypeId(GetFilterUnit())=='HC49' and GetOwningPlayer(GetFilterUnit())==GetOwningPlayer(GetTriggerUnit())then
        call Func2258(GetFilterUnit(),unit293,GetUnitAbilityLevel(GetTriggerUnit(),'A24D'))
    endif
    return false
endfunction

// 52117 ~ 52123
function Func2260 takes nothing returns boolean
    if IsUnitIllusion(GetFilterUnit())==true and GetUnitTypeId(GetFilterUnit())=='HC49' and GetOwningPlayer(GetFilterUnit())==GetOwningPlayer(GetTriggerUnit())then
        call SetUnitFacing(GetFilterUnit(),real009)
        call SetUnitAnimation(GetFilterUnit(),"spell")
    endif
    return false
endfunction

// 52125 ~ 52133
function Func2261 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local group loc_group01=Func0030()
    set real009=Func0169(GetUnitX(loc_unit01),GetUnitY(loc_unit01),GetUnitX(unit293),GetUnitY(unit293))
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),700,Condition(function Func2260))
    call Func0029(loc_group01)
    set loc_unit01=null
    set loc_group01=null
endfunction
