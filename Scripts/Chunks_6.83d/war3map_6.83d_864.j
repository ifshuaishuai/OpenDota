
// 89695 ~ 89701
function Func4306 takes unit loc_unit01,integer loc_integer01 returns nothing
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    call Func0193(loc_unit02,'A2JC')
    call SetUnitAbilityLevel(loc_unit02,'A2JC',loc_integer01/3)
    call IssueTargetOrder(loc_unit02,"bloodlust",loc_unit01)
    set loc_unit02=null
endfunction

// 89703 ~ 89708
function Func4307 takes nothing returns nothing
    if IsUnitType(GetEnumUnit(),UNIT_TYPE_SUMMONED)==true or IsUnitIllusion(GetEnumUnit())==true then
        call Func0115(GetTriggerUnit(),GetEnumUnit(),1,GetUnitState(GetEnumUnit(),UNIT_STATE_MAX_LIFE)*0.25)
    endif
    call Func0115(GetTriggerUnit(),GetEnumUnit(),1,40*integer548+(12+2*integer548)*integer546+(5+15*integer548)*integer547)
endfunction
