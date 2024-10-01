
// 42313 ~ 42344
function Func1651 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(30)))
    local unit loc_unit01=Func0022(loc_integer02)
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if GetEventDamageSource()==loc_unit02 and(GetEventDamage()>40 or IsUnitType(loc_unit01,UNIT_TYPE_STRUCTURE)==true or GetUnitTypeId(loc_unit01)=='umtw' or GetUnitTypeId(loc_unit01)=='ebal')and(LoadBoolean(hashtable001,(GetHandleId(loc_unit02)),(183)))==true then
            call SaveBoolean(hashtable001,(GetHandleId(loc_unit02)),(183),(false))
            call SaveReal(hashtable001,(GetHandleId(loc_unit02)),(184),(((TimerGetElapsed(timer001)))*1.0))
            call UnitRemoveAbility(loc_unit02,'A11O')
            call UnitRemoveAbility(loc_unit02,'A11R')
            call UnitRemoveAbility(loc_unit02,'A147')
            call UnitRemoveAbility(loc_unit02,'A148')
            call UnitRemoveAbility(loc_unit02,'A11U')
            call UnitRemoveAbility(loc_unit02,'A149')
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

// 42346 ~ 42380
function Func1652 takes nothing returns boolean
    local trigger loc_trigger01
    local integer loc_integer01
    local unit loc_unit01
    local unit loc_unit02
    if GetTriggerEventId()==EVENT_UNIT_DEATH then
        call SaveBoolean(hashtable001,(GetHandleId(GetTriggerUnit())),(183),(false))
        call SaveReal(hashtable001,(GetHandleId(GetTriggerUnit())),(184),(((TimerGetElapsed(timer001)))*1.0))
        call UnitRemoveAbility(GetTriggerUnit(),'A11O')
        call UnitRemoveAbility(GetTriggerUnit(),'A11R')
        call UnitRemoveAbility(GetTriggerUnit(),'A147')
        call UnitRemoveAbility(GetTriggerUnit(),'A148')
        call UnitRemoveAbility(GetTriggerUnit(),'A11U')
        call UnitRemoveAbility(GetTriggerUnit(),'A149')
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
            call TriggerAddCondition(loc_trigger01,Condition(function Func1651))
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

// 42382 ~ 42425
function Func1653 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local real loc_real01=(TimerGetElapsed(timer001))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A13T')
    local real loc_real02=(LoadReal(hashtable001,(GetHandleId(loc_unit01)),(184)))
    local boolean loc_boolean01=(LoadBoolean(hashtable001,(GetHandleId(loc_unit01)),(183)))
    if loc_real01-loc_real02>16-loc_integer02*3 and loc_boolean01==false and GetUnitTypeId(loc_unit01)=='H06S' and Func0194(loc_unit01)==false then
        call SaveBoolean(hashtable001,(GetHandleId(loc_unit01)),(183),(true))
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
        call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
        call TriggerAddCondition(loc_trigger01,Condition(function Func1652))
        call SaveUnitHandle(hashtable001,(loc_integer01),(182),(loc_unit01))
        call Func0193(loc_unit01,'A11O')
        call SetUnitAbilityLevel(loc_unit01,'A11O',loc_integer02)
        call Func0193(loc_unit01,'A11R')
        if loc_integer02==1 then
            call Func0193(loc_unit01,'A147')
        elseif loc_integer02==2 then
            call Func0193(loc_unit01,'A148')
        elseif loc_integer02==3 then
            call Func0193(loc_unit01,'A11U')
        elseif loc_integer02==4 then
            call Func0193(loc_unit01,'A149')
        endif
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A147',false)
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A148',false)
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A11U',false)
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A149',false)
    elseif loc_boolean01==false then
        call UnitRemoveAbility(loc_unit01,'A11O')
        call UnitRemoveAbility(loc_unit01,'A11R')
        call UnitRemoveAbility(loc_unit01,'A147')
        call UnitRemoveAbility(loc_unit01,'A148')
        call UnitRemoveAbility(loc_unit01,'A11U')
        call UnitRemoveAbility(loc_unit01,'A149')
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 42427 ~ 42437
function Func1654 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.5,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1653))
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call SaveInteger(hashtable001,(loc_integer01),(181),(0))
    set loc_unit01=null
    set loc_trigger01=null
endfunction

// 42439 ~ 42444
function Func1655 takes nothing returns boolean
    if GetLearnedSkill()=='A13T' and GetUnitAbilityLevel(GetTriggerUnit(),'A13T')==1 and IsUnitIllusion(GetTriggerUnit())==false then
        call Func1654()
    endif
    return false
endfunction

// 42446 ~ 42451
function Func1656 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1655))
    set loc_trigger01=null
endfunction
