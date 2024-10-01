
// 47941 ~ 47953
function Func2003 takes nothing returns nothing
    local location loc_location01=GetUnitLoc(GetEnumUnit())
    local location loc_location02=GetUnitLoc((LoadUnitHandle(hashtable001,(GetHandleId(GetTriggeringTrigger())),(318))))
    local location loc_location03=Func0002(loc_location02,DistanceBetweenPoints(loc_location02,loc_location01)-2,AngleBetweenPoints(loc_location02,loc_location01))
    call SetUnitFacing(GetEnumUnit(),AngleBetweenPoints(loc_location02,loc_location01))
    call SetUnitPositionLoc(GetEnumUnit(),loc_location03)
    call RemoveLocation(loc_location01)
    call RemoveLocation(loc_location02)
    call RemoveLocation(loc_location03)
    if integer469>0 then
        call Func0115(unit281,GetEnumUnit(),8,GetUnitState(GetEnumUnit(),UNIT_STATE_MAX_LIFE)*(0.0225+0.0075*integer469))
    endif
endfunction

// 47955 ~ 48004
function Func2004 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local group loc_group01
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(318)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit03
    local real loc_real01
    local real loc_real02
    if GetTriggerEventId()==EVENT_UNIT_SPELL_ENDCAST and(GetSpellAbilityId()=='A1BX' or GetSpellAbilityId()=='A2TX')then
        call KillUnit(loc_unit01)
        set loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
        call UnitApplyTimedLife((LoadUnitHandle(hashtable001,(loc_integer01),(250))),'BTLF',1)
        call UnitApplyTimedLife((LoadUnitHandle(hashtable001,(loc_integer01),(251))),'BTLF',1)
        call UnitApplyTimedLife((LoadUnitHandle(hashtable001,(loc_integer01),(252))),'BTLF',1)
        call UnitApplyTimedLife((LoadUnitHandle(hashtable001,(loc_integer01),(253))),'BTLF',1)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call KillUnit(loc_unit03)
    elseif GetTriggerEvalCount(loc_trigger01)>90 then
        set loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
        call UnitApplyTimedLife((LoadUnitHandle(hashtable001,(loc_integer01),(250))),'BTLF',1)
        call UnitApplyTimedLife((LoadUnitHandle(hashtable001,(loc_integer01),(251))),'BTLF',1)
        call UnitApplyTimedLife((LoadUnitHandle(hashtable001,(loc_integer01),(252))),'BTLF',1)
        call UnitApplyTimedLife((LoadUnitHandle(hashtable001,(loc_integer01),(253))),'BTLF',1)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call KillUnit(loc_unit01)
        call KillUnit(loc_unit03)
        call Func0123((LoadUnitHandle(hashtable001,(loc_integer01),(2))))
    else
        set integer469=0
        if GetTriggerEvalCount(loc_trigger01)==20 or GetTriggerEvalCount(loc_trigger01)==40 or GetTriggerEvalCount(loc_trigger01)==60 or GetTriggerEvalCount(loc_trigger01)==80 then
            if GetUnitAbilityLevel(loc_unit02,'A2TX')>0 then
                set unit281=loc_unit02
                set integer469=GetUnitAbilityLevel(loc_unit02,'A0B1')
            endif
        endif
        set loc_real01=GetUnitX(loc_unit01)
        set loc_real02=GetUnitY(loc_unit01)
        set loc_group01=Func0030()
        call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,425,Condition(function Func2002))
        call ForGroup(loc_group01,function Func2003)
        call Func0029(loc_group01)
    endif
    set loc_unit03=null
    set loc_unit01=null
    set loc_trigger01=null
    return false
endfunction

// 48006 ~ 48041
function Func2005 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local location loc_location01=GetSpellTargetLoc()
    local real loc_real01=GetLocationX(loc_location01)
    local real loc_real02=GetLocationY(loc_location01)
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',loc_real01,loc_real02,0)
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'u004',loc_real01,loc_real02,0)
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A1BX')
    call RemoveLocation(loc_location01)
    if loc_integer02==0 then
        set loc_integer02=GetUnitAbilityLevel(loc_unit01,'A2TX')
    endif
    call SetUnitAbilityLevel(loc_unit03,'A0C0',loc_integer02)
    if Func0057(GetOwningPlayer(loc_unit01))then
        call Func0193(loc_unit02,'A0X4')
    else
        call Func0193(loc_unit02,'A0X3')
    endif
    call IssuePointOrder(loc_unit02,"cloudoffog",loc_real01,loc_real02)
    call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer01),(250),(CreateUnit(GetOwningPlayer(loc_unit01),'h06R',loc_real01,loc_real02,0)))
    call SaveUnitHandle(hashtable001,(loc_integer01),(251),(CreateUnit(GetOwningPlayer(loc_unit01),'h06R',loc_real01,loc_real02,0)))
    call SaveUnitHandle(hashtable001,(loc_integer01),(252),(CreateUnit(GetOwningPlayer(loc_unit01),'h06R',loc_real01,loc_real02,0)))
    call SaveUnitHandle(hashtable001,(loc_integer01),(253),(CreateUnit(GetOwningPlayer(loc_unit01),'h06R',loc_real01,loc_real02,0)))
    call SaveUnitHandle(hashtable001,(loc_integer01),(318),(loc_unit03))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SPELL_ENDCAST)
    call TriggerRegisterTimerEvent(loc_trigger01,0.05,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2004))
    set loc_unit01=null
    set loc_unit03=null
    set loc_trigger01=null
    set loc_location01=null
endfunction

// 48043 ~ 48048
function Func2006 takes nothing returns boolean
    if GetSpellAbilityId()=='A1BX' or GetSpellAbilityId()=='A2TX' then
        call Func2005()
    endif
    return false
endfunction
