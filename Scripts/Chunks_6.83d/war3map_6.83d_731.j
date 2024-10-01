
// 77264 ~ 77298
function Func3726 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(20)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(57)))
    local real loc_real03=0.75
    if IsUnitType(loc_unit02,UNIT_TYPE_HERO)==false and IsUnitIllusion(loc_unit02)==false then
        set loc_real03=1.0
    endif
    if GetUnitState(loc_unit02,UNIT_STATE_LIFE)<=loc_real01*loc_real03 then
        set loc_real01=Func0142(GetUnitState(loc_unit02,UNIT_STATE_LIFE)/loc_real03-2,0)
    endif
    if GetTriggerEventId()==EVENT_WIDGET_DEATH then
        call UnitRemoveAbility(loc_unit02,'A1W5')
        call UnitRemoveAbility(loc_unit02,'B028')
        call Func0035(loc_trigger01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
    else
        set loc_real02=loc_real02-1
        call SaveReal(hashtable001,(loc_integer01),(57),((loc_real02)*1.0))
        call Func0115(loc_unit01,loc_unit02,1,loc_real01)
        if loc_real02<=0 then
            call UnitRemoveAbility(loc_unit02,'A1W5')
            call UnitRemoveAbility(loc_unit02,'B028')
            call Func0035(loc_trigger01)
            call FlushChildHashtable(hashtable001,(loc_integer01))
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 77300 ~ 77313
function Func3727 takes unit loc_unit01,unit loc_unit02,real loc_real01,real loc_real02 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call Func0193(loc_unit01,'A1W5')
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit01)
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3726))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer01),(20),((loc_real02)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(57),((loc_real01)*1.0))
    call TriggerEvaluate(loc_trigger01)
    set loc_trigger01=null
endfunction

// 77315 ~ 77319
function Func3728 takes nothing returns nothing
    if GetUnitAbilityLevel(GetEnumUnit(),'A1W5')==0 then
        call Func3727(GetEnumUnit(),unit371,real365,real366)
    endif
endfunction

// 77321 ~ 77347
function Func3729 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(45)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(57)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(20)))
    local group loc_group01
    if GetTriggerEventId()==EVENT_WIDGET_DEATH then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        set loc_group01=Func0030()
        set unit124=loc_unit01
        set unit371=loc_unit01
        set real365=loc_real01
        set real366=loc_real02
        call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit02),GetUnitY(loc_unit02),256+25,Condition(function Func0305))
        call ForGroup(loc_group01,function Func3728)
        call Func0029(loc_group01)
        set loc_group01=null
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 77349 ~ 77372
function Func3730 takes unit loc_unit01,unit loc_unit02,integer loc_integer01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    local real loc_real01=12
    local real loc_real02=36
    if loc_integer01==2 then
        set loc_real01=14
        set loc_real02=58
    elseif loc_integer01==3 then
        set loc_real01=15
        set loc_real02=81
    elseif loc_integer01==4 then
        set loc_real01=16
        set loc_real02=108
    endif
    call TriggerRegisterTimerEvent(loc_trigger01,0.03,true)
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit01)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3729))
    call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer02),(45),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer02),(20),((loc_real02)*1.0))
    call SaveReal(hashtable001,(loc_integer02),(57),((loc_real01)*1.0))
    set loc_trigger01=null
endfunction

// 77374 ~ 77396
function Func3731 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer01
    local integer loc_integer02=1
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local unit loc_unit02
    if GetSpellAbilityId()=='A013' then
        set loc_integer01=GetUnitAbilityLevel(loc_unit01,'A013')
    else
        set loc_integer01=GetUnitAbilityLevel(loc_unit01,'A0A6')+1
    endif
    loop
        exitwhen loc_integer02>18
        set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e017',loc_real01,loc_real02,0)
        call IssuePointOrder(loc_unit02,"move",loc_real01+675*Cos(loc_integer02*20*bj_DEGTORAD),loc_real02+675*Sin(loc_integer02*20*bj_DEGTORAD))
        call UnitApplyTimedLife(loc_unit02,'BTLF',1.15)
        call Func3730(loc_unit02,loc_unit01,loc_integer01)
        set loc_integer02=loc_integer02+1
    endloop
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 77398 ~ 77403
function Func3732 takes nothing returns boolean
    if GetSpellAbilityId()=='A013' or GetSpellAbilityId()=='A0A6' then
        call Func3731()
    endif
    return false
endfunction

// 77405 ~ 77410
function Func3733 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3732))
    set loc_trigger01=null
endfunction
