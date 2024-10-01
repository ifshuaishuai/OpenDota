
// 19592 ~ 19606
function Func0757 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    if loc_unit01!=loc_unit02 then
        call Func0115(loc_unit01,loc_unit02,1,50)
    endif
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 19608 ~ 19628
function Func0758 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local unit loc_unit03
    if loc_unit02==null then
        set loc_unit02=loc_unit01
    endif
    set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit02),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
    call UnitAddAbility(loc_unit03,'A13V')
    call IssueTargetOrder(loc_unit03,"cyclone",loc_unit02)
    call TriggerRegisterTimerEvent(loc_trigger01,2.51,true)
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit02)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0757))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 19630 ~ 19639
function Func0759 takes nothing returns boolean
    if GetSpellAbilityId()=='A1T7' then
        if GetTriggerUnit()==GetSpellTargetUnit()or Func0098(GetSpellTargetUnit())==false then
            if Func0028(GetSpellTargetUnit())==false or GetTriggerUnit()==GetSpellTargetUnit()then
                call Func0758()
            endif
        endif
    endif
    return false
endfunction
