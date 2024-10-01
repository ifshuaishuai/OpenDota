
// 77498 ~ 77523
function Func3741 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local real loc_real01=(LoadReal(hashtable001,(GetHandleId(loc_unit02)),(684)))
    if GetTriggerEventId()==EVENT_WIDGET_DEATH or loc_real01<(TimerGetElapsed(timer001))or Func0098(loc_unit02)then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call SaveReal(hashtable001,(GetHandleId(loc_unit02)),(684),((0)*1.0))
        call UnitRemoveAbility(loc_unit02,'A23W')
        call UnitRemoveAbility(loc_unit02,'A23U')
        call UnitRemoveAbility(loc_unit02,'A23V')
        call UnitRemoveAbility(loc_unit02,'A23X')
        call UnitRemoveAbility(loc_unit02,'B0EA')
    else
        set boolean151=false
        call Func0115(loc_unit01,loc_unit02,1,5+5*loc_integer02)
        set boolean151=true
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 77525 ~ 77561
function Func3742 takes unit loc_unit01,unit loc_unit02 returns nothing
    local trigger loc_trigger01
    local integer loc_integer01
    local real loc_real01=(LoadReal(hashtable001,(GetHandleId(loc_unit02)),(684)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A0MM')
    if loc_real01>(TimerGetElapsed(timer001))then
        call SaveReal(hashtable001,(GetHandleId(loc_unit02)),(684),(((TimerGetElapsed(timer001))+real367)*1.0))
    else
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call SaveReal(hashtable001,(GetHandleId(loc_unit02)),(684),(((TimerGetElapsed(timer001))+real367)*1.0))
        call TriggerRegisterTimerEvent(loc_trigger01,1,true)
        call TriggerRegisterDeathEvent(loc_trigger01,loc_unit02)
        call TriggerAddCondition(loc_trigger01,Condition(function Func3741))
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
        call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
        call SaveInteger(hashtable001,(loc_integer01),(5),(loc_integer02))
        if Func0275(loc_unit02)==false then
            if loc_integer02==1 then
                call Func0193(loc_unit02,'A23W')
                call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),'A23W',false)
            elseif loc_integer02==2 then
                call Func0193(loc_unit02,'A23U')
                call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),'A23U',false)
            elseif loc_integer02==3 then
                call Func0193(loc_unit02,'A23V')
                call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),'A23V',false)
            elseif loc_integer02==4 then
                call Func0193(loc_unit02,'A23X')
                call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),'A23X',false)
            endif
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 77563 ~ 77573
function Func3743 takes nothing returns boolean
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetEventDamageSource()
    if Func0099(loc_unit02)then
        set loc_unit02=(units001[GetPlayerId(GetOwningPlayer((loc_unit02)))])
    endif
    if boolean151 and IsUnitType(loc_unit02,UNIT_TYPE_STRUCTURE)==false and Func0147(loc_unit01,loc_unit02)<1400 and IsUnitEnemy(loc_unit01,GetOwningPlayer(loc_unit02))and Func0098(loc_unit02)==false and GetUnitAbilityLevel(loc_unit01,'BNdo')==0 then
        call Func3742(loc_unit01,loc_unit02)
    endif
    return false
endfunction

// 77575 ~ 77581
function Func3744 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call TriggerRegisterUnitEvent(loc_trigger01,GetTriggerUnit(),EVENT_UNIT_DAMAGED)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3743))
    call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(14),(GetTriggerUnit()))
    set loc_trigger01=null
endfunction

// 77583 ~ 77588
function Func3745 takes nothing returns boolean
    if GetLearnedSkill()=='A0MM' and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),'A0MM')==1 then
        call Func3744()
    endif
    return false
endfunction

// 77590 ~ 77595
function Func3746 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3745))
    set loc_trigger01=null
endfunction
