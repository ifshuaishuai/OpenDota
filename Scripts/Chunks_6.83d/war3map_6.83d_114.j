
// 22976 ~ 22990
function Func0932 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    call SetItemCharges(Func0394(loc_unit01,integers089[integer235]),GetItemCharges(Func0394(loc_unit01,integers089[integer235]))+1)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    if GetUnitTypeId(loc_unit01)=='Npbm' then
        set unit400=loc_unit01
    endif
    call KillUnit(loc_unit01)
    set loc_unit01=null
    set loc_trigger01=null
    return false
endfunction

// 22992 ~ 23001
function Func0933 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call TriggerAddCondition(loc_trigger01,Condition(function Func0932))
    call TriggerRegisterTimerEvent(loc_trigger01,0.01,false)
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 23003 ~ 23007
function Func0934 takes nothing returns nothing
    if GetSpellAbilityId()=='A2TK' then
        call Func0933()
    endif
endfunction
