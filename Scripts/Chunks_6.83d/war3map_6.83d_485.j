
// 60256 ~ 60266
function Func2760 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local trigger loc_trigger02=(LoadTriggerHandle(hashtable001,(loc_integer01),(35)))
    if IsUnitType(GetTriggerUnit(),UNIT_TYPE_HERO)then
        call TriggerRegisterUnitEvent(loc_trigger02,GetTriggerUnit(),EVENT_UNIT_DAMAGED)
    endif
    set loc_trigger01=null
    set loc_trigger02=null
    return false
endfunction

// 60268 ~ 60270
function Func2761 takes nothing returns nothing
    call TriggerRegisterUnitEvent(trigger068,GetEnumUnit(),EVENT_UNIT_DAMAGED)
endfunction
