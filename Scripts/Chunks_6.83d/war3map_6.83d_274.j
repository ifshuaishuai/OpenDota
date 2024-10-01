
// 46672 ~ 46695
function Func1907 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(13)))
    local real loc_real02=GetUnitX(loc_unit01)-5*Cos(loc_real01)
    local real loc_real03=GetUnitY(loc_unit01)-5*Sin(loc_real01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local real loc_real04=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real05=(LoadReal(hashtable001,(loc_integer01),(7)))
    if((loc_real04-loc_real02)*(loc_real04-loc_real02))+((loc_real05-loc_real03)*(loc_real05-loc_real03))<100 then
        set loc_real02=loc_real04
        set loc_real03=loc_real05
    endif
    call SetUnitX(loc_unit01,loc_real02)
    call SetUnitY(loc_unit01,loc_real03)
    if GetTriggerEvalCount(loc_trigger01)==(10+10*loc_integer02)or GetTriggerEventId()==EVENT_UNIT_DEATH then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 46697 ~ 46723
function Func1908 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'u00X',GetUnitX(loc_unit01),GetUnitY(loc_unit01),GetUnitFacing(loc_unit01))
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A14R')
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.05,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1907))
    call SaveUnitHandle(hashtable001,(loc_integer02),(17),(loc_unit02))
    call SaveReal(hashtable001,(loc_integer02),(13),((Atan2(GetUnitY(loc_unit02)-GetUnitY(loc_unit01),GetUnitX(loc_unit02)-GetUnitX(loc_unit01)))*1.0))
    call SaveInteger(hashtable001,(loc_integer02),(5),(loc_integer01))
    call SaveReal(hashtable001,(loc_integer02),(6),((GetUnitX(loc_unit01))*1.0))
    call SaveReal(hashtable001,(loc_integer02),(7),((GetUnitY(loc_unit01))*1.0))
    call Func0193(loc_unit03,'A14Q')
    call SetUnitAbilityLevel(loc_unit03,'A14Q',loc_integer01)
    call IssueTargetOrder(loc_unit03,"magicleash",loc_unit02)
    call UnitApplyTimedLife(loc_unit03,'BTLF',0.5+0.5*loc_integer01)
    set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),GetUnitFacing(loc_unit01))
    call Func0193(loc_unit03,'A14S')
    call IssueTargetOrder(loc_unit03,"slow",loc_unit01)
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    set loc_trigger01=null
endfunction

// 46725 ~ 46730
function Func1909 takes nothing returns boolean
    if GetSpellAbilityId()=='A14R' and GetUnitTypeId(GetSpellTargetUnit())!='n00L' and Func0028(GetSpellTargetUnit())==false then
        call Func1908()
    endif
    return false
endfunction

// 46732 ~ 46737
function Func1910 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1909))
    set loc_trigger01=null
endfunction
