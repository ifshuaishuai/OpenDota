
// 89825 ~ 89848
function Func4317 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A2BT')
    local real loc_real01
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        set loc_real01=GetEventDamage()*(0.2+0.05*loc_integer02)
    else
        call SaveInteger(hashtable001,(GetHandleId((loc_unit02))),((4317)),(2))
        call UnitRemoveAbility(loc_unit02,'A2I6')
        call UnitRemoveAbility(loc_unit02,'A2I5')
        call UnitRemoveAbility(loc_unit02,'A2I7')
        call UnitRemoveAbility(loc_unit02,'A2I8')
        call UnitRemoveAbility(loc_unit02,'B0FS')
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 89850 ~ 89897
function Func4318 takes unit loc_unit01,unit loc_unit02 returns nothing
    local trigger loc_trigger01
    local integer loc_integer01
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A2BT')
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(GetHandleId(loc_unit01)),(741)))
    local integer loc_integer03=(LoadInteger(hashtable001,(GetHandleId(loc_unit02)),(742)))
    local integer loc_integer04
    if((LoadInteger(hashtable001,(GetHandleId((loc_unit02))),((4317))))==1)==true then
        call SaveInteger(hashtable001,(GetHandleId(loc_unit02)),(742),(0))
        call SaveReal(hashtable001,(GetHandleId(loc_unit02)),(743),(((TimerGetElapsed(timer001)))*1.0))
    else
        if(LoadReal(hashtable001,(GetHandleId(loc_unit02)),(743)))+10<(TimerGetElapsed(timer001))then
            set loc_integer03=1
        else
            set loc_integer03=loc_integer03+1
        endif
        if IsUnitType(loc_unit02,UNIT_TYPE_HERO)==true or IsUnitIllusion(loc_unit02)==true then
            call Func0174(GetOwningPlayer(loc_unit01),I2S(loc_integer03)+"!",2,loc_unit02,0.026,50,0,255,216)
        endif
        call SaveInteger(hashtable001,(GetHandleId(loc_unit02)),(742),(loc_integer03))
        call SaveReal(hashtable001,(GetHandleId(loc_unit02)),(743),(((TimerGetElapsed(timer001)))*1.0))
        if loc_integer03==4 then
            call SaveInteger(hashtable001,(GetHandleId(loc_unit02)),(742),(0))
            call SaveInteger(hashtable001,(GetHandleId((loc_unit02))),((4317)),(1))
            set loc_trigger01=CreateTrigger()
            set loc_integer01=GetHandleId(loc_trigger01)
            call TriggerRegisterTimerEvent(loc_trigger01,0.5+0.5*loc_integer02,false)
            call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DAMAGED)
            call TriggerRegisterDeathEvent(loc_trigger01,loc_unit02)
            call TriggerAddCondition(loc_trigger01,Condition(function Func4317))
            call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
            call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
            if loc_integer02==1 then
                set loc_integer04='A2I6'
            elseif loc_integer02==2 then
                set loc_integer04='A2I5'
            elseif loc_integer02==3 then
                set loc_integer04='A2I7'
            elseif loc_integer02==4 then
                set loc_integer04='A2I8'
            endif
            call Func0193(loc_unit02,loc_integer04)
            call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),loc_integer04,false)
            call DestroyEffect(AddSpecialEffectTarget("war3mapImported\\FarseerMissile_Purple_2.mdx",loc_unit02,"chest"))
        endif
    endif
    set loc_trigger01=null
endfunction

// 89899 ~ 89919
function Func4319 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if GetEventDamageSource()==loc_unit02 then
            call DisableTrigger(loc_trigger01)
            call Func4318(loc_unit02,loc_unit01)
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        endif
    else
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit02=null
    set loc_unit01=null
    return false
endfunction

// 89921 ~ 89934
function Func4320 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetAttacker()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DAMAGED)
    call TriggerRegisterTimerEvent(loc_trigger01,1.2,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4319))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit02))
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 89936 ~ 89949
function Func4321 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    if GetAttacker()==loc_unit01 and IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(loc_unit01))then
        if((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4315))))==1)==false then
            call Func0044(loc_unit01,4315,0.3)
            call Func4320()
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 89951 ~ 89960
function Func4322 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4321))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 89962 ~ 89967
function Func4323 takes nothing returns boolean
    if GetLearnedSkill()=='A2BT' and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),'A2BT')==1 then
        call Func4322()
    endif
    return false
endfunction

// 89969 ~ 89974
function Func4324 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4323))
    set loc_trigger01=null
endfunction
