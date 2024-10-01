
// 80247 ~ 80262
function Func3890 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit02,'A1HQ')
    if GetTriggerEvalCount(loc_trigger01)==6 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    call Func0115(loc_unit02,loc_unit01,1,8+2*loc_integer02)
    set loc_trigger01=null
    set loc_unit02=null
    set loc_unit01=null
    return false
endfunction
