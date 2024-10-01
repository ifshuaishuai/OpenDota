
// 93672 ~ 93674
function Func4529 takes nothing returns boolean
    return((GetUnitTypeId(GetFilterUnit())=='o01X' and GetOwningPlayer(GetFilterUnit())==GetOwningPlayer(unit423))or(GetUnitTypeId((GetFilterUnit()))=='o020'))and Func0194(GetFilterUnit())==false
endfunction

// 93676 ~ 93693
function Func4530 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local group loc_group01
    if GetUnitTypeId(loc_unit01)=='N0MU' and Func0194(loc_unit01)==false then
        set loc_group01=Func0030()
        set unit423=loc_unit01
        call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),150+25,Condition(function Func4529))
        if FirstOfGroup(loc_group01)!=null then
        endif
        call Func0029(loc_group01)
        set loc_group01=null
    endif
    set loc_unit01=null
    set loc_trigger01=null
    return false
endfunction
