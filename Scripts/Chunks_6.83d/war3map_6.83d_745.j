
// 78655 ~ 78674
function Func3799 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A0AS')
    if GetTriggerEvalCount(loc_trigger01)>11 or GetTriggerEventId()==EVENT_UNIT_DEATH then
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call UnitRemoveAbility(loc_unit02,'A17K')
        call UnitRemoveAbility(loc_unit02,'B0AP')
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        call Func0115(loc_unit01,loc_unit02,1,loc_integer02*10+5)
    endif
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
    return false
endfunction
