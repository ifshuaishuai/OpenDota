
// 83978 ~ 84000
function Func4040 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(375)))
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer03
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if GetEventDamageSource()==loc_unit01 and(GetEventDamage()>20 or IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==true)then
            set loc_integer03=(LoadInteger(hashtable001,(loc_integer02),(34)))
            if loc_integer03>0 then
                call SaveInteger(hashtable001,(loc_integer02),(34),(loc_integer03+1))
            endif
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        endif
    else
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction
