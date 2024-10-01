
// 74565 ~ 74571
function Func3559 takes unit loc_unit01,unit loc_unit02 returns nothing
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A0JJ')
    local real loc_real01=40+20*loc_integer01
    if GetUnitAbilityLevel(loc_unit02,'A04R')==0 then
        call Func0115(loc_unit01,loc_unit02,2,loc_real01)
    endif
endfunction

// 74573 ~ 74596
function Func3560 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(30)))
    local unit loc_unit01=Func0022(loc_integer02)
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if GetEventDamageSource()==loc_unit02 and GetEventDamage()>0 and GetEventDamage()<=0.02 and GetUnitAbilityLevel(loc_unit01,'B0GG')>0 then
            call DisableTrigger(loc_trigger01)
            call Func3559(loc_unit02,loc_unit01)
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

// 74598 ~ 74611
function Func3561 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetAttacker()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DAMAGED)
    call TriggerRegisterTimerEvent(loc_trigger01,1,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3560))
    call SaveInteger(hashtable001,(loc_integer01),(30),(Func0024(loc_unit01)))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit02))
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 74613 ~ 74619
function Func3562 takes nothing returns nothing
    local unit loc_unit01=GetAttacker()
    if((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4274))))==1)==false then
        call Func0044(loc_unit01,4274,0.1)
        call Func3561()
    endif
endfunction

// 74621 ~ 74626
function Func3563 takes nothing returns boolean
    if GetUnitAbilityLevel(GetAttacker(),'A0JJ')>0 and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false and GetAttacker()==(LoadUnitHandle(hashtable001,(GetHandleId(GetTriggeringTrigger())),(14)))and IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetAttacker()))then
        call Func3562()
    endif
    return false
endfunction

// 74628 ~ 74634
function Func3564 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3563))
    call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(14),(GetTriggerUnit()))
    set loc_trigger01=null
endfunction

// 74636 ~ 74641
function Func3565 takes nothing returns boolean
    if GetLearnedSkill()=='A0JJ' and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),'A0JJ')==1 then
        call Func3564()
    endif
    return false
endfunction

// 74643 ~ 74648
function Func3566 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3565))
    set loc_trigger01=null
endfunction
