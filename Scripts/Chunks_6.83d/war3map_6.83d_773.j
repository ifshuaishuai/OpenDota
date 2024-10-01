
// 80616 ~ 80627
function Func3907 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=GetDyingUnit()
    if GetOwningPlayer(GetKillingUnit())==GetOwningPlayer(loc_unit01)and IsUnitType(loc_unit02,UNIT_TYPE_HERO)==true and IsUnitIllusion(loc_unit02)==false then
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction
