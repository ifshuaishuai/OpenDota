
// 82103 ~ 82129
function Func3971 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    if GetTriggerEventId()==EVENT_WIDGET_DEATH then
        call UnitRemoveAbility(loc_unit02,'A270')
        call UnitRemoveAbility(loc_unit02,'B0EK')
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif GetTriggerEvalCount(loc_trigger01)>4 then
        call UnitRemoveAbility(loc_unit02,'A270')
        call UnitRemoveAbility(loc_unit02,'B0EK')
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call Func0115(loc_unit01,loc_unit02,1,16+12*loc_integer02)
    else
        call Func0115(loc_unit01,loc_unit02,1,16+12*loc_integer02)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction
