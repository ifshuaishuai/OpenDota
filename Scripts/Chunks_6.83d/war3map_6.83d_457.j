
// 58381 ~ 58390
function Func2633 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    call Func0421(loc_unit01,0)
    set loc_unit01=null
    return false
endfunction

// 58392 ~ 58416
function Func2634 takes nothing returns nothing
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=(LoadInteger(hashtable001,(GetHandleId(loc_unit02)),(824)))
    local real loc_real01=(LoadReal(hashtable001,(GetHandleId(loc_unit02)),(825)))
    local integer loc_integer03=GetUnitAbilityLevel(loc_unit01,'A2X2')
    if GetTriggerEventId()==EVENT_WIDGET_DEATH or loc_real01<(TimerGetElapsed(timer001))then
        call SaveInteger(hashtable001,(GetHandleId(loc_unit02)),(824),(0))
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(175))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif GetTriggerEventId()==EVENT_UNIT_ATTACKED then
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call TriggerRegisterTimerEvent(loc_trigger01,0.31,true)
        call TriggerAddCondition(loc_trigger01,Condition(function Func2633))
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
        call Func0421(loc_unit01,IMinBJ((10+5*loc_integer03)*loc_integer02,500))
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 58418 ~ 58426
function Func2635 takes nothing returns boolean
    if GetTriggerEventId()!=EVENT_UNIT_ATTACKED then
        call Func2634()
    endif
    if GetAttacker()==(LoadUnitHandle(hashtable001,(GetHandleId(GetTriggeringTrigger())),(2)))then
        call Func2634()
    endif
    return false
endfunction

// 58428 ~ 58454
function Func2636 takes unit loc_unit01,unit loc_unit02 returns nothing
    local trigger loc_trigger01
    local integer loc_integer01
    local integer loc_integer02=(LoadInteger(hashtable001,(GetHandleId(loc_unit02)),(824)))
    local integer loc_integer03=GetUnitAbilityLevel(loc_unit01,'A2X2')
    call SaveInteger(hashtable001,(GetHandleId(loc_unit02)),(824),(loc_integer02+1))
    call SaveReal(hashtable001,(GetHandleId(loc_unit02)),(825),(((TimerGetElapsed(timer001))+15)*1.0))
    if loc_integer02==0 then
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call SaveEffectHandle(hashtable001,(loc_integer01),(175),(AddSpecialEffectTarget("Abilities\\Spells\\NightElf\\BattleRoar\\RoarTarget.mdl",loc_unit02,"overhead")))
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
        call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
        call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_ATTACKED)
        call TriggerRegisterDeathEvent(loc_trigger01,loc_unit02)
        call TriggerRegisterTimerEvent(loc_trigger01,1,true)
        call TriggerAddCondition(loc_trigger01,Condition(function Func2635))
        call SaveInteger(hashtable001,(GetHandleId(loc_unit02)),(824),(2))
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call TriggerRegisterTimerEvent(loc_trigger01,0.31,true)
        call TriggerAddCondition(loc_trigger01,Condition(function Func2633))
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
        call Func0421(loc_unit01,IMinBJ((10+5*loc_integer03),500))
    endif
    set loc_trigger01=null
endfunction

// 58456 ~ 58476
function Func2637 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if GetEventDamageSource()==loc_unit01 then
            call DisableTrigger(loc_trigger01)
            call Func2636(loc_unit01,loc_unit02)
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        endif
    else
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 58478 ~ 58491
function Func2638 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetAttacker()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DAMAGED)
    call TriggerRegisterTimerEvent(loc_trigger01,1,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2637))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit01))
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 58493 ~ 58499
function Func2639 takes nothing returns nothing
    local unit loc_unit01=GetAttacker()
    if((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4274))))==1)==false then
        call Func0044(loc_unit01,4274,0.2)
        call Func2638()
    endif
endfunction

// 58501 ~ 58506
function Func2640 takes nothing returns boolean
    if GetUnitAbilityLevel(GetAttacker(),'A2X2')>0 and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false and GetAttacker()==(LoadUnitHandle(hashtable001,(GetHandleId(GetTriggeringTrigger())),(14)))and IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetAttacker()))then
        call Func2639()
    endif
    return false
endfunction

// 58508 ~ 58514
function Func2641 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2640))
    call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(14),(GetTriggerUnit()))
    set loc_trigger01=null
endfunction

// 58516 ~ 58521
function Func2642 takes nothing returns boolean
    if GetLearnedSkill()=='A2X2' and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),'A2X2')==1 then
        call Func2641()
    endif
    return false
endfunction

// 58523 ~ 58528
function Func2643 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2642))
    set loc_trigger01=null
endfunction
