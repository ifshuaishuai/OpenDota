
// 75431 ~ 75442
function Func3622 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    call UnitRemoveAbility(loc_unit01,'A312')
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1P8',true)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 75444 ~ 75459
function Func3623 takes unit loc_unit01 returns nothing
    local trigger loc_trigger01
    local integer loc_integer01
    if Func0194(loc_unit01)==true then
        call UnitRemoveAbility(loc_unit01,'A312')
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1P8',true)
    else
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call TriggerRegisterDeathEvent(loc_trigger01,loc_unit01)
        call TriggerRegisterTimerEvent(loc_trigger01,12,false)
        call TriggerAddCondition(loc_trigger01,Condition(function Func3622))
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    endif
    set loc_trigger01=null
endfunction

// 75461 ~ 75466
function Func3624 takes nothing returns nothing
    if IsUnitInGroup(GetEnumUnit(),group028)==false then
        call GroupAddUnit(group028,GetEnumUnit())
        call Func3619(unit365,GetEnumUnit(),false,true)
    endif
endfunction

// 75468 ~ 75479
function Func3625 takes integer loc_integer01 returns boolean
    if loc_integer01=='A1P8' or loc_integer01=='A30F' or loc_integer01=='A0G4' or loc_integer01=='A1D8' or loc_integer01=='A0G5' or loc_integer01=='Aamk' then
        return true
    endif
    if loc_integer01==852002 or loc_integer01==852003 or loc_integer01==852004 or loc_integer01==852005 or loc_integer01==852006 or loc_integer01==852007 then
        return true
    endif
    if loc_integer01>1000000 then
        return true
    endif
    return false
endfunction
