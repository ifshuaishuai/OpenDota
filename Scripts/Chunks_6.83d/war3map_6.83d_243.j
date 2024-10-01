
// 44521 ~ 44523
function Func1765 takes nothing returns nothing
    call RemoveUnit(GetEnumUnit())
endfunction

// 44525 ~ 44531
function Func1766 takes player loc_player01 returns nothing
    local group loc_group01=Func0030()
    call GroupEnumUnitsOfPlayer(loc_group01,loc_player01,Condition(function Func1764))
    call ForGroup(loc_group01,function Func1765)
    call Func0029(loc_group01)
    set loc_group01=null
endfunction

// 44533 ~ 44565
function Func1767 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(14)))
    local integer loc_integer01=GetHandleId(loc_unit01)
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,('A0FV'))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(315)))-1
    local integer loc_integer04=Func0140(loc_integer03,0,4+loc_integer02)
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(316)))
    local integer loc_integer05
    if loc_integer02==1 then
        set loc_integer05=loc_integer04*20
    elseif loc_integer02==2 then
        set loc_integer05=loc_integer04*25
    elseif loc_integer02==3 then
        set loc_integer05=loc_integer04*30
    endif
    if loc_integer03==0 then
        set loc_integer05=0
    endif
    call Func0420(loc_unit01,loc_integer05)
    if GetUnitTypeId(loc_unit02)=='e00X' then
        call SetUnitAbilityLevel(loc_unit02,('A0EF'),Func1763(loc_integer02,loc_integer04))
        call SaveInteger(hashtable001,(loc_integer01),(315),(loc_integer03))
    else
        call Func1766((LoadPlayerHandle(hashtable001,(GetHandleId(loc_trigger01)),(54))))
    endif
    call FlushChildHashtable(hashtable001,(GetHandleId(loc_trigger01)))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 44567 ~ 44592
function Func1768 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer01=GetHandleId(loc_unit01)
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(316)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,('A0FV'))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(315)))+1
    local integer loc_integer04=Func0140(loc_integer03,0,4+loc_integer02)
    local integer loc_integer05=Func1763(loc_integer02,loc_integer04)
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer06
    if loc_integer02==1 then
        set loc_integer06=loc_integer04*20
    elseif loc_integer02==2 then
        set loc_integer06=loc_integer04*25
    elseif loc_integer02==3 then
        set loc_integer06=loc_integer04*30
    endif
    call Func0420(loc_unit01,loc_integer06)
    call SetUnitAbilityLevel(loc_unit02,('A0EF'),loc_integer05)
    call SaveInteger(hashtable001,(loc_integer01),(315),(loc_integer03))
    call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(14),(loc_unit01))
    call SavePlayerHandle(hashtable001,(GetHandleId(loc_trigger01)),(54),(GetOwningPlayer(loc_unit01)))
    call TriggerRegisterTimerEvent(loc_trigger01,14,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1767))
    set loc_trigger01=null
endfunction
