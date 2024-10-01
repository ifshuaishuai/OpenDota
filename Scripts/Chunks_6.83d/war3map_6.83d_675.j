
// 73372 ~ 73393
function Func3494 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    if GetTriggerEventId()!=EVENT_UNIT_DAMAGED then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        call DisableTrigger(loc_trigger01)
        if IsUnitAlly(loc_unit01,GetOwningPlayer(loc_unit02))==true then
            call Func0145(loc_unit02,GetEventDamage()*0.107)
        else
            call Func0115(GetEventDamageSource(),loc_unit02,1,GetEventDamage()*0.071/1.4)
        endif
        call EnableTrigger(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction
