
// 50458 ~ 50473
function Func2156 takes nothing returns boolean
    local integer loc_integer01=GetHandleId(GetTriggeringTrigger())
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(305)))
    if loc_unit01==null or Func0194(loc_unit01)or Func0124()==false or Func0394(loc_unit01,integers089[integer323])==null then
        call ShowUnit(loc_unit02,false)
    else
        call ShowUnit(loc_unit02,true)
        call SetUnitX(loc_unit02,GetUnitX(loc_unit01))
        call SetUnitY(loc_unit02,GetUnitY(loc_unit01))
    endif
    if GetOwningPlayer(loc_unit02)!=GetOwningPlayer(loc_unit01)then
        call SetUnitOwner(loc_unit02,GetOwningPlayer(loc_unit01),true)
    endif
    return false
endfunction

// 50475 ~ 50517
function Func2157 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A2XR')
    local trigger loc_trigger01
    local integer loc_integer02
    call UnitRemoveAbility(loc_unit01,'B0AA')
    call UnitRemoveAbility(loc_unit01,'A11T')
    if GetUnitAbilityLevel(loc_unit01,'A2KM')==0 then
        call Func0193(loc_unit01,'A2KM')
    endif
    if loc_integer01==1 then
        call UnitAddAbility(loc_unit01,'A2X4')
        call UnitRemoveAbility(loc_unit01,'A2X4')
    elseif loc_integer01==2 then
        call SetUnitAbilityLevel(loc_unit01,'A2KM',loc_integer01)
        call UnitAddAbility(loc_unit01,'A2X3')
        call UnitRemoveAbility(loc_unit01,'A2X3')
        call UnitRemoveAbility(loc_unit01,'A11X')
        call UnitRemoveAbility(loc_unit01,'A10U')
        call Func0193(loc_unit01,'A11V')
        call Func0193(loc_unit01,'A11Y')
    elseif loc_integer01==3 then
        call SetUnitAbilityLevel(loc_unit01,'A2KM',loc_integer01)
        call UnitAddAbility(loc_unit01,'A2X5')
        call UnitRemoveAbility(loc_unit01,'A2X5')
        call UnitRemoveAbility(loc_unit01,'A11X')
        call UnitRemoveAbility(loc_unit01,'A10U')
        call UnitRemoveAbility(loc_unit01,'A11V')
        call UnitRemoveAbility(loc_unit01,'A11Y')
        call Func0193(loc_unit01,'A11W')
        call Func0193(loc_unit01,'A11Z')
    endif
    if loc_integer01>0 then
        set loc_trigger01=CreateTrigger()
        set loc_integer02=GetHandleId(loc_trigger01)
        call TriggerRegisterTimerEvent(loc_trigger01,0.2,true)
        call TriggerAddCondition(loc_trigger01,Condition(function Func2156))
        call SaveUnitHandle(hashtable001,(loc_integer02),(2),(GetTriggerUnit()))
        call SaveUnitHandle(hashtable001,(loc_integer02),(305),(CreateUnit(GetOwningPlayer(GetTriggerUnit()),'o01A',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)))
        set loc_trigger01=null
    endif
    set loc_unit01=null
endfunction
