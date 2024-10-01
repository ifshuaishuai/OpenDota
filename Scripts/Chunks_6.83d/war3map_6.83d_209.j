
// 41753 ~ 41765
function Func1626 takes nothing returns nothing
    local unit loc_unit01=GetEnumUnit()
    local integer loc_integer01=0
    local unit loc_unit02
    if IsUnitIllusion(loc_unit01)==true then
        return
    endif
    set loc_unit02=CreateUnit(GetOwningPlayer(unit262),'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    call Func0193(loc_unit02,'A2VY')
    call IssueTargetOrder(loc_unit02,"ensnare",loc_unit01)
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 41767 ~ 41811
function Func1627 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local real loc_real01=GetUnitX(unit262)
    local real loc_real02=GetUnitY(unit262)
    local group loc_group01
    if GetTriggerEventId()==EVENT_WIDGET_DEATH then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        set loc_trigger01=null
        call Func1621()
        return false
    elseif GetTriggerEvalCount(loc_trigger01)>12000 or(boolean135 and GetTriggerEvalCount(loc_trigger01)>600)then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        set loc_trigger01=null
        if boolean135 then
            call Func1621()
        else
            call Func1622()
        endif
        return false
    endif
    set loc_group01=Func0030()
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,1000,Condition(function Func1624))
    call Func0029(loc_group01)
    set loc_group01=Func0030()
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,1000,Condition(function Func1623))
    call Func0029(loc_group01)
    if ModuloInteger(GetTriggerEvalCount(loc_trigger01),200)==0 then
        set loc_group01=Func0030()
        call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,1000,Condition(function Func0349))
        call ForGroup(loc_group01,function Func1625)
        call Func0029(loc_group01)
    endif
    if ModuloInteger(GetTriggerEvalCount(loc_trigger01),300)==0 then
        set loc_group01=Func0030()
        call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,1000,Condition(function Func0349))
        call ForGroup(loc_group01,function Func1626)
        call Func0029(loc_group01)
    endif
    set loc_group01=null
    set loc_trigger01=null
    return false
endfunction

// 41813 ~ 41825
function Func1628 takes nothing returns boolean
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call SetUnitInvulnerable(unit262,false)
    call UnitRemoveAbility(unit262,'Abun')
    call Func1620(GetObjectName(('n0ND')))
    set boolean137=true
    call TriggerRegisterTimerEvent(loc_trigger01,0.1,true)
    call TriggerRegisterDeathEvent(loc_trigger01,unit262)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1627))
    set loc_trigger01=null
    return false
endfunction

// 41827 ~ 41834
function Func1629 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func1620(GetObjectName(('n0N8')))
    call SetUnitInvulnerable(unit262,true)
    call TriggerRegisterTimerEvent(loc_trigger01,10,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1628))
    set loc_trigger01=null
endfunction

// 41836 ~ 41843
function Func1630 takes nothing returns nothing
    call Func1620(GetObjectName(('n0NF')))
    if boolean135 then
        call Func1629()
    else
        call RemoveUnit(unit262)
    endif
endfunction
