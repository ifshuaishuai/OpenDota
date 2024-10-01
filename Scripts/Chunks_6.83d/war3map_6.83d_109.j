
// 22774 ~ 22798
function Func0919 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    if GetUnitAbilityLevel(loc_unit01,'Bdet')==0 then
        call UnitRemoveAbility(loc_unit01,'A2SJ')
        call UnitRemoveAbility(loc_unit01,'B0GR')
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        if Func0284(loc_unit01)==true then
            if GetUnitAbilityLevel(loc_unit01,'B0GR')==0 then
                call Func0193(loc_unit01,'A2SJ')
            endif
        else
            if GetUnitAbilityLevel(loc_unit01,'B0GR')>0 then
                call UnitRemoveAbility(loc_unit01,'A2SJ')
                call UnitRemoveAbility(loc_unit01,'B0GR')
            endif
        endif
    endif
    set loc_unit01=null
    set loc_trigger01=null
    return false
endfunction

// 22800 ~ 22810
function Func0920 takes nothing returns nothing
    local unit loc_unit01=GetEnumUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.02,true)
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit01)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0919))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 22812 ~ 22820
function Func0921 takes nothing returns nothing
    local group loc_group01=Func0030()
    local unit loc_unit01=GetTriggerUnit()
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),1050+25,Condition(function Func0339))
    call ForGroup(loc_group01,function Func0920)
    call Func0029(loc_group01)
    set loc_group01=null
    set loc_unit01=null
endfunction

// 22822 ~ 22826
function Func0922 takes nothing returns nothing
    if GetSpellAbilityId()=='AItb' then
        call Func0921()
    endif
endfunction
