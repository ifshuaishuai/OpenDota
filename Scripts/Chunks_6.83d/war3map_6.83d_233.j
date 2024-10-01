
// 43619 ~ 43621
function Func1721 takes nothing returns nothing
    call Func0115(unit124,GetEnumUnit(),1,real009)
endfunction

// 43623 ~ 43697
function Func1722 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A0O2')
    local unit loc_unit03
    local real loc_real01=bj_RADTODEG*Atan2(GetUnitY(loc_unit02)-GetUnitY(loc_unit01),GetUnitX(loc_unit02)-GetUnitX(loc_unit01))
    local real loc_real02
    local real loc_real03
    local group loc_group01=Func0030()
    local group loc_group02=Func0030()
    if loc_integer02==0 then
        set loc_integer02=GetUnitAbilityLevel(loc_unit01,'A289')
    endif
    call SaveGroupHandle(hashtable001,(loc_integer01),(22),(loc_group01))
    call SaveReal(hashtable001,(loc_integer01),(13),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(6),((GetUnitX(loc_unit01))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((GetUnitY(loc_unit01))*1.0))
    call TriggerRegisterTimerEvent(loc_trigger01,0.03,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1720))
    set loc_real02=GetUnitX(loc_unit01)+50*Cos(loc_real01*bj_DEGTORAD)
    set loc_real03=GetUnitY(loc_unit01)+50*Sin(loc_real01*bj_DEGTORAD)
    call GroupEnumUnitsInRange(loc_group02,loc_real02,loc_real03,325,Condition(function Func0298))
    call GroupAddGroup(loc_group02,loc_group01)
    call GroupClear(loc_group02)
    set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'o00Y',loc_real02,loc_real03,loc_real01)
    call UnitApplyTimedLife(loc_unit03,'BTLF',1)
    call Func0193(loc_unit03,'A0NY')
    call SetUnitAbilityLevel(loc_unit03,'A0NY',loc_integer02)
    call IssueImmediateOrder(loc_unit03,"thunderclap")
    set loc_real02=GetUnitX(loc_unit01)+250*Cos(loc_real01*bj_DEGTORAD)
    set loc_real03=GetUnitY(loc_unit01)+250*Sin(loc_real01*bj_DEGTORAD)
    call GroupEnumUnitsInRange(loc_group02,loc_real02,loc_real03,325,Condition(function Func0298))
    call GroupAddGroup(loc_group02,loc_group01)
    call GroupClear(loc_group02)
    set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'o00Y',loc_real02,loc_real03,loc_real01)
    call UnitApplyTimedLife(loc_unit03,'BTLF',1)
    call Func0193(loc_unit03,'A0NY')
    call SetUnitAbilityLevel(loc_unit03,'A0NY',loc_integer02)
    call IssueImmediateOrder(loc_unit03,"thunderclap")
    set loc_real02=GetUnitX(loc_unit01)+450*Cos(loc_real01*bj_DEGTORAD)
    set loc_real03=GetUnitY(loc_unit01)+450*Sin(loc_real01*bj_DEGTORAD)
    call GroupEnumUnitsInRange(loc_group02,loc_real02,loc_real03,325,Condition(function Func0298))
    call GroupAddGroup(loc_group02,loc_group01)
    call GroupClear(loc_group02)
    set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'o00Y',loc_real02,loc_real03,loc_real01)
    call UnitApplyTimedLife(loc_unit03,'BTLF',1)
    call Func0193(loc_unit03,'A0NY')
    call SetUnitAbilityLevel(loc_unit03,'A0NY',loc_integer02)
    call IssueImmediateOrder(loc_unit03,"thunderclap")
    if GetUnitAbilityLevel(loc_unit01,'A0O2')==0 then
        set loc_real02=GetUnitX(loc_unit01)+650*Cos(loc_real01*bj_DEGTORAD)
        set loc_real03=GetUnitY(loc_unit01)+650*Sin(loc_real01*bj_DEGTORAD)
        call GroupEnumUnitsInRange(loc_group02,loc_real02,loc_real03,325,Condition(function Func0298))
        call GroupAddGroup(loc_group02,loc_group01)
        call GroupClear(loc_group02)
        set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'o00Y',loc_real02,loc_real03,loc_real01)
        call UnitApplyTimedLife(loc_unit03,'BTLF',1)
        call Func0193(loc_unit03,'A0NY')
        call SetUnitAbilityLevel(loc_unit03,'A0NY',loc_integer02)
        call IssueImmediateOrder(loc_unit03,"thunderclap")
    endif
    call Func0029(loc_group02)
    call GroupRemoveUnit(loc_group01,loc_unit02)
    set real009=150+50*loc_integer02
    set unit124=loc_unit01
    call ForGroup(loc_group01,function Func1721)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    set loc_group01=null
    set loc_group02=null
endfunction

// 43699 ~ 43704
function Func1723 takes nothing returns boolean
    if(GetSpellAbilityId()=='A0O2' or GetSpellAbilityId()=='A289')and Func0028(GetSpellTargetUnit())==false then
        call Func1722()
    endif
    return false
endfunction

// 43706 ~ 43711
function Func1724 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1723))
    set loc_trigger01=null
endfunction
