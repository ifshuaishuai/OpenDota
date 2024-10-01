
// 91541 ~ 91571
function Func4415 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    if GetTriggerEventId()==EVENT_WIDGET_DEATH then
        call KillUnit(loc_unit02)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        set loc_trigger01=null
        set loc_unit01=null
        set loc_unit02=null
        return false
    endif
    if Func0194(loc_unit01)==false then
        call SetUnitX(loc_unit02,GetUnitX(loc_unit01))
        call SetUnitY(loc_unit02,GetUnitY(loc_unit01))
    else
        if IsUnitAlly(loc_unit02,players003[0])==true then
            call SetUnitX(loc_unit02,real016)
            call SetUnitY(loc_unit02,real017)
        else
            call SetUnitX(loc_unit02,real104)
            call SetUnitY(loc_unit02,real105)
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction
