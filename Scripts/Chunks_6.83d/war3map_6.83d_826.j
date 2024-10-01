
// 86338 ~ 86365
function Func4139 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(30)))
    local unit loc_unit01=Func0022(loc_integer02)
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if GetEventDamageSource()==loc_unit02 and(GetEventDamage()>40 or IsUnitType(loc_unit01,UNIT_TYPE_STRUCTURE)==true or GetUnitTypeId(loc_unit01)=='umtw' or GetUnitTypeId(loc_unit01)=='ebal')and(LoadBoolean(hashtable001,(GetHandleId(loc_unit02)),(183)))==true then
            call SaveBoolean(hashtable001,(GetHandleId(loc_unit02)),(183),(false))
            call SaveReal(hashtable001,(GetHandleId(loc_unit02)),(184),(((TimerGetElapsed(timer001)))*1.0))
            call UnitRemoveAbility(loc_unit02,'A2XS')
            call UnitRemoveAbility(loc_unit02,'A2XU')
            call FlushChildHashtable(hashtable001,(GetHandleId((LoadTriggerHandle(hashtable001,(loc_integer01),(35))))))
            call Func0035((LoadTriggerHandle(hashtable001,(loc_integer01),(35))))
            call Func0021(loc_integer02)
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        endif
    else
        call Func0021(loc_integer02)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit02=null
    set loc_unit01=null
    return false
endfunction

// 86367 ~ 86397
function Func4140 takes nothing returns boolean
    local trigger loc_trigger01
    local integer loc_integer01
    local unit loc_unit01
    local unit loc_unit02
    if GetTriggerEventId()==EVENT_UNIT_DEATH then
        call SaveBoolean(hashtable001,(GetHandleId(GetTriggerUnit())),(183),(false))
        call SaveReal(hashtable001,(GetHandleId(GetTriggerUnit())),(184),(((TimerGetElapsed(timer001)))*1.0))
        call UnitRemoveAbility(GetTriggerUnit(),'A2XS')
        call UnitRemoveAbility(GetTriggerUnit(),'A2XU')
        call FlushChildHashtable(hashtable001,(GetHandleId(GetTriggeringTrigger())))
        call Func0035(GetTriggeringTrigger())
    elseif GetAttacker()==(LoadUnitHandle(hashtable001,(GetHandleId(GetTriggeringTrigger())),(182)))then
        if IsUnitAlly(GetAttacker(),GetOwningPlayer(GetTriggerUnit()))==false then
            set loc_trigger01=CreateTrigger()
            set loc_integer01=GetHandleId(loc_trigger01)
            set loc_unit01=GetTriggerUnit()
            set loc_unit02=GetAttacker()
            call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DAMAGED)
            call TriggerRegisterTimerEvent(loc_trigger01,2.5,false)
            call TriggerAddCondition(loc_trigger01,Condition(function Func4139))
            call SaveInteger(hashtable001,(loc_integer01),(30),(Func0024(loc_unit01)))
            call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit02))
            call SaveTriggerHandle(hashtable001,(loc_integer01),(35),(GetTriggeringTrigger()))
            set loc_unit01=null
            set loc_unit02=null
            set loc_trigger01=null
        endif
    endif
    return false
endfunction

// 86399 ~ 86430
function Func4141 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local real loc_real01=(TimerGetElapsed(timer001))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A0MX')
    local real loc_real02=(LoadReal(hashtable001,(GetHandleId(loc_unit01)),(184)))
    local boolean loc_boolean01=(LoadBoolean(hashtable001,(GetHandleId(loc_unit01)),(183)))
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(411)))
    if GetTriggerEventId()==EVENT_PLAYER_UNIT_ATTACKED and GetAttacker()==loc_unit01 then
        set loc_real03=(TimerGetElapsed(timer001))
        call SaveReal(hashtable001,(loc_integer01),(411),((loc_real03)*1.0))
    endif
    if((TimerGetElapsed(timer001))>(loc_real03+18-2*loc_integer02))and loc_boolean01==false and GetUnitTypeId(loc_unit01)=='Npbm' and Func0194(loc_unit01)==false then
        call SaveBoolean(hashtable001,(GetHandleId(loc_unit01)),(183),(true))
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
        call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
        call TriggerAddCondition(loc_trigger01,Condition(function Func4140))
        call SaveUnitHandle(hashtable001,(loc_integer01),(182),(loc_unit01))
        call Func0193(loc_unit01,'A2XS')
        call Func0193(loc_unit01,'A2XU')
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2XS',false)
    elseif loc_boolean01==false and(GetUnitAbilityLevel(loc_unit01,'A2XS')>0 or GetUnitAbilityLevel(loc_unit01,'A2XU')>0)then
        call UnitRemoveAbility(loc_unit01,'A2XS')
        call UnitRemoveAbility(loc_unit01,'A2XU')
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 86432 ~ 86444
function Func4142 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.5,true)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4141))
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call SaveInteger(hashtable001,(loc_integer01),(181),(0))
    call SaveReal(hashtable001,(loc_integer01),(411),(((TimerGetElapsed(timer001)))*1.0))
    set loc_unit01=null
    set loc_trigger01=null
endfunction

// 86446 ~ 86451
function Func4143 takes nothing returns boolean
    if GetLearnedSkill()=='A0MX' and GetUnitAbilityLevel(GetTriggerUnit(),'A0MX')==1 and IsUnitIllusion(GetTriggerUnit())==false then
        call Func4142()
    endif
    return false
endfunction

// 86453 ~ 86458
function Func4144 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4143))
    set loc_trigger01=null
endfunction
