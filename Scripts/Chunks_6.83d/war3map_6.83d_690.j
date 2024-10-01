
// 74434 ~ 74439
function Func3550 takes nothing returns boolean
    if(IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit())))then
        call Func0115(unit362,GetFilterUnit(),1,real359)
    endif
    return false
endfunction

// 74441 ~ 74473
function Func3551 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(379)))
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(380)))
    local unit loc_unit04=(LoadUnitHandle(hashtable001,(loc_integer01),(381)))
    local unit loc_unit05=(LoadUnitHandle(hashtable001,(loc_integer01),(382)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A0H0')
    local integer loc_integer03=GetTriggerEvalCount(loc_trigger01)
    local group loc_group01
    local integer loc_integer04=550
    if GetTriggerEventId()==EVENT_UNIT_SPELL_ENDCAST or loc_integer03>loc_integer02*20/0.5 then
        call Func3549(loc_unit01,loc_integer02,loc_unit02,loc_unit03,loc_unit04,loc_unit05)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        set loc_group01=Func0030()
        set unit124=loc_unit01
        set unit362=loc_unit01
        set real359=loc_integer02*25*0.5
        call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),loc_integer04,Condition(function Func3550))
        call Func0029(loc_group01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    set loc_unit04=null
    set loc_unit05=null
    set loc_group01=null
    return false
endfunction

// 74475 ~ 74508
function Func3552 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e00Q',GetUnitX(loc_unit01)+150,GetUnitY(loc_unit01)+150,0)
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'e00Q',GetUnitX(loc_unit01)+150,GetUnitY(loc_unit01)-150,0)
    local unit loc_unit04=CreateUnit(GetOwningPlayer(loc_unit01),'e00Q',GetUnitX(loc_unit01)-150,GetUnitY(loc_unit01)+150,0)
    local unit loc_unit05=CreateUnit(GetOwningPlayer(loc_unit01),'e00Q',GetUnitX(loc_unit01)-150,GetUnitY(loc_unit01)-150,0)
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A0H0')
    local unit loc_unit06=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4299)),(1))
    call Func0193(loc_unit06,'A0HO')
    call SetUnitAbilityLevel(loc_unit06,'A0HO',loc_integer02)
    call IssueTargetOrder(loc_unit06,"invisibility",loc_unit01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.5,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SPELL_ENDCAST)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3551))
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(379),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer01),(380),(loc_unit03))
    call SaveUnitHandle(hashtable001,(loc_integer01),(381),(loc_unit04))
    call SaveUnitHandle(hashtable001,(loc_integer01),(382),(loc_unit05))
    call SetUnitTimeScale(loc_unit02,0)
    call SetUnitTimeScale(loc_unit03,0)
    call SetUnitTimeScale(loc_unit04,0)
    call SetUnitTimeScale(loc_unit05,0)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit06=null
    set loc_unit02=null
    set loc_unit03=null
    set loc_unit04=null
    set loc_unit05=null
endfunction

// 74510 ~ 74515
function Func3553 takes nothing returns boolean
    if GetSpellAbilityId()=='A0H0' then
        call Func3552()
    endif
    return false
endfunction

// 74517 ~ 74522
function Func3554 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3553))
    set loc_trigger01=null
endfunction
