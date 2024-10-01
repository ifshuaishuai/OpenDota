
// 93075 ~ 93104
function Func4496 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(13)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(138)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A2WF')
    local real loc_real03=(0.5+0.1*loc_integer02)/(0.02)
    local real loc_real04=loc_real02/loc_real03
    local real loc_real05=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real06=(LoadReal(hashtable001,(loc_integer01),(7)))
    local integer loc_integer03=GetTriggerEvalCount(loc_trigger01)
    if loc_integer03>loc_real03 or GetTriggerEventId()==EVENT_UNIT_DEATH then
        call Func0180(GetUnitX(loc_unit02),GetUnitY(loc_unit02),100)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        set loc_real05=Func0126(loc_real05+loc_real04*Cos(loc_real01))
        set loc_real06=Func0129(loc_real06+loc_real04*Sin(loc_real01))
        call SetUnitX(loc_unit02,loc_real05)
        call SetUnitY(loc_unit02,loc_real06)
        call SaveReal(hashtable001,(loc_integer01),(6),((loc_real05)*1.0))
        call SaveReal(hashtable001,(loc_integer01),(7),((loc_real06)*1.0))
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 93106 ~ 93123
function Func4497 takes unit loc_unit01,unit loc_unit02,unit loc_unit03,real loc_real01,real loc_real02 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local real loc_real03=Atan2(GetUnitY(loc_unit02)-GetUnitY(loc_unit01),GetUnitX(loc_unit02)-GetUnitX(loc_unit01))
    local real loc_real04=Func0149(loc_real01,loc_real02,GetUnitX(loc_unit02),GetUnitY(loc_unit02))
    local real loc_real05=RMaxBJ(1,350*(1-loc_real04/900))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit03))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveReal(hashtable001,(loc_integer01),(13),((loc_real03)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(138),((loc_real05)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(6),((GetUnitX(loc_unit02))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((GetUnitY(loc_unit02))*1.0))
    call Func4495(loc_unit03,loc_unit02,GetUnitAbilityLevel(loc_unit03,'A2WF'))
    call TriggerRegisterTimerEvent(loc_trigger01,0.02,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4496))
    set loc_trigger01=null
endfunction

// 93125 ~ 93130
function Func4498 takes nothing returns nothing
    if IsUnitInGroup(GetEnumUnit(),group002)==false and Func0098(GetEnumUnit())==false then
        call GroupAddUnit(group002,GetEnumUnit())
        call Func4497(unit124,GetEnumUnit(),unit421,real409,real410)
    endif
endfunction

// 93132 ~ 93184
function Func4499 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(137)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(64)))
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(65)))
    local real loc_real04=(LoadReal(hashtable001,(loc_integer01),(66)))
    local real loc_real05=(LoadReal(hashtable001,(loc_integer01),(67)))
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(22)))
    local real loc_real06=GetUnitX(loc_unit01)
    local real loc_real07=GetUnitY(loc_unit01)
    local group loc_group02
    if Func0149(loc_real06,loc_real07,loc_real04,loc_real05)<100 then
        set loc_real06=loc_real04
        set loc_real07=loc_real05
    else
        set loc_real06=loc_real06+40*Cos(loc_real01)
        set loc_real07=loc_real07+40*Sin(loc_real01)
    endif
    call SetUnitX(loc_unit01,Func0126(loc_real06))
    call SetUnitY(loc_unit01,Func0129(loc_real07))
    set loc_group02=Func0030()
    set unit124=loc_unit01
    set unit421=loc_unit02
    set real409=loc_real02
    set real410=loc_real03
    set group002=loc_group01
    call GroupEnumUnitsInRange(loc_group02,loc_real06,loc_real07,250+25,Condition(function Func0305))
    call ForGroup(loc_group02,function Func4498)
    call Func0029(loc_group02)
    if(loc_real06==loc_real04 and loc_real07==loc_real05)or GetTriggerEvalCount(loc_trigger01)>35 then
        set loc_group02=Func0030()
        set unit124=loc_unit01
        set unit421=loc_unit02
        set real409=loc_real02
        set real410=loc_real03
        set group002=loc_group01
        call GroupEnumUnitsInRange(loc_group02,loc_real06,loc_real07,250+25,Condition(function Func0305))
        call ForGroup(loc_group02,function Func4498)
        call Func0029(loc_group02)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call KillUnit(loc_unit01)
        call Func0029(loc_group01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_group01=null
    set loc_group02=null
    return false
endfunction

// 93186 ~ 93209
function Func4500 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local location loc_location01=GetSpellTargetLoc()
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=GetLocationX(loc_location01)
    local real loc_real02=GetLocationY(loc_location01)
    local real loc_real03=Atan2(loc_real02-GetUnitY(loc_unit01),loc_real01-GetUnitX(loc_unit01))
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'n0NI',GetUnitX(loc_unit01),GetUnitY(loc_unit01),loc_real03*bj_RADTODEG)
    call TriggerRegisterTimerEvent(loc_trigger01,0.02,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4499))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit02))
    call SaveReal(hashtable001,(loc_integer01),(137),((loc_real03)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(64),((GetUnitX(loc_unit01))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(65),((GetUnitY(loc_unit01))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(66),((GetUnitX(loc_unit01)+900*Cos(loc_real03))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(67),((GetUnitY(loc_unit01)+900*Sin(loc_real03))*1.0))
    call SaveGroupHandle(hashtable001,(loc_integer01),(22),(Func0030()))
    call RemoveLocation(loc_location01)
    set loc_trigger01=null
    set loc_location01=null
    set loc_unit01=null
endfunction

// 93211 ~ 93216
function Func4501 takes nothing returns boolean
    if GetSpellAbilityId()=='A2WF' then
        call Func4500()
    endif
    return false
endfunction

// 93218 ~ 93223
function Func4502 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4501))
    set loc_trigger01=null
endfunction
