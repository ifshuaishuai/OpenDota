
// 40795 ~ 40799
function Func1566 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    call SetUnitScale(loc_unit01,Func0050(loc_unit01)*real258,Func0050(loc_unit01)*real258,Func0050(loc_unit01)*real258)
    set loc_unit01=null
endfunction

// 40801 ~ 40806
function Func1567 takes nothing returns boolean
    if IsUnitType(GetTriggerUnit(),UNIT_TYPE_HERO)==true then
        call Func1566()
    endif
    return false
endfunction

// 40808 ~ 40814
function Func1568 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call TriggerRegisterEnterRectSimple(loc_trigger01,bj_mapInitialPlayableArea)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1567))
    set boolean130=true
    set real258=0.5
endfunction
