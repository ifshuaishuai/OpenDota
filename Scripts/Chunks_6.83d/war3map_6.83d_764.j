
// 79845 ~ 79876
function Func3873 takes nothing returns nothing
    if Func0275(GetEnumUnit())then
        return
    endif
    if Func0098(GetEnumUnit())==false then
        if integer527==1 then
            if GetUnitAbilityLevel(GetEnumUnit(),'A1HZ')==0 then
                call UnitRemoveAbility(GetEnumUnit(),'B0C5')
                call Func0193(GetEnumUnit(),'A1HZ')
                call SaveReal(hashtable001,(GetHandleId(GetEnumUnit())),(822),(((TimerGetElapsed(timer001)))*1.0))
            endif
        elseif integer527==2 then
            if GetUnitAbilityLevel(GetEnumUnit(),'A1I4')==0 then
                call UnitRemoveAbility(GetEnumUnit(),'B0C5')
                call Func0193(GetEnumUnit(),'A1I4')
                call SaveReal(hashtable001,(GetHandleId(GetEnumUnit())),(822),(((TimerGetElapsed(timer001)))*1.0))
            endif
        elseif integer527==3 then
            if GetUnitAbilityLevel(GetEnumUnit(),'A1I3')==0 then
                call UnitRemoveAbility(GetEnumUnit(),'B0C5')
                call Func0193(GetEnumUnit(),'A1I3')
                call SaveReal(hashtable001,(GetHandleId(GetEnumUnit())),(822),(((TimerGetElapsed(timer001)))*1.0))
            endif
        elseif integer527==4 then
            if GetUnitAbilityLevel(GetEnumUnit(),'A1I6')==0 then
                call UnitRemoveAbility(GetEnumUnit(),'B0C5')
                call Func0193(GetEnumUnit(),'A1I6')
                call SaveReal(hashtable001,(GetHandleId(GetEnumUnit())),(822),(((TimerGetElapsed(timer001)))*1.0))
            endif
        endif
    endif
endfunction

// 79878 ~ 79915
function Func3874 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(340)))
    local real loc_real01=GetUnitX(loc_unit02)
    local real loc_real02=GetUnitY(loc_unit02)
    local group loc_group02=Func0030()
    local group loc_group03
    if GetTriggerEventId()==EVENT_UNIT_DEATH then
        call ForGroup(loc_group01,function Func3872)
        call Func0029(loc_group02)
        call Func0029(loc_group01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call ShowUnit(loc_unit02,false)
        set loc_trigger01=null
        set loc_unit01=null
        set loc_unit02=null
        set loc_group01=null
        return false
    endif
    set unit373=loc_unit01
    set integer527=GetUnitAbilityLevel(loc_unit01,'A1HS')
    set unit124=loc_unit01
    call GroupEnumUnitsInRange(loc_group02,loc_real01,loc_real02,300,Condition(function Func0305))
    call GroupRemoveGroup(loc_group02,loc_group01)
    call ForGroup(loc_group01,function Func3872)
    call ForGroup(loc_group02,function Func3873)
    call SaveGroupHandle(hashtable001,(loc_integer01),(340),(loc_group02))
    call Func0029(loc_group01)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_group01=null
    return false
endfunction

// 79917 ~ 79936
function Func3875 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local location loc_location01=GetSpellTargetLoc()
    local real loc_real01=GetLocationX(loc_location01)
    local real loc_real02=GetLocationY(loc_location01)
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A1HS')
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'n0HQ',loc_real01,loc_real02,0)
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    call UnitApplyTimedLife(loc_unit02,'BTLF',16)
    call TriggerRegisterTimerEvent(loc_trigger01,0.1,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3874))
    call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer02),(19),(loc_unit02))
    call SaveGroupHandle(hashtable001,(loc_integer02),(340),(Func0030()))
    call RemoveLocation(loc_location01)
    set loc_unit01=null
    set loc_location01=null
endfunction

// 79938 ~ 79943
function Func3876 takes nothing returns boolean
    if GetSpellAbilityId()=='A1HS' then
        call Func3875()
    endif
    return false
endfunction

// 79945 ~ 79966
function Func3877 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=0
    local player loc_player01
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3876))
    set loc_trigger01=null
    loop
        exitwhen loc_integer01>5
        set loc_player01=players003[loc_integer01]
        call SetPlayerAbilityAvailable(loc_player01,'A1HZ',false)
        call SetPlayerAbilityAvailable(loc_player01,'A1I4',false)
        call SetPlayerAbilityAvailable(loc_player01,'A1I3',false)
        call SetPlayerAbilityAvailable(loc_player01,'A1I6',false)
        set loc_player01=players004[loc_integer01]
        call SetPlayerAbilityAvailable(loc_player01,'A1HZ',false)
        call SetPlayerAbilityAvailable(loc_player01,'A1I4',false)
        call SetPlayerAbilityAvailable(loc_player01,'A1I3',false)
        call SetPlayerAbilityAvailable(loc_player01,'A1I6',false)
        set loc_integer01=loc_integer01+1
    endloop
endfunction
