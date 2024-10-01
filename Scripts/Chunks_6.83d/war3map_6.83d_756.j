
// 79337 ~ 79350
function Func3844 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A0NE')
    call UnitRemoveAbility(loc_unit01,'A0NE')
    call Func0193(loc_unit01,'A0NE')
    call SetUnitAbilityLevel(loc_unit01,'A0NE',loc_integer02)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction
