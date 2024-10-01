
// 55601 ~ 55619
function Func2482 takes nothing returns boolean
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if Func0058(GetOwningPlayer(GetEventDamageSource()))and IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetEventDamageSource()))==true and boolean143==false then
            if boolean144==false then
                call UnitRemoveAbility(GetTriggerUnit(),'B0BM')
                call Func0035(GetTriggeringTrigger())
            endif
        endif
        if boolean144==true then
            set boolean144=false
        endif
        if boolean143==true then
            set boolean143=false
        endif
    else
        call Func0035(GetTriggeringTrigger())
    endif
    return false
endfunction

// 55621 ~ 55630
function Func2483 takes nothing returns nothing
    local unit loc_unit01=GetEnumUnit()
    local trigger loc_trigger01=CreateTrigger()
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DAMAGED)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
    call TriggerRegisterTimerEvent(loc_trigger01,6,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2482))
    set loc_unit01=null
    set loc_trigger01=null
endfunction

// 55632 ~ 55634
function Func2484 takes nothing returns boolean
    return GetUnitAbilityLevel(GetFilterUnit(),'B0BM')>0 and GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0
endfunction

// 55636 ~ 55650
function Func2485 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    local group loc_group01=Func0030()
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,1000,Condition(function Func2484))
    call ForGroup(loc_group01,function Func2483)
    call Func0029(loc_group01)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_group01=null
    return false
endfunction

// 55652 ~ 55659
function Func2486 takes nothing returns nothing
    if integer483==1 or integer483==2 then
        call Func0115(GetTriggerUnit(),GetEnumUnit(),2,70+10*integer484)
    endif
    if integer483==1 or integer483==3 then
        call Func0115(GetTriggerUnit(),GetEnumUnit(),1,70+10*integer484)
    endif
endfunction

// 55661 ~ 55727
function Func2487 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'h07Z',loc_real01,loc_real02,0)
    local group loc_group01=Func0030()
    local unit loc_unit03
    set integer484=GetUnitAbilityLevel(loc_unit01,'A1AA')
    if((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4270))))==1)==false then
        call SetUnitTimeScale(loc_unit02,2.5)
        call UnitApplyTimedLife(loc_unit02,'BTLF',2)
        set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',loc_real01,loc_real02,0)
        call Func0193(loc_unit02,'A1A9')
        call SetUnitAbilityLevel(loc_unit02,'A1A9',GetUnitAbilityLevel(loc_unit01,'A1AA'))
        call IssueImmediateOrder(loc_unit02,"stomp")
        call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,500,Condition(function Func0298))
        set integer483=1
        call ForGroup(loc_group01,function Func2486)
        call Func0029(loc_group01)
        call TriggerRegisterTimerEvent(loc_trigger01,0.65,false)
        call TriggerAddCondition(loc_trigger01,Condition(function Func2485))
        call SaveReal(hashtable001,(loc_integer01),(6),((loc_real01)*1.0))
        call SaveReal(hashtable001,(loc_integer01),(7),((loc_real02)*1.0))
    else
        call SetUnitTimeScale(loc_unit02,2.5)
        call UnitApplyTimedLife(loc_unit02,'BTLF',2)
        set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',loc_real01,loc_real02,0)
        call Func0193(loc_unit02,'A1A9')
        call SetUnitAbilityLevel(loc_unit02,'A1A9',GetUnitAbilityLevel(loc_unit01,'A1AA'))
        call IssueImmediateOrder(loc_unit02,"stomp")
        call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,500,Condition(function Func0298))
        set integer483=2
        call ForGroup(loc_group01,function Func2486)
        call TriggerRegisterTimerEvent(loc_trigger01,0.65,false)
        call TriggerAddCondition(loc_trigger01,Condition(function Func2485))
        call SaveReal(hashtable001,(loc_integer01),(6),((loc_real01)*1.0))
        call SaveReal(hashtable001,(loc_integer01),(7),((loc_real02)*1.0))
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        set loc_unit03=(units025[GetPlayerId(GetOwningPlayer((loc_unit01)))])
        call IssueImmediateOrder(loc_unit03,"stop")
        set loc_real01=GetUnitX(loc_unit03)
        set loc_real02=GetUnitY(loc_unit03)
        set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'h07Z',loc_real01,loc_real02,0)
        call SetUnitTimeScale(loc_unit02,2.5)
        call UnitApplyTimedLife(loc_unit02,'BTLF',2)
        set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',loc_real01,loc_real02,0)
        call Func0193(loc_unit02,'A1A9')
        call SetUnitAbilityLevel(loc_unit02,'A1A9',GetUnitAbilityLevel(loc_unit01,'A1AA'))
        call IssueImmediateOrder(loc_unit02,"stomp")
        call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,500,Condition(function Func0298))
        set integer483=3
        call ForGroup(loc_group01,function Func2486)
        call Func0029(loc_group01)
        call TriggerRegisterTimerEvent(loc_trigger01,0.65,false)
        call TriggerAddCondition(loc_trigger01,Condition(function Func2485))
        call SaveReal(hashtable001,(loc_integer01),(6),((loc_real01)*1.0))
        call SaveReal(hashtable001,(loc_integer01),(7),((loc_real02)*1.0))
        call SetUnitAnimationByIndex(loc_unit03,3)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_group01=null
endfunction
